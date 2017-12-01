/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Fadhil
 */
public class Vehicle {
    private String Vehicle_Name;
    private Integer User_ID;
    
    public Vehicle(){
        Vehicle_Name = null;
        User_ID = 0;
    }

    /**
     * @return the Vehicle_Name
     */
    public String getVehicle_Name() {
        return Vehicle_Name;
    }

    /**
     * @param Vehicle_Name the Vehicle_Name to set
     */
    public void setVehicle_Name(String Vehicle_Name) {
        this.Vehicle_Name = Vehicle_Name;
    }

    /**
     * @return the User_ID
     */
    public Integer getUser_ID() {
        return User_ID;
    }

    /**
     * @param User_ID the User_ID to set
     */
    public void setUser_ID(Integer User_ID) {
        this.User_ID = User_ID;
    }
    
}
