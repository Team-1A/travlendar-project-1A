/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Fadhil
 */
public class User_Account {
    private Integer User_ID;
    private String Username;
    private String Password;
    
    public User_Account(){
        User_ID = 0;
        Username = null;
        Password = null;
    }

    /**
     * @return the User_ID
     */
    public Integer getUser_ID() {
        return User_ID;
    }

    /**
     * @param User_ID the User_ID to set
     */
    public void setUser_ID(Integer User_ID) {
        this.User_ID = User_ID;
    }

    /**
     * @return the Username
     */
    public String getUsername() {
        return Username;
    }

    /**
     * @param Username the Username to set
     */
    public void setUsername(String Username) {
        this.Username = Username;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.Password = Password;
    }
    
}
