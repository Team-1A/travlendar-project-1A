package Model;

/***********************************************************************
 * Module:  Bounds.java
 * Author:  Fadhil
 * Purpose: Defines the Class Bounds
 ***********************************************************************/

import java.util.*;

public class Bounds {
    private Point northwest;
    private Point southwest;

    /**
     * @return the northwest
     */
    public Point getNorthwest() {
        return northwest;
    }

    /**
     * @param northwest the northwest to set
     */
    public void setNorthwest(Point northwest) {
        this.northwest = northwest;
    }

    /**
     * @return the southwest
     */
    public Point getSouthwest() {
        return southwest;
    }

    /**
     * @param southwest the southwest to set
     */
    public void setSouthwest(Point southwest) {
        this.southwest = southwest;
    }
    
}