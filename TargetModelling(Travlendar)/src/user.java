/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
public class user extends Kegiatan {
    private String username;
    private String email;
    private String password;
    private String nama;

    public user(){
        username = null;
        email = null;
        password = null;
        nama = null;
    }
    
    public void userName(String usernm){
        setUsername(usernm);
    }
    public void eMail(String mail){
        setEmail(mail);
    }
    public void passWord(String psswrd){
        setPassword(psswrd);
    }
    public void Nama(String nm){
        setNama(nm);
    }
    
    public String username(String uname){
        return "username " + uname;
    }
    public String email(String Email){
        return "email " + Email;
    }
    public String password(String pw){
        return "password " + pw;
    }
    public String nama(String nama){
        return "nama " + nama;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @param nama the nama to set
     */
    public void setNama(String nama) {
        this.nama = nama;
    }
    
}
