package com.teachvideo.handler;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.teachvideo.bean.User;
import com.teachvideo.bean.Userright;
import com.teachvideo.service.UserService;
import com.teachvideo.service.UserrightService;
import com.teachvideo.utils.MailSender;
import com.teachvideo.utils.Timechange;

@Controller
@RequestMapping("/user")
public class UserHandler extends BaseHandler {
	@Autowired
	private UserService userService;
	@Autowired
	private UserrightService userrightService;

	@RequestMapping("/login")
	public String login() {
		return "front/login";

	}
	/**
	 * 登录
	 * @param user
	 * @param model
	 * @param code
	 * @param session
	 * @param attr
	 * @return
	 */
	@RequestMapping("/loginuser")
	public String loginuser(User user, Model model,String code,HttpSession session,HttpSession attr) {
		if(code.equalsIgnoreCase(session.getAttribute("code").toString())){
		try {
			User user2 = userService.getaccunt(user);
			if (user2 != null) {
				user2.setU_logintime(new Date());
				userService.update(user2);
				attr.setAttribute("user", user2);
				return  "redirect:/newindex";
			} else {
				model.addAttribute("error", "用户名或者密码错误");
				return "front/login";
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
		else{
			model.addAttribute("error", "验证码错误");
			return "front/login";
		}
		return null;

	}
	/**
	 * 退出
	 * @param session
	 * @return 
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return  "redirect:/newindex";
	}

	@RequestMapping("/register")
	public String register() {
		return "front/register";

	}

	@RequestMapping("/registeruser")
	public String register(User user, HttpSession session, Model model) {
		try {
			String uuid = UUID.randomUUID().toString();
			user.setU_uuid(uuid);
			user.setU_enable(0);
			userService.save(user);
			String content = "点击完成注册http://localhost:8080/Graduationdesign/user/regValidate?uuid=" + uuid + "&email="
					+ user.getU_account();
			MailSender.sendMail(user.getU_account(), content);
			model.addAttribute("info", "验证激活邮箱已经发送，请及时登录邮箱点击验证，(*^__^*)");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "front/info";

	}

	@RequestMapping("/regValidate")
	public String regValidate(@RequestParam String uuid, @RequestParam String email, HttpSession model) {
		System.out.println(uuid);
		User user = userService.getuuid(uuid);
		if (user.getU_enable() == 0) {
			user.setU_enable(1);
			user.setU_registertime(new Date());
			user.setU_grade(0);
			user.setU_balance(0);
			user.setU_duetime(Timechange.gettime(120));
			userService.update(user);
			addforright(user);
			model.setAttribute("user", user);
			model.setAttribute("useruuid", user.getU_uuid());
			model.setAttribute("info", "已经验证成功");
		} else {
			model.setAttribute("user", user);
			model.setAttribute("useruuid", user.getU_uuid());
			model.setAttribute("info", "已经验证过了");
		}

		return "front/info";

	}
	/**
	 * 注册用户添加权限
	 * @param user
	 */
	private void addforright(User user) {
		// TODO Auto-generated method stub
		List<Userright> userrights=userrightService.getretain(0);
		for (int i = 0; i < userrights.size(); i++) {
			userrights.get(i).setU_id(user.getU_id());
			userrightService.save(userrights.get(i));
		}
		
		
	}
	@ResponseBody
	@RequestMapping("/isuserexit")
	public Integer  isuserexit(@RequestParam String account) {
		System.out.println(account+"account");
		User user = null;
		try {
			 user=userService.getisuserexit(account);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 1;
		}
		
		if(user!=null){
			return 1;
		}
		
		return 0;
		
	}
	@RequestMapping("/vip")
	public String vip(){
		System.out.println("vip");
		return "front/vip";
	}

}
