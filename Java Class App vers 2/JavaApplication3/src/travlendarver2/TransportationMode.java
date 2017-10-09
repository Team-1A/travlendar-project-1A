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
public class TransportationMode {
    private String transportation;
    private int velocity;
//    String [] mode={"Pesawat","Mobil","Motor","Sepeda","Jalan Kaki"} ;
//    double [] kec ={990.00 ,60.00 ,50.00,15.00,5.00}; //dalam satuan KMpH
   //  List<String> list1 = new ArrayList<String>(Arrays.asList(mode ));
     //List<String> list =new ArrayList<double>(Arrays.asList(kec ));
     //List<String> fieldPribadi = new ArrayList<String>() { { addAll(list1); addAll(list2); } };
    /*
        Method inputTransportation() berfungsi untuk melakukan input moda transportasi dan kecepatan rata-rata
    */

    /**
     * @return the transportation
     */
    public String getTransportation() {
        return transportation;
    }

    /**
     * @param transportation the transportation to set
     */
    public void setTransportation(String transportation) {
        this.transportation = transportation;
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
