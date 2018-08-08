package org.b3.banking.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BankInfo {
	 @Id 
	 @GeneratedValue(strategy=GenerationType.AUTO)
private int uid;
private  String fname;

private String lname;

private String email;

private String mob;

private String pass;

private String adhar;

private String bal;
private String pin;
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getLname() {
	return lname;
}
public void setLname(String lname) {
	this.lname = lname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMob() {
	return mob;
}
public void setMob(String mob) {
	this.mob = mob;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
public String getAdhar() {
	return adhar;
}
public void setAdhar(String adhar) {
	this.adhar = adhar;
}
public String getBal() {
	return bal;
}
public void setBal(String bal) {
	this.bal = bal;
}
public String getPin() {
	return pin;
}
public void setPin(String pin) {
	this.pin = pin;
}


}
