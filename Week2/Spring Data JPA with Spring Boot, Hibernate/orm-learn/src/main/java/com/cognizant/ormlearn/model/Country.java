package com.cognizant.ormlearn.model;
import jakarta.persistence.*;
@Entity @Table(name="country")
public class Country{
@Id @Column(name="co_code") private String code;
@Column(name="co_name") private String name;
public Country(){} public Country(String c,String n){code=c;name=n;}
public String getCode(){return code;} public void setCode(String c){code=c;}
public String getName(){return name;} public void setName(String n){name=n;}
public String toString(){return "Country [code="+code+", name="+name+"]";}
}