package com.teachvideo.mapper;

import com.teachvideo.bean.User;

public interface UserMapper extends BaseMapper<User> {
	public User getuuid(String uuid);
	public User getaccunt(User user);
	public User getisuserexit(String account);

}
