package com.teachvideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teachvideo.bean.User;
import com.teachvideo.bean.Userright;
import com.teachvideo.mapper.UserrightMapper;
import com.teachvideo.service.UserService;
import com.teachvideo.service.UserrightService;

@Service
public class UserrightServiceimpl implements UserrightService {
	@Autowired
	private UserrightMapper userrightMapper;

	@Override
	public void save(Userright t) {
		// TODO Auto-generated method stub
		userrightMapper.save(t);
	}

	@Override
	public void delete(int t) {
		// TODO Auto-generated method stub
		userrightMapper.delete(t);
	}

	@Override
	public void update(Userright t) {
		// TODO Auto-generated method stub
		userrightMapper.update(t);
	}

	@Override
	public Userright getById(int id) {
		// TODO Auto-generated method stub
		return userrightMapper.getById(id);
	}

	@Override
	public List<Userright> getall() {
		// TODO Auto-generated method stub
		return userrightMapper.getall();
	}

	@Override
	public List<Userright> getretain(int retain) {
		// TODO Auto-generated method stub
		return userrightMapper.getretain(retain);
	}

	@Override
	public List<Userright> getright() {
		// TODO Auto-generated method stub
		return userrightMapper.getright();
	}

}
