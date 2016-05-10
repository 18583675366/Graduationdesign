package com.teachvideo.handler;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

public class BaseHandler {
	@ResponseBody
	protected Map<String, Object> ajaxDone(int statusCode, String message, String navTabId, String callbackType) {
		Map<String, Object> mav = new HashMap<String, Object>();
		mav.put("statusCode", statusCode);
		mav.put("message", message);
		mav.put("navTabId", navTabId);
		mav.put("callbackType", callbackType);
		return mav;
	}

	@ExceptionHandler
	public String exp(HttpServletRequest request, Exception ex) {
		
		request.setAttribute("ex", ex.getMessage());
		ex.printStackTrace();
		// 根据不同错误转向不同页面
		return "error";
	}

}
