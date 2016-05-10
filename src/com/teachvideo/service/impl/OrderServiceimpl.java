package com.teachvideo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teachvideo.bean.Order;
import com.teachvideo.mapper.OrderMapper;
import com.teachvideo.service.OrderService;
@Service
public class OrderServiceimpl implements OrderService {
	@Autowired
	private OrderMapper orderMapper;

	@Override
	public void save(Order t) {
		// TODO Auto-generated method stub
		orderMapper.save(t);
	}

	@Override
	public void delete(int t) {
		// TODO Auto-generated method stub
		orderMapper.delete(t);
	}

	@Override
	public void update(Order t) {
		// TODO Auto-generated method stub
		orderMapper.update(t);
	}

	@Override
	public Order getById(int id) {
		// TODO Auto-generated method stub
		return orderMapper.getById(id);
	}

	@Override
	public List<Order> getall() {
		// TODO Auto-generated method stub
		return orderMapper.getall();
	}

	@Override
	public Order getbyuid(int uid) {
		// TODO Auto-generated method stub
		return orderMapper.getbyuid(uid);
	}

}
