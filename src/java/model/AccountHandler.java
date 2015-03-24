/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author WilliamPC
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccountHandler {
    private static AccountHandler acc = new AccountHandler();
    private DBConnector connector;
    private Connection connect;
    private ResultSet result;
    private PreparedStatement statement;

    private AccountHandler() {
        connector = DBConnector.getInstance();
        connect = connector.getConnect();
        System.out.println("Test test");
    }
    
    public static AccountHandler getInstance(){
        return acc;
    }
    
    public Account check(String username, String password){
        if(username.equals("Username") || password.equals("Password"))
            return null;
        try{
            Account account;
            String query = "SELECT * FROM account WHERE name = ? AND password = ?";
            statement = connect.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            result = statement.executeQuery();
            
            
            if(result.next())
            {
                
                
                account = new Account(result.getString(2), result.getString(3), result.getString(6),result.getInt(8), result.getString(7), result.getString(5));
                return account;
                
                
            }
            
            
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("Error check user");
        }
        return null;
    }
    
    
    
   /* public static void main(String[] args) {
        System.out.println("Account handler");
        Account smallAccount;
        AccountHandler hand = AccountHandler.getInstance();
        smallAccount = hand.check("reyhawndz", "1234");
        if(smallAccount!= null){
        System.out.println("Name =" +smallAccount.getUsername());
        System.out.println("Password =" +smallAccount.getPassword());
        }
        else{
            System.out.println("Either username or password is incorrect");
        }
        
       AccountHandler hand = AccountHandler.getInstance();
        hand.register("Mr Pogi", "I am the best", "Male", "mr_pogi@gmail.com", 20);
        System.out.println("End");
    }*/
}
