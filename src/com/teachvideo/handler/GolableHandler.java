package com.teachvideo.handler;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teachvideo.bean.User;
import com.teachvideo.service.UserService;
@Controller
public class GolableHandler {
	@Autowired
	private UserService userService;
	/**
	 * 进入首页
	 */
	@RequestMapping("/newindex")
	public String newindex(@RequestParam(required=false) String uuid,HttpSession session){
		return "front/index";
	}
	/**
	 * 进入后台界面
	 * @return
	 */
	@RequestMapping("/manage")
	public String manage(){
		return "manage/index";
	}


}
