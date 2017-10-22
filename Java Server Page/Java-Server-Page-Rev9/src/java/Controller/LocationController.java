/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.LocationDAO;
import Model.Location;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kivla
 */
public class LocationController {
    Location objLoc = new Location();
    
    public void insertLoc(String Loc,String Addr){
        objLoc.setNamePoint(Loc);
        objLoc.setAddressPoint(Addr);
    }
    
    public Location out(){
        return objLoc;
    }
    
    public void insertToDB(Location loc){
        LocationDAO.save(objLoc);
    }
    
    public String display(){
        return objLoc.getNamePoint();
    }
}
