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
public class Location {
    
    private Integer id_Location;
    private String location_Name;
    private String location_Address;
    
    /**
     * @return the ID_Location
     */
    public Integer getID_Location() {
        return id_Location;
    }

    /**
     * @param id_Location the ID_Location to set
     */
    public void setID_Location(Integer id_Location) {
        this.id_Location = id_Location;
    }

    /**
     * @return the Location_Name
     */
    public String getLocation_Name() {
        return location_Name;
    }

    /**
     * @param location_Name the Location_Name to set
     */
    public void setLocation_Name(String location_Name) {
        this.location_Name = location_Name;
    }

    /**
     * @return the Location_Address
     */
    public String getLocation_Address() {
        return location_Address;
    }

    /**
     * @param location_Address the Location_Address to set
     */
    public void setLocation_Address(String location_Address) {
        this.location_Address = location_Address;
    }

}
