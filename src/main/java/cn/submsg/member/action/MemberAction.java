package cn.submsg.member.action;

import java.util.List;

import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.bean.MsgTempBean;
import cn.submsg.member.bo.MemberMsgInfo;
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
}
