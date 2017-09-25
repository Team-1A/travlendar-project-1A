public class Location {
    private String locationName;
    private int timeZone ;  
    /*
        Constructor pada class Location
    */
    public Location(){
        locationName = null;
        timeZone = 0;
    }
    /*
        Getter dan Settter pada class Location
    */
    public String getLocationName() {
        return locationName;
    }
    public void setLocationName(String locationName) {
        this.locationName = locationName;
    }
    public int getTimeZone() {
        return timeZone;
    }
    public void setTimeZone(int timeZone) {
        this.timeZone = timeZone;
    }
    public void setLocation(String location, int gmt){
        this.locationName = location;
        this.timeZone = gmt;
    }
}
