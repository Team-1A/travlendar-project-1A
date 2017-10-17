package travlendarver2;

/**
 *
 * @author Rohmat Dasuki
 */
public class Location {
    
    private Integer id_Location;
    private String namePoint;
    private String addressPoint;
    
    public Location(){
        id_Location = null;
        namePoint = null;
        addressPoint = null;
    }
    
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