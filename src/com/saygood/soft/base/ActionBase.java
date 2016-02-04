/**
 * 
 */
package com.saygood.soft.base;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author IA
 *
 */
public class ActionBase extends ActionSupport implements RequestAware,  
       SessionAware, ApplicationAware {  
  
   private static final long serialVersionUID = 1L;  
  
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
 
}  

