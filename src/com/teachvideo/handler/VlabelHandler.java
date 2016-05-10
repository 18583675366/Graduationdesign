package com.teachvideo.handler;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.teachvideo.bean.Courseclass;
import com.teachvideo.bean.Vlabel;
import com.teachvideo.service.VlabelService;

@Controller
@RequestMapping("/vlabel")
public class VlabelHandler extends BaseHandler {
	@Autowired
	private VlabelService vlabelService;
	
	@RequestMapping("/manage/vlabellist")
	public String getall(HttpSession session) {
		List<Vlabel> vlabels=vlabelService.getall();
		session.setAttribute("vlabelall", vlabels);
		return "manage/vlabellist";
	}
	@RequestMapping("/manage/addpage")
	public String addpage(@RequestParam(value="s", required=false) Integer a){
		return "manage/addvlabel";
	}
	@ResponseBody
	@RequestMapping("/manage/add")
	public Map<String, Object> add(@RequestParam(value="s", required=false) Integer a,Vlabel  vlabel,HttpSession session){
		try {
			String filePath = session.getAttribute("filepathvlabel").toString();
			vlabel.setVl_img(filePath);
			if(isexizt(vlabel,vlabelService.getall())){
				vlabelService.save(vlabel);
				return ajaxDone(200, "添加成功", "vlabel", "redirect");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			return ajaxDone(300, e.getMessage(), "vlabel", "redirect"); 
		}
		
		return ajaxDone(300, "已经存在这个课程的标签", "vlabel", "redirect"); 
	}
	private boolean isexizt(Vlabel vlabel, List<Vlabel> getall) {
		// TODO Auto-generated method stub
		for (Vlabel vlabel2 : getall) {
			if(vlabel2.getVl_name().equals(vlabel.getVl_name())){
				return false;
			}
		}
		return true;
	}
	@ResponseBody
	@RequestMapping("/upload")
	public Map<String, Object> upload(@RequestParam(value = "vl_img", required = false) MultipartFile xgUrl,
			@RequestParam(required = false) String filename, HttpServletRequest request,
			@RequestParam(required = false) String file_fill_name,HttpSession session) {
		System.out.println("正在上传文件");
		if (xgUrl == null){
			System.out.println("未获取到文件");
			session.removeAttribute("filepathvlabel");
			return ajaxDone(300, "文件上传失败成功", "vlabel", "redirect");
			
		}
		if (xgUrl != null) {
			try {
				String filePath = request.getSession().getServletContext().getRealPath("/") + "front\\img\\vlabelimg\\"
						+ filename;
				session.setAttribute("filepathvlabel", filename);
				xgUrl.transferTo(new File(filePath));
			} catch (Exception e) {
				e.printStackTrace();
				return ajaxDone(300, "文件上传失败成功", "vlabel", "redirect");
			}
		}
		return ajaxDone(200, "文件上传成功", "vlabel", "redirect");
	}
	/**
	 * 
	 * @param a
	 * @param session
	 * @return
	 */
	@RequestMapping("/manage/update")
	public String updatepage(@RequestParam(value="id", required=false) Integer a,HttpSession session){
		Vlabel vlabel=vlabelService.getById(a);
		session.setAttribute("updatevlabel", vlabel);
		return "manage/updatevlabel";
	}
	/**
	 * 更新课程标签
	 * @param a
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/manage/updatepage")
	public Map<String, Object> updatepages(@RequestParam(value="id", required=false) Integer a,HttpSession session,Vlabel vlebel){
		String filePath = session.getAttribute("filepathvlabel").toString();
		vlebel.setVl_img(filePath);
		Vlabel t=vlabelService.getById(a);
		t=vlebel;
		t.setVl_id(a);
		vlabelService.update(t);
		return ajaxDone(200, "更新完成", "vlabel", "redirect");
	}
	@ResponseBody
	@RequestMapping("/manage/delete")
	public Map<String, Object> deletepage(@RequestParam(value="id", required=false) Integer a,HttpSession session){
		vlabelService.delete(a);
		return ajaxDone(200, "删除成功", "vlabel", "redirect");
	}
	

}
