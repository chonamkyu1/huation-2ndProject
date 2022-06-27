package com.Eyewear.vo;

public class StoreVO {
	private int sno;
	private String simg;
	private String sname;
	private String ssubname;
	private String sphone;
	private String stime;
	private String stext;
	
	public StoreVO() {
		// TODO Auto-generated constructor stub
	}

	public StoreVO(int sno, String simg, String sname, String ssubname, String sphone, String stime, String stext) {
		super();
		this.sno = sno;
		this.simg = simg;
		this.sname = sname;
		this.ssubname = ssubname;
		this.sphone = sphone;
		this.stime = stime;
		this.stext = stext;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getSimg() {
		return simg;
	}

	public void setSimg(String simg) {
		this.simg = simg;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsubname() {
		return ssubname;
	}

	public void setSsubname(String ssubname) {
		this.ssubname = ssubname;
	}

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getStext() {
		return stext;
	}

	public void setStext(String stext) {
		this.stext = stext;
	}

	@Override
	public String toString() {
		return "StoreVO [sno=" + sno + ", simg=" + simg + ", sname=" + sname + ", ssubname=" + ssubname + ", sphone="
				+ sphone + ", stime=" + stime + ", stext=" + stext + "]";
	}
	
	
	
	
}
