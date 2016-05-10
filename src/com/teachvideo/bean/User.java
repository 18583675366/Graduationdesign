package com.teachvideo.bean;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer u_id;
	private String u_name;
	private String u_password;
	private String u_account;
	public String getU_account() {
		return u_account;
	}
	public void setU_account(String u_account) {
		this.u_account = u_account;
	}
	private Date u_registertime;
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_password=" + u_password + ", u_account=" + u_account
				+ ", u_registertime=" + u_registertime + ", u_logintime=" + u_logintime + ", u_grade=" + u_grade
				+ ", u_balance=" + u_balance + ", u_duetime=" + u_duetime + ", u_enable=" + u_enable + ", u_uuid="
				+ u_uuid + ", retain=" + retain + "]";
	}
	private Date u_logintime;
	private Integer  u_grade;
	private Integer u_balance;
	private Date u_duetime;
	private Integer u_enable;
	private String u_uuid;
	private String retain;
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public Date getU_registertime() {
		return u_registertime;
	}
	public void setU_registertime(Date u_registertime) {
		this.u_registertime = u_registertime;
	}
	public Date getU_logintime() {
		return u_logintime;
	}
	public void setU_logintime(Date u_logintime) {
		this.u_logintime = u_logintime;
	}
	public Integer getU_grade() {
		return u_grade;
	}
	public void setU_grade(Integer u_grade) {
		this.u_grade = u_grade;
	}
	public Integer getU_balance() {
		return u_balance;
	}
	public void setU_balance(Integer u_balance) {
		this.u_balance = u_balance;
	}
	public Date getU_duetime() {
		return u_duetime;
	}
	public void setU_duetime(Date u_duetime) {
		this.u_duetime = u_duetime;
	}
	public Integer getU_enable() {
		return u_enable;
	}
	public void setU_enable(Integer u_enable) {
		this.u_enable = u_enable;
	}
	public String getU_uuid() {
		return u_uuid;
	}
	public void setU_uuid(String u_uuid) {
		this.u_uuid = u_uuid;
	}
	public String getRetain() {
		return retain;
	}
	public void setRetain(String retain) {
		this.retain = retain;
	}

}
