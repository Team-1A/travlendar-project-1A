
import static java.nio.file.Files.list;
import static java.rmi.Naming.list;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;




public class Location {
    private String locationName;
    private String address;
    private int timeZone ; 
   
    String [] location ={"Fatmawati, Jakarta","Tangerang","Kadia,Kendari","Poasia,Kendari","Labibia,Kendari","Kadia,Kendari"};
    String [] dilaksanakan={"Rumah","Bandar Udara Soekarno-Hatta","Bandar Udara Haluoleo","Hotel","Restoran","Rumah Tinggal","Hotel"};
    List<String> list = new ArrayList<String>(Arrays.asList(location ));
    List<String> list1 = new ArrayList<String>(Arrays.asList(dilaksanakan ));
  //  List<String> Field = new ArrayList<>(list.size() + list1.size());
    List<String> field = new ArrayList<String>() { { addAll(list); addAll(list1); } };
    /*
        Constructor pada class Location
    */
    public Location(){
      //  this.field = new String (Location[]);
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
