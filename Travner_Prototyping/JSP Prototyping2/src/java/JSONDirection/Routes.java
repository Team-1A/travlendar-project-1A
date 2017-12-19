package Model;

/***********************************************************************
 * Module:  Routes.java
 * Author:  Fadhil
 * Purpose: Defines the Class Routes
 ***********************************************************************/

import java.util.*;

public class Routes {
    private Bounds bounds;
    private String copyrights;
    private String summary;
    private Legs[] legs;

    /**
     * @return the bounds
     */
    public Bounds getBounds() {
        return bounds;
    }

    /**
     * @param bounds the bounds to set
     */
    public void setBounds(Bounds bounds) {
        this.bounds = bounds;
    }

    /**
     * @return the legs
     */
    public Legs[] getLegs() {
        return legs;
    }

    /**
     * @param legs the legs to set
     */
    public void setLegs(Legs[] legs) {
        this.legs = legs;
    }

    /**
     * @return the copyrights
     */
    public String getCopyrights() {
        return copyrights;
    }

    /**
     * @param copyrights the copyrights to set
     */
    public void setCopyrights(String copyrights) {
        this.copyrights = copyrights;
    }

    /**
     * @return the summary
     */
    public String getSummary() {
        return summary;
    }

    /**
     * @param summary the summary to set
     */
    public void setSummary(String summary) {
        this.summary = summary;
    }

}