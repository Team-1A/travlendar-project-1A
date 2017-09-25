/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ACER
 */
class user {
    public String username;
    public String email;
    public String password;
    public String nama;
    
    public void userName(String usernm){
        username = usernm;
    }
    public void eMail(String mail){
        email = mail;
    }
    public void passWord(String psswrd){
        password = psswrd;
    }
    public void Nama(String nm){
        nama = nm;
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
    
}
