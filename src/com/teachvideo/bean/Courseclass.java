package com.teachvideo.bean;

import java.io.Serializable;
/**
 * 课程分类信息
 * @author dg
 *
 */
public class Courseclass implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public String toString() {
		return "Courseclass [c_ID=" + c_ID + ", c_name=" + c_name + ", c_level=" + c_level + ", c_superior="
				+ c_superior + ", c_decs=" + c_decs + ", c_label=" + c_label + "]";
	}
	private Integer c_ID;
	private String  c_name;
	private Integer c_level;
	private Integer c_superior;
	private String c_decs;
	private Integer c_label;
	public Integer getC_ID() {
		return c_ID;
	}
	public void setC_ID(Integer c_ID) {
		this.c_ID = c_ID;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public Integer getC_level() {
		return c_level;
	}
	public void setC_level(Integer c_level) {
		this.c_level = c_level;
	}
	public Integer getC_superior() {
		return c_superior;
	}
	public void setC_superior(Integer c_superior) {
		this.c_superior = c_superior;
	}
	public String getC_decs() {
		return c_decs;
	}
	public void setC_decs(String c_decs) {
		this.c_decs = c_decs;
	}
	public Integer getC_label() {
		return c_label;
	}
	public void setC_label(Integer c_label) {
		this.c_label = c_label;
	}
	

}
