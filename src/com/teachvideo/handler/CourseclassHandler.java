package com.teachvideo.handler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.teachvideo.bean.Courseclass;
import com.teachvideo.bean.Page;
import com.teachvideo.bean.Vlabel;
import com.teachvideo.service.CourseclassService;
import com.teachvideo.service.VlabelService;

@Controller
@RequestMapping("/course")
public class CourseclassHandler extends BaseHandler{
	@Autowired
	private CourseclassService courseclassService;
	@Autowired
	private VlabelService vlabelService;
	/**
	 * 查询课程分类信息
	 * @param session
	 * @return
	 */
	@RequestMapping("/list")
	public String getallcourse(HttpSession session,@RequestParam("currentpage") int currentpage) {
		List<Courseclass> courseclasses = courseclassService.getall();
		session.setAttribute("vlabellist", vlabelService.getallpage(currentpage));
		Page page=new Page();
		page.setCurrentpage(currentpage);
		page.setPagecount(vlabelService.getall().size()/1);
		session.setAttribute("page", page);
		istop(courseclasses, session);
		return "front/courselist";

	}
	@ResponseBody
	@RequestMapping("/tolist")
	public List<Vlabel> toajaxgetallcourse(HttpSession session,@RequestParam("currentpage") int currentpage,HttpServletRequest request) {
		String requestType = request.getHeader("X-Requested-With"); 
		if(requestType!=null){
		List<Courseclass> courseclasses = courseclassService.getall();
		Page page=new Page();
		page.setCurrentpage(currentpage);
		page.setPagecount(vlabelService.getall().size()/1);
		session.setAttribute("page", page);
		istop(courseclasses, session);
		return vlabelService.getallpage(currentpage);
		}

	}
	@ResponseBody
	@RequestMapping("/selistid")
	public List<Vlabel> selistid(@RequestParam("seid")Integer sid,HttpSession session) {
		List<Courseclass> courseclasses = courseclassService.getall();
		istop(courseclasses, session);
		return vlabelService.getByremark(sid);

	}
	@ResponseBody
	@RequestMapping("/toplistid")
	public List<Vlabel> toplistid(@RequestParam("topid")Integer sid,HttpSession session) {
		List<Courseclass> courseclasses = courseclassService.getall();
		istop(courseclasses, session);
		List<Courseclass> courseclasses2=courseclassService.getbytopid(sid);
		List<Vlabel> vlabels=new ArrayList<>();
		for(int i=0;i<courseclasses2.size();i++){
		List<Vlabel> list=vlabelService.getByremark(courseclasses2.get(i).getC_ID());
		vlabels.addAll(list);
		}
		return vlabels;

	}
	/**
	 * 查询课程分类信息
	 * @param session
	 * @return
	 */
	@RequestMapping("/manage/list")
	public String managegetallcourse(HttpSession session) {
		List<Courseclass> courseclasses = courseclassService.getall();
		session.setAttribute("courselist", courseclasses);

		return "manage/courselist";

	}
	/**
	 * 查询课程分类信息ajax
	 * @param session
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/manage/listajax")
	public List<Courseclass> managegetallcourseajax(HttpSession session) {
		List<Courseclass> courseclasses = courseclassService.getall();
		return courseclasses;

	}
	/**
	 * 通过id返回name
	 * @throws IOException 
	 */
	@ResponseBody
	@RequestMapping("/manage/name")
	public Courseclass getnamebyid( @RequestParam Integer id,HttpServletResponse response) throws IOException {
	
		return courseclassService.getById(id);
	}

	/**
	 * 判断是不是顶级分类 if(level==0)不是顶级分类
	 * 
	 * @param session
	 * @param courseclasses
	 */
	private void istop(List<Courseclass> courseclasses, HttpSession session) {
		// TODO Auto-generated method stub
		List<Courseclass> topcourse = new LinkedList<>();
		List<Courseclass> nottopcourse = new LinkedList<>();
		for (Courseclass courseclass : courseclasses) {
			if(courseclass.getC_level()==0){
				nottopcourse.add(courseclass);
			}
			else{
				topcourse.add(courseclass);
			}
		}
		session.setAttribute("nottopcourse", nottopcourse);
		session.setAttribute("topcourse", topcourse);
	}
	/**
	 * 删除课程
	 */
	@ResponseBody
	@RequestMapping("/manage/delete")
	public Map<String, Object> delete(@RequestParam Integer id,HttpSession session){
		Courseclass courseclass=courseclassService.getById(id);
		if(courseclass.getC_level()>0&&(session.getAttribute("deletecount")==null)){
			session.setAttribute("deletecount", 1);
			return ajaxDone(300, "你正在删除顶级标签,下面所有子标签将被删除", "Courseclass", "redirect");	
		}
		courseclassService.delete(id);
		courseclassService.deletesun(id);
		session.removeAttribute("deletecount");
		return ajaxDone(200, "删除成功", "Courseclass", "closeCurrent");
	}
	@RequestMapping("/manage/addpage")
	public String addpage(@RequestParam(value="s", required=false) Integer a){
		return "manage/addcourseclass";
	}
	@RequestMapping("/manage/update")
	public String updatepage(@RequestParam(value="id", required=false) Integer a,HttpSession session){
		Courseclass courseclass=courseclassService.getById(a);
		session.setAttribute("updatecourseclass", courseclass);
		return "manage/updatecourseclass";
	}
	/**
	 * 增加课程
	 */
	@ResponseBody
	@RequestMapping("/manage/add")
	public Map<String, Object> add(Courseclass courseclass){
		List<Courseclass> courseclasses=courseclassService.getall();
		if(isexits(courseclasses,courseclass)){
			courseclassService.save(courseclass);
			return ajaxDone(200, "增加成功", "Courseclass", "closeCurrent");
		}
		return ajaxDone(300, "已经存在这个名字的课程类", "Courseclass", "redirect");
	}
	/**
	 * 判断是否存在这个课程类别
	 * @param courseclasses
	 * @param courseclasss
	 * @return
	 */
	private boolean isexits(List<Courseclass> courseclasses, Courseclass courseclasss) {
		for (Courseclass courseclass : courseclasses) {
			if(courseclasss.getC_name().equals(courseclass.getC_name())){
				return false;
			}
		}
		return true;
		// TODO Auto-generated method stub
		
	}

}
