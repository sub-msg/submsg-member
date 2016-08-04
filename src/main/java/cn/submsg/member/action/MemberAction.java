package cn.submsg.member.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;
import com.sr178.module.web.session.SessionManager;

import cn.submsg.member.bean.MsgTempBean;
import cn.submsg.member.bo.MemberMsgInfo;
import cn.submsg.member.bo.MemberProject;
import cn.submsg.member.constant.SessionAttrName;
import cn.submsg.member.service.MemberService;

public class MemberAction extends JsonBaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<MsgTempBean> msgTempList;
	
	private MemberMsgInfo msgInfo;
	
	public String execute(){
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		msgTempList = memberService.getUserMsgTempList(userId,7);
		msgInfo = memberService.getMemberMsgInfo(userId);
		return SUCCESS;
	}
	/**
	 * 登出
	 * @return
	 */
	public String logout(){
		String sessionId = ServletActionContext.getRequest().getSession().getId();
		SessionManager.ins().removeSession(sessionId);
		return SUCCESS;
	}
	
	
	public String appList(){
		
		return SUCCESS;
	}
	
	public String createApp(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		memberService.createMemberProject(userId, appname, sendlimt);
		return this.renderSuccessResult();
	}
	
	public String getAppsList(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		List<MemberProject> projectList = memberService.getMemberProjectList(userId);
		return this.renderListResult(projectList);
	}
	private int appid;
	private String appname;
	private Integer enabel;
	private Integer sendlimt;
	private String bind;
	public String editApp(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		memberService.updateMemberProject(userId,appid, appname, bind, sendlimt, enabel);
		return this.renderObjectResult(memberService.getMemberProject(userId, appid));
	}
	
	public String updateAppKey(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		return this.renderKeyValueResult("key", memberService.updateMemberProjectAppKey(userId, appid));
	}
	
	public String deleteApp(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		int userId = this.getUserSession().getIntAttr(SessionAttrName.USERID);
		memberService.deleteApp(userId, appid);
		return this.renderSuccessResult();
	}
	

	public List<MsgTempBean> getMsgTempList() {
		return msgTempList;
	}
	public void setMsgTempList(List<MsgTempBean> msgTempList) {
		this.msgTempList = msgTempList;
	}
	public MemberMsgInfo getMsgInfo() {
		return msgInfo;
	}
	public void setMsgInfo(MemberMsgInfo msgInfo) {
		this.msgInfo = msgInfo;
	}

	public int getAppid() {
		return appid;
	}

	public void setAppid(int appid) {
		this.appid = appid;
	}

	public String getAppname() {
		return appname;
	}

	public void setAppname(String appname) {
		this.appname = appname;
	}

	public Integer getEnabel() {
		return enabel;
	}

	public void setEnabel(Integer enabel) {
		this.enabel = enabel;
	}

	public Integer getSendlimt() {
		return sendlimt;
	}

	public void setSendlimt(Integer sendlimt) {
		this.sendlimt = sendlimt;
	}

	public String getBind() {
		return bind;
	}

	public void setBind(String bind) {
		this.bind = bind;
	}

	
}
