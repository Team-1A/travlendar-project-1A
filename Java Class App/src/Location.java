public class Location {
    private String locationName;
    private String address;
    private int timeZone ;  
    /*
        Constructor pada class Location
    */
    public Location(){
        locationName = null;
        address = null;
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
    public void setLocation(String location, String address, int gmt){
        this.locationName = location;
        this.address = address;
        this.timeZone = gmt;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
}
