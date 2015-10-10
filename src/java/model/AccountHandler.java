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
    
    public void edit( String username, String aboutme, String email, String sex, int age ){
        
        try {
            String query = "UPDATE account SET about_me = ?, sex = ?, email = ?, age = ? WHERE name = ?";
            
            statement = connect.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            
            System.out.println(aboutme);
            System.out.println(username);
            
            statement.setString(1, aboutme);
            statement.setString(2, sex);
            statement.setString(3, email);
            statement.setInt(4, age);
            statement.setString(5, username);
            
            statement.executeUpdate();
            result = statement.getGeneratedKeys();
            result.next();
            
            System.out.println("went insudee it bitch");
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public Boolean isValid( String email, String age ){
        
        if( !email.contains("@") && isInteger(age) == false )
            return false;
        return true;
        
    }
    
        private boolean isInteger(String str){
        if (str == null) {
		return false;
	}
	int length = str.length();
	if (length == 0) {
		return false;
	}
	int i = 0;
	if (str.charAt(0) == '-') {
		if (length == 1) {
			return false;
		}
		i = 1;
	}
	for (; i < length; i++) {
		char c = str.charAt(i);
		if (c <= '/' || c >= ':') {
			return false;
		}
	}
	return true;
        
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
