package com.teachvideo.service;

import com.teachvideo.bean.Order;

public interface OrderService extends BaseService<Order>{
	public Order  getbyuid(int uid);


}
