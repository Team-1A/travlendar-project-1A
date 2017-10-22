/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2DAO;

/* import travlendarver2DAO.ActivityDAO;
import travlendarver2DAO.DAO;
import travlendarver2DAO.DistanceDAO;
import travlendarver2DAO.LocationDAO;
import travlendarver2DAO.TransportationModeDAO;
*/
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jeremia Geraldi
 */
@WebServlet(name = "index", urlPatterns = {"/index"})
public class IndexController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    private String jdbcURL;
    private String jdbcUsername;
    private String jdbcPassword;
    private DAO dao;
    private ControllerServices cs;

    /**
     *
     */
    @Override
    public void init() 
    {
        this.jdbcURL = "jdbc:mysql://localhost:3306/travlendar2a";
        this.jdbcUsername = "root";
        this.jdbcPassword = "";
        this.dao = null;
        this.cs = null;
    }

    /**
     *
     * @param request
     * @param response
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    {
        String uriPage;
        String aksiPage;
        String halStr;
        int hal;
        
        uriPage = request.getParameter("page");
        aksiPage = request.getParameter("aksi");
        halStr = request.getParameter("hal");
        
        if(uriPage != null)
        {
            if(halStr != null) 
            {
                try
                {
                    hal = Integer.parseInt(halStr);
                }
                catch(NumberFormatException e)
                {
                    hal = 1;
                }
                
                switch(uriPage) 
                {
                    case "Activity":
                        this.dao = new ActivityDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                        this.cs = new ActivityAccess(request, response, this.dao);
                        this.cs.getData(hal, 5);
                        break;
                    case "Distance":
                        this.dao = new DistanceDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                        this.cs = new DistanceAccess(request, response, this.dao);
                        this.cs.getData(hal, 5);
                        break;
                    case "Location":
                        this.dao = new LocationDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                        this.cs = new LocationAccess(request, response, this.dao);
                        this.cs.getData(hal, 5);
                        break;
                    case "Transportation Mode":
                        this.dao=new TransportationModeDAO(this.jdbcURL,this.jdbcUsername,this.jdbcPassword);
                        this.cs=new TransportationModeAccess(request,response,this.dao);
                        this.cs.getData(hal,5);
                        
                        
                        
                    default:
                        this.goToPageNotFound(response);
                        break;
                }
                
                request.setAttribute("message", "");
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/index.jsp");
        
                try 
                {
                    dispatcher.forward(request, response);
                }
                catch (ServletException | IOException ex) 
                {
                    //ex.printStackTrace();
                }
            }
            else if(aksiPage != null)
            {
                if (aksiPage.equals("add")) {
                    switch(uriPage)
                    {
                        case "Activity":
                            this.cs = new ActivityAccess(request, response, null);
                            this.cs.getRegPage();
                            break;
                        case "Distance":
                            this.cs = new DistanceAccess(request, response, null);
                            this.cs.getRegPage();
                            break;
                        case "Location":
                            this.cs = new LocationAccess(request, response, null);
                            this.cs.getRegPage();
                            break;    
                        case "Transportation Mode":
                            this.cs = new TransportationModeAccess(request, response, null);
                            this.cs.getRegPage();
                            break;
                            
                        default:
                            this.goToPageNotFound(response);
                            break;
                    }
                }
                else
                {
                    this.goToPageNotFound(response);
                }
            }
            else
            {
                this.goToPageNotFound(response);
            }

        }
        else
        {
            this.goToPageNotFound(response);
        }
    
    }
        
    /**
     *
     * @param request
     * @param response
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
    {
        String aksiPage;
       
        aksiPage = request.getParameter("input");
        
        if(aksiPage != null)
        {
            switch(aksiPage)
            {
                case "agenda":
                    this.dao = new ActivityDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                    this.cs = new ActivityAccess(request, response, this.dao);
                    this.cs.simpanData();
                    break;
                case "traveller":
                    this.dao = new DistanceDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                    this.cs = new DistanceAccess(request, response, this.dao);
                    this.cs.simpanData();
                    break;
                case "location":
                    this.dao = new LocationDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                    this.cs = new LocationAccess(request, response, this.dao);
                    this.cs.simpanData();
                    break;
                case "LocationDAO":
                    this.dao = new DistanceDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                    this.cs = new DistanceAccess(request, response, this.dao);
                    this.cs.simpanData();
                    break;
                case "Transportation Mode":
                    this.dao = new TransportationModeDAO(this.jdbcURL, this.jdbcUsername, this.jdbcPassword);
                    this.cs = new TransportationModeAccess(request, response, this.dao);
                    this.cs.simpanData();
                    break;
                default:
                    this.goToPageNotFound(response);
                    break;              
            }
        }
    }
    
    /**
     * 
     * @param response 
     */
    private void goToPageNotFound(HttpServletResponse response)
    {
        try
        {
            response.sendRedirect("error/404.html");
        }
        catch(IOException e)
        {
                        
        }
    }
    
}
