package com.teachvideo.bean;

import java.io.Serializable;

/**
 * 课程标签
 * @author dg
 *
 */
public class Vlabel implements Serializable {
	private Integer vl_id;
	private Integer v_ID;
	private String vl_name;
	private String vl_keyword;
	private String vl_describe;
	private Integer vl_remarks;
	private String vl_isend;
	private String vl_img;
	public String getVl_img() {
		return vl_img;
	}
	public void setVl_img(String vl_img) {
		this.vl_img = vl_img;
	}
	@Override
	public String toString() {
		return "Vlabel [vl_id=" + vl_id + ", v_ID=" + v_ID + ", vl_name=" + vl_name + ", vl_keyword=" + vl_keyword
				+ ", vl_describe=" + vl_describe + ", vl_remarks=" + vl_remarks + ", vl_isend=" + vl_isend + ", vl_img="
				+ vl_img + "]";
	}
	public Integer getVl_id() {
		return vl_id;
	}
	public void setVl_id(Integer vl_id) {
		this.vl_id = vl_id;
	}
	public Integer getV_ID() {
		return v_ID;
	}
	public void setV_ID(Integer v_ID) {
		this.v_ID = v_ID;
	}
	public String getVl_name() {
		return vl_name;
	}
	public void setVl_name(String vl_name) {
		this.vl_name = vl_name;
	}
	public String getVl_keyword() {
		return vl_keyword;
	}
	public void setVl_keyword(String vl_keyword) {
		this.vl_keyword = vl_keyword;
	}
	public String getVl_describe() {
		return vl_describe;
	}
	public void setVl_describe(String vl_describe) {
		this.vl_describe = vl_describe;
	}
	public Integer getVl_remarks() {
		return vl_remarks;
	}
	public void setVl_remarks(Integer vl_remarks) {
		this.vl_remarks = vl_remarks;
	}
	public String getVl_isend() {
		return vl_isend;
	}
	public void setVl_isend(String vl_isend) {
		this.vl_isend = vl_isend;
	}

}
