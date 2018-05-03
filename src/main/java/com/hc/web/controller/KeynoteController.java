package com.hc.web.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hc.web.mapper.ComDynamicMapper;
import com.hc.web.po.ComDynamic;
import com.hc.web.service.ComDynamicService;
import com.hc.web.service.CommunityService;
import com.hc.web.util.HCResult;
import com.hc.web.util.UploadUtils;


/**
 *  登录
 * @author ouyangliang
 */
@Controller
public class KeynoteController {
	@Value("${STUDENT_PHOTOS_UPLOAD_PATH}")
	private String STUDENT_PHOTOS_UPLOAD_PATH;

	
	@RequestMapping("/keynote")
	public String toKeynote(HttpServletRequest request){
		Object user = request.getSession().getAttribute("user");
		if (user == null) {
			return "login";
		}
		return "keynote";
	}
	
	@Autowired
	private CommunityService communityService;
	
	@RequestMapping("/keynotesubmit")
	public String keynotesubmit(ComDynamic comDynamic){
		if (comDynamic != null) {
			communityService.addArticle(comDynamic);
		}
		return "redirect:community.action";
	}
	
	@RequestMapping("/uploadpic")
	@ResponseBody
	public HCResult uploadPic(MultipartFile file) throws Exception{
		//获取上传的文件名
		String filename = file.getOriginalFilename();
		System.out.println(filename);
		String cover = null;
		if (filename != null) {
			if (!filename.equals("")) {
				String newFileName = UploadUtils.getRandomName(filename);
				File uploadPic = new File(STUDENT_PHOTOS_UPLOAD_PATH + newFileName);
				if (!uploadPic.exists()) {
					uploadPic.mkdirs();
				}
				file.transferTo(uploadPic);
				cover= "pic/" + newFileName;
			}
		}
		
		return HCResult.ok(cover);
	}
	
}
