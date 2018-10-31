package com.qbank.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.qbank.entity.User;

public class MemberLoginFilter extends HttpServlet implements Filter {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void destroy() {
    }

    public void doFilter(ServletRequest sRequest, ServletResponse sResponse,      
            FilterChain filterChain) throws IOException, ServletException{
        
        HttpServletRequest request = (HttpServletRequest) sRequest;      
        HttpServletResponse response = (HttpServletResponse) sResponse;      
        HttpSession session = request.getSession();      
        String url=request.getRequestURI();  
        String contextPath=request.getContextPath();  
        //if(url.equals("")) url+="/"; url.startsWith("/")&&! 
        if(url.startsWith("/qbank/shop/member")&&!url.startsWith("/qbank/shop/login")){					//若访问后台资源 过滤到login  
             User user=(User)session.getAttribute("user");  
             if(user==null){//转入会员登陆页面  
                  response.sendRedirect(contextPath+"/shop/login!index.action"); 
                  return;  
             }  
             
        }  
        
        filterChain.doFilter(sRequest, sResponse);    
    }  

    public void init(FilterConfig arg0) throws ServletException {

    }
}