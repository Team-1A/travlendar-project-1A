    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travlendarver2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author Rohmat Dasuki
 */
public class Location {
    private String namePoint;
    private String addressPoint;
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
