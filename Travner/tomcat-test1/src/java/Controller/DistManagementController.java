/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.DistanceDAO;
import DAO.LocationDAO;
import Model.Distance;
import Model.Location;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
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
 * @author Kivlan Aziz Al-Falaah
 */
@WebServlet(name = "DistManagementController", urlPatterns = {"/DistanceMng"})
public class DistManagementController extends HttpServlet {

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
            out.println("<title>Servlet DistManagementController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DistManagementController at " + request.getContextPath() + "</h1>");
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
                listLocation(request, response);
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
        }
    }

    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {

        List<Location> Locations = LocationDAO.getAll();
        request.setAttribute("lokasi", Locations);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/field_kanan_travel_data.jsp");
        dispatcher.include(request, response);
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    private void save(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
        int distKM;
        int distM;
        
        String startLoc = request.getParameter("fromLoc");
        String destination = request.getParameter("destination");
        Distance dist = new Distance();
        LocationDAO.getAll().forEach((Location loc) ->{
            if (loc.getNamePoint().toUpperCase() == null ? startLoc.toUpperCase() == null : loc.getNamePoint().toUpperCase().equals(startLoc.toUpperCase())){
                dist.setId_StartLocation(loc.getId_Location());
            }
            if (loc.getNamePoint().toUpperCase() == null ? destination.toUpperCase() == null : loc.getNamePoint().toUpperCase().equals(destination.toUpperCase())){
                dist.setId_Destination(loc.getId_Location());
            }
        });
        if (request.getParameter("distKM") == null){
            distKM = 0;
        } else{
            distKM = Integer.parseInt(request.getParameter("distKM"));            
        }
        
        if (request.getParameter("distM") == null){
            distM = 0;
        } else{
        distM = Integer.parseInt(request.getParameter("distM"));            
        }

        dist.setDistanceKM(distKM);
        dist.setDistanceM(distM);
        
        if(dist.getId_Destination() == dist.getId_StartLocation()){
            dist.setDistanceKM(0);
            dist.setDistanceM(0);
        }

        DistanceDAO.save(dist);

        response.sendRedirect("./Distance_management.jsp");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
