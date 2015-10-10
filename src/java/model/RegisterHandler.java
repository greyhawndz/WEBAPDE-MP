/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author WilliamPC
 */
public class RegisterHandler {
    private static RegisterHandler reg = new RegisterHandler();
    private DBConnector connector;
    private Connection connect;
    private ResultSet result;
    private PreparedStatement statement;
    
    private RegisterHandler() {
        connector = DBConnector.getInstance();
        connect = connector.getConnect();
        System.out.println("Register test");
    }
    public RegisterForm check(String username,String password, String conPass, String ageStr, String email, String sex, String month, String day, String year){
        RegisterForm reg;
        int age;
        boolean check = isInteger(ageStr);
        System.out.println("month " +month);
        System.out.println("day " +day);
        System.out.println("year " +year);
        if(username == "" || password == "" || conPass == "" || ageStr == "" || email == "")  
            return null;      
        if(!password.equals(conPass)){
            return null;
        }
        if(check == false){
            System.out.println("null here");
            return null;
        }
        if(!(email.contains("@")))
            return null;
        age = Integer.parseInt(ageStr);
        reg = new RegisterForm(username, password, age, month, day, year, email, sex);
        return reg;
    }
    
    public static RegisterHandler getInstance(){
        return reg;
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
    
    public void register(RegisterForm reg)
    {
        try {
            String query = "INSERT INTO account (name, password, birthday, sex, email, age, image, about_me) VALUES(?,?,?,?,?,?,?,?)";
            statement = connect.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, reg.getUsername());
            statement.setString(2, reg.getPassword());
            statement.setDate(3, reg.getBirthdate());
            statement.setString(4, reg.getSex());
            statement.setString(5, reg.getEmail());
            statement.setInt(6, reg.getAge());
            statement.setString(7, "default.png");
            statement.setString(8, "Nothing added yet");
            statement.executeUpdate();
            result = statement.getGeneratedKeys();
            result.next();
        } catch (SQLException ex) {
            Logger.getLogger(AccountHandler.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
