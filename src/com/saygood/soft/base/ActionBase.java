/**
 * 
 */
package com.saygood.soft.base;

import java.util.Map;

import org.apache.struts2.interceptor.*;

import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *IOC(即使用Strut2 Aware拦截器)方式与jsp通信
 * @version 1.0.0
 * @author kris
 *
 */
public class ActionBase extends ActionSupport implements RequestAware,  
       SessionAware, ApplicationAware,ServletRequestAware,ServletResponseAware {
  
    private static final long serialVersionUID = 1L;

    private HttpServletRequest httpServletRequest;
    private HttpServletResponse  httpServletResponse;
    protected Map<String, Object> request;  
    protected Map<String, Object> session;  
    protected Map<String, Object> application;
  
    public Map<String, Object> getRequest() {  
        return request;  
    }  
 
    public Map<String, Object> getSession() {  
        return session;  
   }  
 
    public Map<String, Object> getApplication() {
       return application;  
    }  

    @Override  
    public void setRequest(Map<String, Object> request) {  
        this.request = request;  
   }  
 
    @Override  
    public void setSession(Map<String, Object> session) {  
        this.session = session;  
    }  
  
    @Override  
    public void setApplication(Map<String, Object> application) {
        this.application = application;  
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.httpServletRequest=httpServletRequest;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {

        this.httpServletResponse=httpServletResponse;
    }
}

