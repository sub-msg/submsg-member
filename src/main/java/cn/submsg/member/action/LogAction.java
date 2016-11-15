package cn.submsg.member.action;

import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.constant.SessionAttrName;
import cn.submsg.member.service.LogService;

public class LogAction extends JsonBaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 进入日志首页
	 * @return
	 */
	public String enterLog(){
		return SUCCESS;
	}
	
	/**
	 * 获取日志
	 * @return
	 */
	private String a;//日志类型
	private String s;//时间开始
	private String e;//时间结束
	private int p;//页数
	public String getlogs(){
		LogService logService = ServiceCacheFactory.getService(LogService.class);
		s = s.replace("年","-");
		s = s.replace("月","-");
		s = s.replace("日","");
		e = e.replace("年","-");
		e = e.replace("月","-");
		e = e.replace("日","");
		if(a.equals("message")){
			return this.renderPageResult(logService.getMsgSendLog(getUserIdMy(), p, 50, s, e));
		}else if(a.equals("buy")){
			return this.renderPageResult(logService.getPayMentLog(getUserIdMy(), p, 50, s, e));
		}
		return this.renderErrorResult("无效的日志类型");
	}
	
	
	private int getUserIdMy(){
	    	return this.getUserSession().getIntAttr(SessionAttrName.USERID);
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getS() {
		return s;
	}
	public void setS(String s) {
		this.s = s;
	}
	public String getE() {
		return e;
	}
	public void setE(String e) {
		this.e = e;
	}
	public int getP() {
		return p;
	}
	public void setP(int p) {
		this.p = p;
	}
}
