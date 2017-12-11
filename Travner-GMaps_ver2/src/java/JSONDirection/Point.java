package Model;

/***********************************************************************
 * Module:  Point.java
 * Author:  Fadhil
 * Purpose: Defines the Class Point
 ***********************************************************************/

import java.util.*;

public class Point {
    private Double lat;
    private Double lng;

    /**
     * @return the lat
     */
    public Double getLat() {
        return lat;
    }

    /**
     * @param lat the lat to set
     */
    public void setLat(Double lat) {
        this.lat = lat;
    }

    /**
     * @return the lng
     */
    public Double getLng() {
        return lng;
    }

    /**
     * @param lng the lng to set
     */
    public void setLng(Double lng) {
        this.lng = lng;
    }

}