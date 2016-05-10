package com.teachvideo.bean;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer or_id;
	private Integer u_id;
	private Date or_time;
	private String  or_content;
	private  Date or_entime;
	private Integer or_isend;
	private Integer or_price;
	@Override
	public String toString() {
		return "Order [or_id=" + or_id + ", u_id=" + u_id + ", or_time=" + or_time + ", or_content=" + or_content
				+ ", or_entime=" + or_entime + ", or_isend=" + or_isend + ", or_price=" + or_price + "]";
	}
	public Integer getOr_id() {
		return or_id;
	}
	public void setOr_id(Integer or_id) {
		this.or_id = or_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Date getOr_time() {
		return or_time;
	}
	public void setOr_time(Date or_time) {
		this.or_time = or_time;
	}
	public String getOr_content() {
		return or_content;
	}
	public void setOr_content(String or_content) {
		this.or_content = or_content;
	}
	public Date getOr_entime() {
		return or_entime;
	}
	public void setOr_entime(Date or_entime) {
		this.or_entime = or_entime;
	}
	public Integer getOr_isend() {
		return or_isend;
	}
	public void setOr_isend(Integer or_isend) {
		this.or_isend = or_isend;
	}
	public Integer getOr_price() {
		return or_price;
	}
	public void setOr_price(Integer or_price) {
		this.or_price = or_price;
	}
}
