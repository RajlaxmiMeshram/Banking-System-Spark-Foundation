package model;

public class Transaction 
{
private int tid, sacc, racc, amount;
private String status;
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}
public int getSacc() {
	return sacc;
}
public void setSacc(int sacc) {
	this.sacc = sacc;
}
public int getRacc() {
	return racc;
}

public void setRacc(int racc) {
	this.racc = racc;
}
public int getAmount() {
	return amount;
}
public void setAmount(int amount) {
	this.amount = amount;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Transaction() {
	super();
	// TODO Auto-generated constructor stub
}
public Transaction(int tid, int sacc, int racc, int amount, String status) {
	super();
	this.tid = tid;
	this.sacc = sacc;
	this.racc = racc;
	this.amount = amount;
	this.status = status;
}
public Transaction(int sacc, int racc, int amount) {
	super();
	this.sacc = sacc;
	this.racc = racc;
	this.amount = amount;
}


}
