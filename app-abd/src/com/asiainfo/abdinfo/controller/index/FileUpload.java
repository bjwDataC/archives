package com.asiainfo.abdinfo.controller.index;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.asiainfo.abdinfo.po.UserUser;
import com.asiainfo.abdinfo.service.IImageService;



@Controller
public class FileUpload {
	
	@Autowired
	private  IImageService iImageService;
    
  //图片的上传
	@ResponseBody
    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
    public void upload(HttpServletRequest request,MultipartFile file,HttpSession session,HttpServletResponse response) throws Exception {
		UserUser u=(UserUser)session.getAttribute("userUser");
    	 if(file!=null){  //判断文件是否为空
    		 String path="";   //文件的路径
    		 String type="";   //文件类型
    		 String fileName=file.getOriginalFilename();  //文件原名称
    		 System.out.println("原文件的名称为"+fileName);
    		 //DSC_0154 - 副本.JPG
    		 //判断文件的类型
    		 type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
    		 if(type!=null){
    			 if("PNG".equals(type.toUpperCase())||"GIF".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())){
    				 //项目实际运行发布的路径
    				 String realPath=request.getSession().getServletContext().getRealPath("/");
    				 System.out.println(realPath);
    				 //返回项目的上一级目录
    				 File file1 = new File(realPath);
    				 String parent = file1.getParent();//上一级目录
   			         
   			         File fileup=new File(parent+File.separator+"uploadImg");      //新的目录
   			         System.out.println(fileup);
   			         
   			         if(!fileup.exists()){
   			        	fileup.mkdirs();
   			         }
    			     
    			     
    				 //自定义文件的名字
    				 String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
    				// 设置存放图片文件的路径
	                 // path=realPath+uploadImg+trueFileName;
    				 path=parent+File.separator+"uploadImg"+File.separator+trueFileName;
	                  System.out.println("存放图片文件的路径:"+path);
	                  // 转存文件到指定的路径
	                 file.transferTo(new File(path));
	                  System.out.println("文件成功上传到指定目录下");
	                  String hoal=request.getLocalAddr();   // 获取远程主机，如：127.0.0.1
	                  int port=request.getLocalPort();    //获取远程客户端端口，如：3623
	                  //http://192.168.40.6:8080/uploadImg/1547205536654DSC_0154.JPG
	                  String insPath="uploadImg"+File.separator+trueFileName;
	                  String PathAddr="http://"+hoal+":"+port+File.separator+insPath;
	                  System.out.println("地址"+PathAddr);
	                  iImageService.insertPhone(u.getStaffCode(),type,PathAddr);
    			 }
    		 }else{
    			 System.out.println("文件类型为空");
    		 }
    	}else{
    		System.out.println("文件为空");
    	}
    	//return "上传成功"; 
    	 System.out.println("上传成功");
    	response.sendRedirect("backGroupIndex.do");
    }
    
    
    @RequestMapping(value = "/load.do",method=RequestMethod.GET)
    public ModelAndView upload(){
    	return new ModelAndView("upload");
    }
    
    
    /**
     * 从数据库中查询插入的图片
     * @param staffCode
     * @return
     */
    @ResponseBody
    @RequestMapping(value="selPhone.do",method=RequestMethod.GET)
    public List<String> selectPhnoe(HttpSession session) {
    	UserUser u=(UserUser)session.getAttribute("userUser");
		return iImageService.selectPhnoe(u.getStaffCode());
	}
    
    
   

}





