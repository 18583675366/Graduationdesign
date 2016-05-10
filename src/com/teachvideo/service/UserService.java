package com.teachvideo.service;

import com.teachvideo.bean.User;

public interface UserService extends BaseService<User> {
	public User getuuid(String Sring);
	public User getaccunt(User user);
	public User getisuserexit(String account);
}
