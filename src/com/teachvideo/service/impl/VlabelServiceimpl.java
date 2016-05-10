package com.teachvideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teachvideo.bean.Vlabel;
import com.teachvideo.mapper.VlabelMapper;
import com.teachvideo.service.VlabelService;
@Service
public class VlabelServiceimpl implements VlabelService {
	@Autowired
	private VlabelMapper vlabelMapper;

	@Override
	public void save(Vlabel t) {
		// TODO Auto-generated method stub
		vlabelMapper.save(t);
	}

	@Override
	public void delete(int t) {
		// TODO Auto-generated method stub
		vlabelMapper.delete(t);
	}

	@Override
	public void update(Vlabel t) {
		// TODO Auto-generated method stub
		vlabelMapper.update(t);
	}

	@Override
	public Vlabel getById(int id) {
		// TODO Auto-generated method stub
		return vlabelMapper.getById(id);
	}

	@Override
	public List<Vlabel> getall() {
		// TODO Auto-generated method stub
		return vlabelMapper.getall();
	}

	@Override
	public List<Vlabel> getByremark(int id) {
		// TODO Auto-generated method stub
		return vlabelMapper.getByremark( id);
	}

	@Override
	public List<Vlabel> getallpage(int currentPage) {
		// TODO Auto-generated method stub
		return vlabelMapper.getallpage(currentPage);
	}

}
