package com.teachvideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teachvideo.bean.User;
import com.teachvideo.mapper.UserMapper;
import com.teachvideo.service.UserService;
@Service
public class UserServiceimpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public void save(User t) {
		// TODO Auto-generated method stub
		userMapper.save(t);
		
	}

	@Override
	public void delete(int t) {
		// TODO Auto-generated method stub
		userMapper.delete(t);
		
	}

	@Override
	public void update(User t) {
		// TODO Auto-generated method stub
		userMapper.update(t);
		
	}

	@Override
	public User getById(int id) {
		// TODO Auto-generated method stub
		return userMapper.getById(id);
	}

	@Override
	public List<User> getall() {
		// TODO Auto-generated method stub
		return userMapper.getall();
	}

	@Override
	public User getuuid(String uuid) {
		// TODO Auto-generated method stub
		return userMapper.getuuid(uuid);
	}

	@Override
	public User getaccunt(User user) {
		// TODO Auto-generated method stub
		return userMapper.getaccunt(user);
	}

	@Override
	public User getisuserexit(String account) {
		// TODO Auto-generated method stub
		return userMapper.getisuserexit(account);
	}

}
