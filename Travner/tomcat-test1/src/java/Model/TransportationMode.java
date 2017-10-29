package Model;

/**
 *
 * @author Rohmat Dasuki
 */
public class TransportationMode {
    
    private String transportation_Code;
    private String transportation_Name;
    private Integer velocity;
    
    public TransportationMode() {
        transportation_Code = null;
        transportation_Name = null;
        velocity = 0;
    }

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
    public Integer getVelocity() {
        return velocity;
    }

    /**
     * @param velocity the velocity to set
     */
    public void setVelocity(int velocity) {
        this.velocity = velocity;
    }
}