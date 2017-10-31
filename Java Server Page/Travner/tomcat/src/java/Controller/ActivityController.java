/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DistanceDAO;
import DAO.LocationDAO;
import Model.Distance;
import Model.DistanceLocation;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kivlan Aziz Al-Falaah
 */
@WebServlet(name = "ActivityController", urlPatterns = {"/ActController"})
public class ActivityController extends HttpServlet {
    //public Activity activity;
    public String activityName;
    public int ID_StartLoc;
    public int ID_EndLoc;
    public java.sql.Date eventDate;
    public Time startTime;
    public Time endTime;
    public int priority;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ActivityController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ActivityController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        try {
                Activity(request, response);
        } catch (SQLException | ParseException ex) {
                Logger.getLogger(LocController.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            save(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LocController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ParseException ex) {
            Logger.getLogger(ActivityController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public void Activity(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<Distance> distance = DistanceDAO.getAll();
        List<DistanceLocation> distLoc = new ArrayList<>();
      
        distance.forEach((Distance dist) ->{
            DistanceLocation objdist = new DistanceLocation();
            
            objdist.setDistKm(dist.getDistanceKM());
            objdist.setDistM(dist.getDistanceM());
            objdist.setStartLoc(LocationDAO.getByID(dist.getId_StartLocation()));
            objdist.setDestination(LocationDAO.getByID(dist.getId_Destination()));
            objdist.setID_Start(dist.getId_StartLocation());
            objdist.setID_Destination(dist.getId_Destination());
            distLoc.add(objdist);
        });
        
        request.setAttribute("Locations",distLoc);
        //request.setAttribute("distance", distance);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/activity.jsp");
        dispatcher.include(request, response);
    }
    
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ParseException {
        //TODO : Write a Code
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
