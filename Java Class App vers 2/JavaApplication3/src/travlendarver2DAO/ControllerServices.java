/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2DAO;

//import java.io.IOException; sepertinya butuh nanti
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jeremia Geraldi
 */
public class ControllerServices {
    
    /**
     *
     */
    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private boolean isSukses;
    
    /**
     *
     * @param request
     * @param response
     */
    public ControllerServices(HttpServletRequest request, HttpServletResponse response)
    {
        this.request = request;
        this.response = response;
        this.isSukses = false;
    }
    
    /**
     * @return the request
     */
    public HttpServletRequest getRequest() {
        return request;
    }

    /**
     * @return the response
     */
    public HttpServletResponse getResponse() {
        return response;
    }
    
    /**
     *
     * @param halaman
     * @param batasJmlItem
     */
    public void getData(int halaman, int batasJmlItem)
    {
        
    }
    
    /**
     *
     */
    public void getData()
    {

        /*
            Proses Simpan Data di Anak Class
            Proses Set Atribut Uri
        */
        
        getRequest().setAttribute("message", "");
        RequestDispatcher dispatcher = this.getRequest().getRequestDispatcher("/index.jsp");
        
        try 
        {
            dispatcher.forward(this.request, this.response);
        }
        catch (ServletException | IOException ex) 
        {
            try {
                getResponse().sendRedirect("error/servlet.html");
            } catch (IOException ex1) {
                Logger.getLogger(ControllerServices.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
      
    }
    
    public void getRegPage()
    {
        RequestDispatcher dispatcher;
        getRequest().setAttribute("message", "");
        
        dispatcher = getRequest().getRequestDispatcher("index.jsp");
        try 
        {
            dispatcher.forward(getRequest(), getResponse());
        } 
        catch (ServletException | IOException ex) 
        {
            try {
                getResponse().sendRedirect("error/servlet.html");
            } catch (IOException ex1) {
                Logger.getLogger(ControllerServices.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
    
    public void setIsSukses(boolean isSukses)
    {
        this.isSukses = isSukses;
    }
    
    public void simpanData()
    {
        RequestDispatcher dispatcher;
        
        /*
        Proses Simpan Data di Anak Class
        Proses Set Atribut Uri
        */
        
        if(this.isSukses)
            getRequest().setAttribute("message", "Anda sukses input data");
        else
            getRequest().setAttribute("message", "Anda gagal input data");
        
        
        dispatcher = getRequest().getRequestDispatcher("index.jsp");
        try 
        {
            dispatcher.forward(getRequest(), getResponse());
        }
        catch (ServletException | IOException ex) 
        {
            try {
                getResponse().sendRedirect("error/servlet.html");
            } catch (IOException ex1) {
                Logger.getLogger(ControllerServices.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        
    }

}
