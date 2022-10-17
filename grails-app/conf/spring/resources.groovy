package spring

import com.daniel.blog.security.TcAuthenticationProvider


// Place your Spring DSL code here
beans = {
    tcAuthenticationProvider(TcAuthenticationProvider)
    xmlns aop:"http://www.springframework.org/schema/aop"
}
