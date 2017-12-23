/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelJSON;

import java.sql.Date;

/**
 *
 * @author Hydrolyze
 */
public class Activity_JSON {
    private Integer id;
    private String title;
    private java.sql.Timestamp start;
    private java.sql.Timestamp end;

    public Activity_JSON(){
        id = 0;
        title = null;
        start = null;
        end = null;
    }
    
    public Activity_JSON(Integer Activity_ID, String Activity_Name, java.sql.Timestamp Time_Start, java.sql.Timestamp Time_End) {
        this.id = Activity_ID;
        this.title = Activity_Name;
        this.start = Time_Start;
        this.end = Time_End;
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the start
     */
    public java.sql.Timestamp getStart() {
        return start;
    }

    /**
     * @param start the start to set
     */
    public void setStart(java.sql.Timestamp start) {
        this.start = start;
    }

    /**
     * @return the end
     */
    public java.sql.Timestamp getEnd() {
        return end;
    }

    /**
     * @param end the end to set
     */
    public void setEnd(java.sql.Timestamp end) {
        this.end = end;
    }
    
}
