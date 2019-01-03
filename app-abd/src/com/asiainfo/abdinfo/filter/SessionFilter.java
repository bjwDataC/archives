package com.asiainfo.abdinfo.filter;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.regex.Pattern;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
 
/**
 * 用于检查用户是否登录了系统的过滤器
 */
public class SessionFilter implements Filter {
 
    /** 要检查的 session 的名称 */
    private String sessionKey;
     
    /** 需要排除（不拦截）的URL的正则表达式 */
    private Pattern excepUrlPattern;
     
    /** 检查不通过时，转发的URL */
    private String forwardUrl;
 
    @Override
    public void init(FilterConfig cfg) throws ServletException {
        sessionKey = cfg.getInitParameter("sessionKey");
 
        String excepUrlRegex = cfg.getInitParameter("excepUrlRegex");
        if (!StringUtils.isBlank(excepUrlRegex)) {
            excepUrlPattern = Pattern.compile(excepUrlRegex);
        }
        forwardUrl = cfg.getInitParameter("redirectUrl");
        System.out.println(forwardUrl);
    }
 
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
    
        System.out.println("查看是否进去拦截器中");
        
        HttpServletRequest request = (HttpServletRequest) req;
        System.out.println(request);
        HttpServletResponse response = (HttpServletResponse) res;
        System.out.println(response);
        String servletPath = request.getServletPath();
        System.out.println(servletPath);                              //                /loginUI.do
         
        if(servletPath.equals(forwardUrl)||servletPath.equals("/login.do")){
        	chain.doFilter(req, res);
            return;
        }
 
      Object sessionObj=request.getSession().getAttribute(sessionKey);
      System.out.println(sessionObj);
      if(sessionObj==null){
    	  String contextPath = request.getContextPath();
          String redirect = servletPath + "?" + StringUtils.defaultString(request.getQueryString());
          response.sendRedirect(contextPath + StringUtils.defaultIfEmpty(forwardUrl, "/")
                          + "?redirect=" + URLEncoder.encode(redirect, "UTF-8"));
      }else {
    	  chain.doFilter(req, res);
    	 
      }
    }
 
    @Override
    public void destroy() {
    	
    }
}