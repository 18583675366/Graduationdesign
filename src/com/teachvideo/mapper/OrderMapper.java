package com.teachvideo.mapper;

import com.teachvideo.bean.Order;

public interface OrderMapper extends BaseMapper<Order> {
	public Order  getbyuid(int uid);

}
