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
    public String username;
    public String email;
    public String password;
    public String nama;

    user(String aaa) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    user() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
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
