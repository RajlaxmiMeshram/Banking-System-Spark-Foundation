package model;

public class User 
{
private String uid, uname, umobile, uemail, uacount, uamount;

public String getUid() {
	return uid;
}

public void setUid(String uid) {
	this.uid = uid;
}

public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getUmobile() {
	return umobile;
}

public void setUmobile(String umobile) {
	this.umobile = umobile;
}

public String getUemail() {
	return uemail;
}

public void setUemail(String uemail) {
	this.uemail = uemail;
}

public String getUacount() {
	return uacount;
}

public void setUacount(String uacount) {
	this.uacount = uacount;
}

public String getUamount() {
	return uamount;
}

public void setUamount(String uamount) {
	this.uamount = uamount;
}

public User(String uid, String uname, String umobile, String uemail, String uacount, String uamount) {
	super();
	this.uid = uid;
	this.uname = uname;
	this.umobile = umobile;
	this.uemail = uemail;
	this.uacount = uacount;
	this.uamount = uamount;
}

public User(String uname, String umobile, String uemail, String uacount, String uamount) {
	super();
	this.uname = uname;
	this.umobile = umobile;
	this.uemail = uemail;
	this.uacount = uacount;
	this.uamount = uamount;
}

public User() {
	super();
	// TODO Auto-generated constructor stub
}
	
	
}
