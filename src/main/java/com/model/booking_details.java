package com.model;

public class booking_details {
	
	public booking_details(String bookid, int busid, int custid, String source, String destination, String busdate,
			String dtiming, int busfare, int seatleft, String[] name, String page[], String seatno, int count) {
		super();
		this.bookid = bookid;
		this.busid = busid;
		this.custid = custid;
		this.source = source;
		this.destination = destination;
		this.busdate = busdate;
		this.dtiming = dtiming;
		this.busfare = busfare;
		this.seatleft = seatleft;
		this.name = name;
		this.page = page;
		this.seatno = seatno;
		this.count = count;
	}

	private String bookid;
	private int busid;
	private int custid;
	private String source;
	private String destination;
	private String busdate;
	private String dtiming;
	private int busfare;
	private int seatleft;
	private String name[];
	private String page[];
	private String seatno;
	private int count;
	


	public String getBookid() {
		return bookid;
	}

	public void setBookid(String bookid) {
		this.bookid = bookid;
	}

	public int getBusid() {
		return busid;
	}

	public void setBusid(int busid) {
		this.busid = busid;
	}

	public int getCustid() {
		return custid;
	}

	public void setCustid(int custid) {
		this.custid = custid;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getBusdate() {
		return busdate;
	}

	public void setBusdate(String busdate) {
		this.busdate = busdate;
	}

	public String getDtiming() {
		return dtiming;
	}

	public void setDtiming(String dtiming) {
		this.dtiming = dtiming;
	}

	public int getBusfare() {
		return busfare;
	}

	public void setBusfare(int busfare) {
		this.busfare = busfare;
	}

	public int getSeatleft() {
		return seatleft;
	}

	public void setSeatleft(int seatleft) {
		this.seatleft = seatleft;
	}

	public String[] getName() {
		return name;
	}

	public void setName(String[] name) {
		this.name = name;
	}

	public String[] getPage() {
		return page;
	}

	public void setPage(String[] page) {
		this.page = page;
	}

	public String getSeatno() {
		return seatno;
	}

	public void setSeatno(String seatno) {
		this.seatno = seatno;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}


}
