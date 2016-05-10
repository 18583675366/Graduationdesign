package com.teachvideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teachvideo.bean.Courseclass;
import com.teachvideo.mapper.CourseclassMapper;
import com.teachvideo.service.CourseclassService;
@Service
public class CourseclassServiceimpl implements CourseclassService {
	@Autowired
	private CourseclassMapper courseclassMapper;

	@Override
	public void save(Courseclass t) {
		// TODO Auto-generated method stub
		courseclassMapper.save(t);
		
	}

	@Override
	public void delete(int t) {
		// TODO Auto-generated method stub
		courseclassMapper.delete(t);
		
	}

	@Override
	public void update(Courseclass t) {
		// TODO Auto-generated method stub
		courseclassMapper.update(t);
		
	}

	@Override
	public Courseclass getById(int id) {
		// TODO Auto-generated method stub
		return courseclassMapper.getById(id);
	}

	@Override
	public List<Courseclass> getall() {
		// TODO Auto-generated method stub
		return courseclassMapper.getall();
	}

	@Override
	public List<Courseclass> getallcourse(int level) {
		// TODO Auto-generated method stub
		return courseclassMapper.getallcourse(level);
	}

	@Override
	public void deletesun(int superid) {
		// TODO Auto-generated method stub
		courseclassMapper.deletesun(superid);
		
	}

	@Override
	public List<Courseclass> getbytopid(int id) {
		// TODO Auto-generated method stub
		return courseclassMapper.getbytopid(id);
	}

}
