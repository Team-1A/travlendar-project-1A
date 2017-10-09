/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 *
 * @author Rohmat Dasuki
 */
public class Location {
    private String nameLocation;
    private String address;
    String [] startPoint ={"Rumah,Fatmawati","Bandara Soekarno Hatta,Tangerang","Bandara Haluoleo,Kadia","Hotel X,Kadia"};
    String [] Destination={"Bandara Soekarno Hatta,Tangerang","Bandar Haluoleo,Kadia","Hotel X,Kadia","Restoran,Poasia"};
    double [] jarak = {40 , 2600 ,21 ,0.200};//satuan KiloMeter
    List<String> listAsal = new ArrayList<String>(Arrays.asList(startPoint ));
    List<String> listTujuan = new ArrayList<String>(Arrays.asList(Destination ));
    //List<double> listJarak =  new ArrayList<double>(Arrays.asList(jarak)); 
    List<String> field = new ArrayList<String>() { { addAll(listAsal); addAll(listTujuan); } };
      /*
        Getter dan Settter pada class Location
    */
    public Location(){
        nameLocation = null;
        address = null;
    }
    public void setLocationName(String locationName) {
        this.nameLocation = locationName;
    }
    public void setLocation(String location, String address){
        this.nameLocation = location;
        this.address = address;
    }
     public void setAddress(String address) {
        this.address = address;
    }
    public String getAddress() {
        return address;
    } 
    public String getLocationName() {
        return nameLocation;
    }
   
}
