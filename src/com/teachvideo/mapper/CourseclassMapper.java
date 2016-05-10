package com.teachvideo.mapper;

import java.util.List;

import com.teachvideo.bean.Courseclass;

public interface CourseclassMapper extends BaseMapper<Courseclass> {
	public List<Courseclass> getallcourse(int level);
	public void  deletesun(int superid);
	public List<Courseclass> getbytopid(int id);

}
