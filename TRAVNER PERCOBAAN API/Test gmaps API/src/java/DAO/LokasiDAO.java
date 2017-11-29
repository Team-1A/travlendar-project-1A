/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.disconnect;
import static DAO.DAO.getConnection;
import Model.Lokasi;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hydrolyze
 */
public class LokasiDAO extends DAO{
    public static int add(Lokasi lokasi){
        Integer status = 0;//default
        try{
            Connection connect = getConnection();
            Statement statement = connect.createStatement();
            
            String startloc = lokasi.getStartloc();
            Double startlat = lokasi.getStartlat();
            Double startlng = lokasi.getStartlng();
            String destinationloc = lokasi.getDestinationloc();
            Double destinationlat = lokasi.getDestinationlat();
            Double destinationlng = lokasi.getDestinationlng();
            Double distance = lokasi.getDistance();
            
            String toSQL = "INSERT INTO data_lokasi (startloc,startlat,startlng,destinationloc,destinationlat,destinationlng,distance) VALUES(\"" + startloc + "\",\"" + startlat + "\",\"" + startlng + "\",\"" + destinationloc + "\",\"" + destinationlat + "\",\"" + destinationlng + "\",\"" + distance + "\");";
            status = statement.executeUpdate(toSQL);
        }catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return status;
    }
    
    public static List<Lokasi> getAll(){
        List<Lokasi> listLokasi = new ArrayList<>();
        try {
            Connection connect = getConnection();
            PreparedStatement statement_Prepared = connect.prepareStatement("SELECT * FROM activity");
            ResultSet result = statement_Prepared.executeQuery();

            while(result.next()){
                Lokasi lokasi = new Lokasi();
                lokasi.setStartloc(result.getString("startloc"));
                lokasi.setStartlat(result.getDouble("startlat"));
                lokasi.setStartlng(result.getDouble("startlng"));
                lokasi.setDestinationloc(result.getString("sestinationloc"));
                lokasi.setDestinationlat(result.getDouble("sestinationlat"));
                lokasi.setDestinationlng(result.getDouble("sestinationlng"));
                lokasi.setDistance(result.getDouble("distance"));
            }
        } catch (SQLException ex){
            System.out.println(ex);
        }
        disconnect();
        return listLokasi;
    }
}
