/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author WilliamPC
 */
public class Account {
    private String username;
    private String password;
    private String sex;
    private int age;
    private String email;
    private String aboutMe;
    private Date birthday;

    public Account(String username, String password, String sex, int age, String email, String aboutMe) {
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.age = age;
        this.email = email;
        this.aboutMe = aboutMe;
        
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getSex() {
        return sex;
    }

    public int getAge() {
        return age;
    }

    public String getEmail() {
        return email;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public Date getBirthday() {
        return birthday;
    }
    
    
    
    
    
}
