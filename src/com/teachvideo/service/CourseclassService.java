package com.teachvideo.service;

import java.util.List;

import com.teachvideo.bean.Courseclass;

public interface CourseclassService extends BaseService<Courseclass> {
	public List<Courseclass> getallcourse(int level);
	public void  deletesun(int superid);
	public List<Courseclass> getbytopid(int id);
}
