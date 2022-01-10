package com.model;

public class payment_details {
	
	public payment_details(int custid, String bookid, int payment, String cardnumber, String expiry, String cardname) {
		super();
		this.custid = custid;
		this.bookid = bookid;
		this.payment = payment;
		this.cardnumber = cardnumber;
		this.expiry = expiry;
		this.cardname = cardname;
	}
	private int custid;
	private String bookid;
	private int payment;
	private String cardnumber;
	private String expiry;
	private String cardname;
	
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public String getCardname() {
		return cardname;
	}
	public void setCardname(String cardname) {
		this.cardname = cardname;
	}
	

}
