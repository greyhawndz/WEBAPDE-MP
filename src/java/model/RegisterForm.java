/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

/**
 *
 * @author WilliamPC
 */
public class RegisterForm {
    private String username;
    private String password;
    private int age;
    private String month;
    private String day;
    private String year;
    private Date birthdate;
    private String email;
    private String tempDate;
    private HashMap<String,String> monthMap = new HashMap<String,String>();
    private String parsedMonth;
    private SimpleDateFormat form;
    private String sex;
    java.sql.Date finalDate;
    public RegisterForm(String username, String password,int age, String month, String day, String year, String email, String sex) {
        this.username = username;
        this.password = password;
        this.age = age;
        this.month = month;
        this.sex = sex;
        this.day = day;
        this.year = year;
        this.email = email;
        init();
        
    }

    public String getSex() {
        return sex;
    }
    
    private void init(){
        monthMap.put("January", "01");
        monthMap.put("February", "02");
        monthMap.put("March", "03");
        monthMap.put("April", "04");
        monthMap.put("May", "05");
        monthMap.put("June", "06");
        monthMap.put("July", "07");
        monthMap.put("August", "08");
        monthMap.put("September", "09");
        monthMap.put("October", "10");
        monthMap.put("November", "11");
        monthMap.put("December", "12");
        form = new SimpleDateFormat("yyyy-MM-dd");
        parsedMonth = monthMap.get(month);
        tempDate = year+"-"+parsedMonth+"-"+day;
        try{
            birthdate = (Date) form.parse(tempDate);          
            finalDate = new java.sql.Date(birthdate.getTime());
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public int getAge() {
        return age;
    }

    public java.sql.Date getBirthdate() {
        return finalDate;
    }


    public String getEmail() {
        return email;
    }
    
    /*public static void main(String[] args) {
        System.out.println("RegisterForm");
        RegisterForm reg = new RegisterForm("Hi", "Hello", 17, "January", "28", "1995", "alectan@fr.com","Male");
        System.out.println(reg.getBirthdate());
    }*/
    
    
}

