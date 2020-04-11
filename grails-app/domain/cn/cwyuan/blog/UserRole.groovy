package cn.cwyuan.blog

class UserRole implements Serializable {
    private static final long serialVersionUID = 1
    User user
    Role role
    static mapping = {
        version false
    }

}
