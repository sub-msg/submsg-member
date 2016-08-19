package cn.submsg.member.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.sr178.module.web.action.BaseActionSupport;
import com.sr178.module.web.session.Session;
import com.sr178.module.web.session.SessionManager;

public class MemberAuthInterceptor extends AbstractInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		BaseActionSupport aldAction = null;
		Object obj = invocation.getAction();
		if (obj instanceof BaseActionSupport) {
			aldAction = (BaseActionSupport)obj;
			String sessionId = ServletActionContext.getRequest().getSession().getId();
			Session session = SessionManager.ins().getSession(sessionId);
			if(session==null){
				HttpServletRequest req = ServletActionContext.getRequest();
	            // 获取此请求的地址，请求地址包含application name，进行subString操作，去除application name
	            String path = req.getRequestURI();
	            // 获得请求中的参数
	            String queryString = req.getQueryString();
	            // 预防空指针
	            if (queryString == null) {
	                queryString = "";
	            }
	            if(!queryString.equals("")){
	            	path = path + "?" + queryString;
	            }
	            //登出界面不能存在这个里面  不然会一直登出
	            if(path.indexOf("logout.sm")!=-1){
	            	path = "";
	            }
	            // 存入session，方便调用
	            ServletActionContext.getRequest().getSession().setAttribute("prePage", path);
				return "nologin";
			}
			aldAction.setUserSession(session);
			aldAction.setUserName(session.getUserName());
			aldAction.setErrorResult("success");
			return invocation.invoke();
		}else{
			//不支持这种方式 直接中断
			String className = obj.getClass().getCanonicalName();
			throw new RuntimeException("ACTION继承的类非BaseActionSupport"+className);
		}
	}

}
