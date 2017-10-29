package Model;

/**
 *
 * @author ACER
 */
public class Distance {
    
    private Integer id_StartLocation;
    private Integer id_Destination;
    private Integer distanceKM;
    private Integer distanceM;

    
    public Distance(){
        id_StartLocation = 0;
        id_Destination = 0;
        distanceKM = 0;
        distanceM = 0;
    }

    /**
     * @return the id_StartLocation
     */
    public Integer getId_StartLocation() {
        return id_StartLocation;
    }

    /**
     * @param id_StartLocation the id_StartLocation to set
     */
    public void setId_StartLocation(Integer id_StartLocation) {
        this.id_StartLocation = id_StartLocation;
    }

    /**
     * @return the id_Destination
     */
    public Integer getId_Destination() {
        return id_Destination;
    }

    /**
     * @param id_Destination the id_Destination to set
     */
    public void setId_Destination(Integer id_Destination) {
        this.id_Destination = id_Destination;
    }
    
    /**
     * @return the distanceKM
     */
    public Integer getDistanceKM() {
        return distanceKM;
    }

    /**
     * @param distanceKM the distanceKM to set
     */
    public void setDistanceKM(int distanceKM) {
        this.distanceKM = distanceKM;
    }

    /**
     * @return the distanceM
     */
    public Integer getDistanceM() {
        return distanceM;
    }

    /**
     * @param distanceM the distanceM to set
     */
    public void setDistanceM(int distanceM) {
        this.distanceM = distanceM;
    }
    
}