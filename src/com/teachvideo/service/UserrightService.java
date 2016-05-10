package com.teachvideo.service;

import java.util.List;

import com.teachvideo.bean.Userright;

public interface UserrightService extends BaseService<Userright> {
	public List<Userright> getretain(int retain);
	public List<Userright>  getright();

}
