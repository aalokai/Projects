package org.HiberF.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity(name="users")
@Table(name="users")
public class Users {
	@Id
	@Column(name="userid")
	int userid;
	@Column(name="username")
	String username;
	@Column(name="password")
	String password;
	@Column(name="fname")
	String fname;
	@Column(name="lname")
	String lname;
	
	
	
	
	
	public Users() {
		super();
	}



	public Users(String username, String password, String fname, String lname) {
		super();
		this.username = username;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
	}
	
	
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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



	@Override
	public String toString() {
		return "Users [userid=" + userid + ", username=" + username + ", password=" + password + ", fname=" + fname
				+ ", lname=" + lname + "]";
	}
	
	
	
}
