package com.model;

public class bus_details {
	
	private int busid;
	private String busname;
	private String source;
	private String destination;
	private String bustype;
	private String atiming;
	private String dtiming;
	private String busdate;
	private String duration;
	private String busfare;
	private String totalseat;
	private int seatleft;
	
	public bus_details( String busname, String source, String destination, String bustype, String atiming,
			String dtiming, String busdate, String duration, String busfare, String totalseat) {
		super();
		this.busname = busname;
		this.source = source;
		this.destination = destination;
		this.bustype = bustype;
		this.atiming = atiming;
		this.dtiming = dtiming;
		this.busdate = busdate;
		this.duration = duration;
		this.busfare = busfare;
		this.totalseat = totalseat;
	}
	
	public bus_details( int busid, String busname, String source, String destination, String bustype, String atiming,
			String dtiming, String busdate, String duration, String busfare, String totalseat) {
		super();
		this.busid=busid;
		this.busname = busname;
		this.source = source;
		this.destination = destination;
		this.bustype = bustype;
		this.atiming = atiming;
		this.dtiming = dtiming;
		this.busdate = busdate;
		this.duration = duration;
		this.busfare = busfare;
		this.totalseat = totalseat;
	}
	
	public bus_details(int seatleft, int busid) {
		this.seatleft=seatleft;
		this.busid=busid;
		
	}

	public int getBusid() {
		return busid;
	}
	public void setBusid(int busid) {
		this.busid = busid;
	}
	public String getBusname() {
		return busname;
	}
	public void setBusname(String busname) {
		this.busname = busname;
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
	public String getBustype() {
		return bustype;
	}
	public void setBustype(String bustype) {
		this.bustype = bustype;
	}
	public String getAtiming() {
		return atiming;
	}
	public void setAtiming(String atiming) {
		this.atiming = atiming;
	}
	public String getDtiming() {
		return dtiming;
	}
	public void setDtiming(String dtiming) {
		this.dtiming = dtiming;
	}
	public String getBusdate() {
		return busdate;
	}
	public void setBusdate(String busdate) {
		this.busdate = busdate;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getBusfare() {
		return busfare;
	}
	public void setBusfare(String busfare) {
		this.busfare = busfare;
	}
	public String getTotalseat() {
		return totalseat;
	}
	public void setTotalseat(String totalseat) {
		this.totalseat = totalseat;
	}

	public int getSeatleft() {
		return seatleft;
	}

	public void setSeatleft(int seatleft) {
		this.seatleft = seatleft;
	}

}
