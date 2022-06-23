package com.Eyewear.vo;

public class MemberVO {

	private int mno;
	private String mid;
	private String mpassword;
	private String memail;
	private String mname;
	private String mgender;
	private String mphone;
	
	
	public MemberVO() {
	}


	public MemberVO(int mno, String mid, String mpassword, String memail, String mname, String mgender, String mphone) {
		super();
		this.mno = mno;
		this.mid = mid;
		this.mpassword = mpassword;
		this.memail = memail;
		this.mname = mname;
		this.mgender = mgender;
		this.mphone = mphone;
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getMpassword() {
		return mpassword;
	}


	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}


	public String getMemail() {
		return memail;
	}


	public void setMemail(String memail) {
		this.memail = memail;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getMgender() {
		return mgender;
	}


	public void setMgender(String mgender) {
		this.mgender = mgender;
	}


	public String getMphone() {
		return mphone;
	}


	public void setMphone(String mphone) {
		this.mphone = mphone;
	}


	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", mid=" + mid + ", mpassword=" + mpassword + ", memail=" + memail + ", mname="
				+ mname + ", mgender=" + mgender + ", mphone=" + mphone + "]";
	}

	
	
	
}
	