package cn.cwyuan.blog.security

import cn.cwyuan.blog.User
import grails.gorm.transactions.Transactional
import org.apache.commons.logging.Log
import org.apache.commons.logging.LogFactory
import org.springframework.security.authentication.AuthenticationProvider
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.Authentication
import org.springframework.security.core.AuthenticationException
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UsernameNotFoundException

import javax.security.auth.login.AccountExpiredException
import javax.security.auth.login.AccountLockedException

@Transactional
class TcAuthenticationProvider implements AuthenticationProvider {
    private static final Log log = LogFactory.getLog(TcAuthenticationProvider.class)

    @Override
    Authentication authenticate(Authentication authentication) throws AuthenticationException {
        def username = authentication.getName()
        def password = authentication.getCredentials().toString()
        def user
        def grantedAuth = []
        try {
            user = User.findByUsernameAndPassword(username, password)
            if (!user) {
                //用户不存在
                throw new UsernameNotFoundException("用户名或密码错误！")
            }
            if (user.accountExpired || user.accountLocked) {
                //账户过期与密码过期
                throw new AccountExpiredException("账号已经过期！")
            }
            if (user.accountLocked) {
                throw new AccountLockedException("账号已被锁定！")
            }
            def roleList = user.authorities*.authority
            for (def userRole : roleList) {
                grantedAuth.add(new SimpleGrantedAuthority(userRole))
            }
        } catch (Exception e) {
            log.info(e.toString())
            throw new RuntimeException(e.getMessage())
        }
        return new UsernamePasswordAuthenticationToken(user, password, grantedAuth)
    }

    @Override
    boolean supports(Class<?> authentication) {
        return authentication == UsernamePasswordAuthenticationToken.class
    }
}
