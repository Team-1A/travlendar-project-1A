public class User{
    private String username;
    private String email;
    private String password;
    private String name;
    /*
        Constructor pada class User
    */
    public User(){
        username = null;
        email = null;
        password = null;
        name = null;
    }
    /*
        Getter dan Setter pada class User
    */
    public String getUserName() {
        return username;
    }
    public void setUserName(String username) {
        this.username = username;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
}
