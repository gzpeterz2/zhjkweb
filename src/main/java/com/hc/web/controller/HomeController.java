package com.hc.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.mapper.InstDynamicMapper;
import com.hc.web.po.ChatPrintscreen;
import com.hc.web.po.HomePage;
import com.hc.web.po.Succstudent;
import com.hc.web.po.Teacher;
import com.hc.web.po.Video;
import com.hc.web.service.ChatPrintscreenService;
import com.hc.web.service.ComDynamicService;
import com.hc.web.service.HomeService;
import com.hc.web.service.InstDynamicService;
import com.hc.web.service.SuccstudentService;
import com.hc.web.service.TeacherService;
import com.hc.web.util.PageBean;

@Controller
public class HomeController {
	//首页服务
	@Autowired
	private HomeService homeService;
	@Autowired
	private ComDynamicService comDynamicService;
	@Autowired
	private InstDynamicService instDynamicService;
	//学员信息管理服务
	@Autowired
	private SuccstudentService succstudentService;
	//师资力量服务
	@Autowired
	private TeacherService teacherService;
	//就业行情页面聊天截图服务
	@Autowired
	private ChatPrintscreenService chatPrintscreenService;
	//聊天截图显示张数
	@Value("${CHAT_PRINTSCREEN_SIZE}")
	private int CHAT_PRINTSCREEN_SIZE;
	
	
	//官网首页
	@RequestMapping("/index.action")
	public ModelAndView homePage() throws Exception {
		ModelAndView mv = new ModelAndView();
		HomePage homePage = homeService.getHomePage();
		
		
		List<ComDynamicMapper> comlist = comDynamicService.findByPage();
		List<InstDynamicMapper> instlist = instDynamicService.findByPage();
		List<Video> videoList = homeService.getVideoList();
		List<Succstudent> studentlist = succstudentService.selectAll();

		mv.addObject("homePage", homePage);
		mv.addObject("comDynamic",comlist);
		mv.addObject("instDynamic",instlist);
		mv.addObject("videoList", videoList);
		mv.addObject("studentlist", studentlist);
		
		mv.setViewName("index");
		return mv;
	}
	//跳转就业行情页面
	@RequestMapping("/employment")
	public String employmentPage(Model model) throws Exception{
		List<Succstudent> list = succstudentService.selectAll();
		List<ChatPrintscreen> chatlist = chatPrintscreenService.selectByNum(CHAT_PRINTSCREEN_SIZE);
		System.out.println(chatlist.size());
		for (ChatPrintscreen chatPrintscreen : chatlist) {
			System.out.println(chatPrintscreen.getC_src());
		}
		model.addAttribute("chatlist", chatlist);
		model.addAttribute("studentlist", list);
		return "employment";
	}
	
	//跳转学员天地页面
	@RequestMapping("/students")
	public String studentPage(int pageCode,Model model) throws Exception{
		PageBean<Succstudent> pageBean = succstudentService.selectByPage(pageCode);
		model.addAttribute("pageBean", pageBean);
		return "student";
	}
	
	//跳转师资力量页面
	@RequestMapping("/teachers")
	public String toTeachersPage(int pageCode,Model model) throws Exception{
		PageBean<Teacher> pageBean = teacherService.selectByPage(pageCode);
		model.addAttribute("pageBean", pageBean);
		return "teachers";
	}
	
	//跳转联系我们界面
	@RequestMapping("/contact_us.action")
	public String toContactPage() throws Exception{
		return "contact_us";
	}
	
	//跳转学院介绍界面
	@RequestMapping("/about_us.action")
	public String toAboutUsPage() throws Exception{
		return "about_us";
	}
	
	//跳转教学环境界面
	@RequestMapping("/environment.action")
	public String toEnvironment() throws Exception{
		return "environment";
	}
	
	//跳转UI界面
	@RequestMapping("/ui.action")
	public String toUID() throws Exception{
		return "ui";
	}
	//跳转UI界面
	@RequestMapping("/h5.action")
	public String toH5() throws Exception{
		return "h5";
	}
	//跳转UI界面
	@RequestMapping("/java.action")
	public String toJAVA() throws Exception{
		return "java";
	}
}
