package com.asiainfo.abdinfo.controller.Attendance;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.stream.FileImageInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asiainfo.abdinfo.service.IImageService;


@Controller
public class ImageController {

	@Resource
	private IImageService imageService;
	
	@RequestMapping(value="/image.do")
	@ResponseBody
	public boolean service(HttpServletRequest request,HttpSession session,HttpServletResponse response) throws IOException{
		String staffCode=(String)session.getAttribute("staffCode");
		Map	map = new HashMap();
		map.put("staffCode", "18060405");
		byte[] image=null;
		OutputStream stream;
		boolean result=true;
		try {
			image = imageService.findImage(map).getImage();
			response.setContentType("image/png");
			stream = response.getOutputStream();
			stream.write(image);
			stream.flush();
			stream.close();
			return result;
		} catch (Exception e) {
			//获取图片的绝对路径
			String contexPath= request.getSession().getServletContext().getRealPath("/");
			String path=contexPath+"images\\profile-photo.png";
			
			//初始化输入流
		    FileImageInputStream input = null;
		    try {
		      input = new FileImageInputStream(new File(path));
		      ByteArrayOutputStream output = new ByteArrayOutputStream();
		      byte[] buf = new byte[1024];
		      int numBytesRead = 0;
		      while ((numBytesRead = input.read(buf)) != -1) {
		      output.write(buf, 0, numBytesRead);
		      }
		      image = output.toByteArray();
		      stream = response.getOutputStream();
			  stream.write(image);
			  stream.flush();
			  stream.close();
		      output.close();
		      input.close();
		    }
		    catch (IOException ex1) {
		      ex1.printStackTrace();
		    }
			System.out.println(path);
			return result;
		}
		



	}
}
