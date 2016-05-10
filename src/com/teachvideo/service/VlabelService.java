package com.teachvideo.service;

import java.util.List;

import com.teachvideo.bean.Vlabel;

public interface VlabelService extends BaseService<Vlabel> {
	public List<Vlabel> getallpage(int currentPage);
	 public List<Vlabel> getByremark(int id);
}
