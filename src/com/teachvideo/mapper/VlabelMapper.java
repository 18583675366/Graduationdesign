package com.teachvideo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teachvideo.bean.Vlabel;

public interface VlabelMapper extends BaseMapper<Vlabel> {

	public List<Vlabel> getallpage(@Param("currentPage") int currentPage);

	public List<Vlabel> getByremark(int id);
}
