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
import Model.Location;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
 * @author Kivlan Aziz Al-Falaah 
 */
@WebServlet(name = "DisplayDistanceControl", urlPatterns = {"/DistanceTable"})
public class DisplayDistanceControl extends HttpServlet {

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
            out.println("<title>Servlet DisplayDistanceControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DisplayDistanceControl at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public void listLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, SQLException, IOException,  ParseException {
        List<Distance> distances = DistanceDAO.getAll();
        List<DistanceLocation> distLoc = new ArrayList<>();
      
        distances.forEach((Distance dist) ->{
            DistanceLocation objdist = new DistanceLocation();
            
            objdist.setDistKm(dist.getDistanceKM());
            objdist.setDistM(dist.getDistanceM());
            objdist.setStartLoc(LocationDAO.getByID(dist.getId_StartLocation()));
            objdist.setDestination(LocationDAO.getByID(dist.getId_Destination()));
            distLoc.add(objdist);
        });
        
        request.setAttribute("Locations",distLoc);
        RequestDispatcher dispatcher = request.getRequestDispatcher("include/field_kiri_travel_data.jsp");
        dispatcher.include(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
