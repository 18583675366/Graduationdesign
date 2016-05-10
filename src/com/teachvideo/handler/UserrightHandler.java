package com.teachvideo.handler;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teachvideo.bean.Order;
import com.teachvideo.bean.User;
import com.teachvideo.bean.Userright;
import com.teachvideo.service.OrderService;
import com.teachvideo.service.UserrightService;

@Controller
@RequestMapping("/right")
public class UserrightHandler extends BaseHandler {
	@Autowired
	private UserrightService userrightService;
	@Autowired
	private OrderService orderService;

	@RequestMapping("/manage/list")
	public String right(Model model) {
		List<Userright> userrights = userrightService.getall();
		model.addAttribute("userrights", userrights);
		return "/manage/right";
	}

	@RequestMapping("/manage/addright")
	public String addright(Model model) {
		return "/manage/addright";
	}

	@ResponseBody
	@RequestMapping("/manage/add")
	public Map<String, Object> add(Model model, Userright userright) {
		if (isexit(userright)) {
			userright.setU_id(0);
			userrightService.save(userright);
			return ajaxDone(200, "添加成功", "Userright", "closeCurrent");
		}
		return ajaxDone(200, "你添加的已经存在", "Userright", "closeCurrent");
	}

	private boolean isexit(Userright userright) {
		// TODO Auto-generated method stub
		try {
			List<Userright> userrights = userrightService.getall();
			for (int i = 0; i < userrights.size(); i++) {
				Userright userright2 = userrights.get(i);
				if (userright2.getUr_name().equals(userright.getUr_name())) {
					return true;
				}
			}
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;

	}

	@ResponseBody
	@RequestMapping("/manage/delete")
	public Map<String, Object> delete(Model model, @RequestParam(value = "id") Integer ur_ID) {
		try {
			userrightService.delete(ur_ID);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return ajaxDone(200, "删除成功", "Userright", "closeCurrent");
	}

	@RequestMapping("/manage/update")
	public String update(Model model, @RequestParam(value = "id") Integer ur_ID) {
		Userright userright = userrightService.getById(ur_ID);
		model.addAttribute("userright", userright);
		return "manage/updateright";
	}

	@ResponseBody
	@RequestMapping("/manage/updatepages")
	public Map<String, Object> updatepages(Userright userright) {
		try {
			userrightService.update(userright);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return ajaxDone(200, "修改成功", "Userright", "closeCurrent");

	}

	@RequestMapping("/vip")
	public String getvip(Model model) {
		List<Userright> list = userrightService.getright();
		model.addAttribute("right", list);
		return "front/vip";

	}

	@ResponseBody
	@RequestMapping("/pay/paymoney")
	public String paymoney(@RequestParam("retain") Integer retain, @RequestParam("time") Integer time,
			@RequestParam("price") Integer price, HttpSession session) {
		Order t = new Order();
		User user = (User) session.getAttribute("user");
		t.setU_id(user.getU_id());
		t.setOr_content("购买vip等级"+retain+" 时间为"  + changetime(time));
		t.setOr_price(price);
		session.setAttribute("order", t);
		return "2";

	}
	/**
	 * 暂时还有问题，用户有可能有多个订单
	 * @param session
	 * @return
	 */
	@RequestMapping("/pay/topaymoney")
	public String topaymoney( HttpSession session) {
		return "front/paymoney";

	}
	@RequestMapping("/pay/topaymoneyend")
	public String topaymoneyend( HttpSession session) {
		session.setAttribute("info", "你已经支付完成");
		Order order=(Order) session.getAttribute("order");
		order.setOr_time(new Date());
		order.setOr_entime(new Date());
		order.setOr_isend(1);
		orderService.save(order);
		return "front/info";

	}
	private String changetime(Integer time) {
		// TODO Auto-generated method stub
		if (time == 1) {
			return "1个月";
		}
		if (time == 3) {
			return "3个月";
		}
		if (time == 6) {
			return "6个月";
		}
		if (time == 12) {
			return "12个月";
		}
		if (time == 24) {
			return "24个月";
		}
		return "";
	}

}
