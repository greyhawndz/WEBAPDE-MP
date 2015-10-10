/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author WilliamPC
 */
public class PlaceHandler {
    private static PlaceHandler place = new PlaceHandler();
    private DBConnector connector;
    private Connection connect;
    private ResultSet result;
    private PreparedStatement statement;
    private PlaceHandler(){
        connector = DBConnector.getInstance();
        connect = connector.getConnect();
    }
    
    public void addPlace(String place, String user){
        try{
            String query = "INSERT INTO place (name, username) VALUES(?,?)";
            statement = connect.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, place);
            statement.setString(2, user);
            statement.executeUpdate();
            result = statement.getGeneratedKeys();
            result.next();
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
