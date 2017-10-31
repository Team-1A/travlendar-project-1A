/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 * Kelas DateParsing Dibuat untuk Objek yang Bertujuan 
 * Mendapatkan Tanggal yang Telah Diparsing 
 * Sesuai Format yang Telah Ditentukan
 * 
 * Author : Jeremia Geraldi
 */


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Pattern;


public class DateParsing {
    /** 
     * Format Date 
     */
    private final SimpleDateFormat datetimeFormatter;
    /**
     * Format Date for check
     */
    private final SimpleDateFormat dateFormat;
    /**
     * Check the range of time
     */
    private final Pattern timePattern;
    /**
     * Accommodates Date in String
     */
    private String dateValStr;
    /**
     * Accommodates Time in String
     */
    private String timeValStr;
    
    /**
     * Constructor
     */
    public DateParsing()
    {
       datetimeFormatter = new SimpleDateFormat("dd-MM-yyyy.HH.mm");
       dateFormat = new SimpleDateFormat("dd-MM-yyyy");
       timePattern = Pattern.compile("([01]?[0-9]|2[0-3]).[0-5][0-9]"); // Range of Time
       dateValStr = null;
       timeValStr = null;
    }

    /**
     * @param dateValStr
     * @return 
	 * boolean
     * 
     */
    public boolean setDateValue(String dateValStr) {
        try{
            dateFormat.parse(dateValStr);
            this.dateValStr = dateValStr;
            return true;
        }
        catch(ParseException e)
        {
            System.out.println("The date are incorrect. Please fill the right date!");
            return false;
        }
    }
    
    /**
     * @param timeValStr
     * @return
     * 
     */
    public boolean setTimeValStr(String timeValStr) {

        if(timePattern.matcher(timeValStr).matches()) 
        {
            this.timeValStr = timeValStr;
            return true;
        }     
        else 
        {
            System.out.println("The time are incorrect. Please fill the right time!");
            return false;
        }    
    }
    
    /**
     *
     * @return
     * @throws ParseException
     * 
     */
    public Date getDateValue() throws ParseException
    {
        try{
            return datetimeFormatter.parse(this.dateValStr + "."+  this.timeValStr);
        }
        catch(ParseException e){
        //  e.printStackTrace();
            return null;
        }
    }
    
    /**
     *
     * @param dateValStr
     * @return
     */
    public static Date getDateValueFromStr(String dateValStr)
    {
        SimpleDateFormat datetimeformatter;
        datetimeformatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
        
        try 
        {  
            return datetimeformatter.parse(dateValStr);
        } 
        catch (ParseException e) 
        {
            return null;
        }
    }
    
    /**
     *
     * @param dateValStr
     * @return
     */
    public static Date getDateValueID(String dateValStr)
    {
        SimpleDateFormat datetimeformatter;
        datetimeformatter = new SimpleDateFormat("dd-MM-yyyy HH.mm"); 
        
        try 
        {  
            return datetimeformatter.parse(dateValStr);
        } 
        catch (ParseException e) 
        {
            return null;
        }
    }
    
    public static String getStrFromDate(Date date)
    {
        String dateStr;
        SimpleDateFormat datetimeformatter;
        datetimeformatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        
        dateStr = datetimeformatter.format(date);
        
        return dateStr;
    }
    
}