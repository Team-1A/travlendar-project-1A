    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Rohmat Dasuki
 */
public class Location {
    
    private Integer id_Location;
    private String namePoint;
    private String addressPoint;
    
    /**
     * @return the id_Location
     */
    public int getId_Location() {
        return id_Location;
    }

    /**
     * @param id_Location the id_Location to set
     */
    public void setId_Location(int id_Location) {
        this.id_Location = id_Location;
    }
    
    /*
        Getter dan Settter pada class Location
    */
    public Location(){
        namePoint = null;
        addressPoint = null;
    }

    /**
     * @return the namePoint
     */
    public String getNamePoint() {
        return namePoint;
    }

    /**
     * @param namePoint the namePoint to set
     */
    public void setNamePoint(String namePoint) {
        this.namePoint = namePoint;
    }

    /**
     * @return the addressPoint
     */
    public String getAddressPoint() {
        return addressPoint;
    }

    /**
     * @param addressPoint the addressPoint to set
     */
    public void setAddressPoint(String addressPoint) {
        this.addressPoint = addressPoint;
    }

}
