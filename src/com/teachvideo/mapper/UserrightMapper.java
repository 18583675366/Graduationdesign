package com.teachvideo.mapper;

import java.util.List;

import com.teachvideo.bean.Userright;

public interface UserrightMapper extends BaseMapper<Userright> {
	
	public List<Userright> getretain(int retain);
	public List<Userright>  getright();

}
