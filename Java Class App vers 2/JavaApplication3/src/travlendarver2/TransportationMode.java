/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

/**
 *
 * @author Rohmat Dasuki
 */
public class TransportationMode {
    
    private String transportation_Code;
    private String transportation_Name;
    private int velocity;

    /**
     * @return the transportation_Code
     */
    public String getTransportation_Code() {
        return transportation_Code;
    }

    /**
     * @param transportation_Code the transportation_Code to set
     */
    public void setTransportation_Code(String transportation_Code) {
        this.transportation_Code = transportation_Code;
    }
    
    /*
        Method inputTransportation() berfungsi untuk melakukan input moda transportasi dan kecepatan rata-rata
    */

    /**
     * @return the transportation
     */
    public String getTransportation() {
        return transportation_Name;
    }

    /**
     * @param transportation_Name the transportation to set
     */
    public void setTransportation(String transportation_Name) {
        this.transportation_Name = transportation_Name;
    }

    /**
     * @return the velocity
     */
    public int getVelocity() {
        return velocity;
    }

    /**
     * @param velocity the velocity to set
     */
    public void setVelocity(int velocity) {
        this.velocity = velocity;
    }
}