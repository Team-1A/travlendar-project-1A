/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DAO.LocationDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kivla
 */
public class Controller {
    Location objLoc = new Location();
    
    public void insertNameLoc(String Loc){
        objLoc.setNamePoint(Loc);
    }
    
    public void insertAddr(String addr){
        objLoc.setAddressPoint(addr);
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
