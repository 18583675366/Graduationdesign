package com.teachvideo.service;

import java.util.List;

public interface BaseService<T>{

	public void save(T t);
 
	public void delete(int t);

	public void update(T t);

	public T getById(int id);
	public List<T> getall();

}
