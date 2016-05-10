package com.teachvideo.bean;

public class Userright {
	@Override
	public String toString() {
		return "Userright [ur_ID=" + ur_ID + ", ad_ID=" + ad_ID + ", u_id=" + u_id + ", ur_name=" + ur_name
				+ ", ur_desc=" + ur_desc + ", ur_info=" + ur_info + ", ur_enable=" + ur_enable + ", retain=" + retain
				+ "]";
	}
	private Integer ur_ID;
	private Integer ad_ID;
	private Integer u_id;
	private String ur_name;
	private String ur_desc;
	private String ur_info;
	private Integer ur_enable;
	private Integer retain;
	public Integer getUr_ID() {
		return ur_ID;
	}
	public void setUr_ID(Integer ur_ID) {
		this.ur_ID = ur_ID;
	}
	public Integer getAd_ID() {
		return ad_ID;
	}
	public void setAd_ID(Integer ad_ID) {
		this.ad_ID = ad_ID;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getUr_name() {
		return ur_name;
	}
	public void setUr_name(String ur_name) {
		this.ur_name = ur_name;
	}
	public String getUr_desc() {
		return ur_desc;
	}
	public void setUr_desc(String ur_desc) {
		this.ur_desc = ur_desc;
	}
	public String getUr_info() {
		return ur_info;
	}
	public void setUr_info(String ur_info) {
		this.ur_info = ur_info;
	}
	public Integer getUr_enable() {
		return ur_enable;
	}
	public void setUr_enable(Integer ur_enable) {
		this.ur_enable = ur_enable;
	}
	public Integer getRetain() {
		return retain;
	}
	public void setRetain(Integer retain) {
		this.retain = retain;
	}

}
