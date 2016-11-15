package cn.submsg.member.action;

import com.google.common.base.Strings;
import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.constant.SessionAttrName;
import cn.submsg.member.service.MemberService;

public class TempAction extends JsonBaseActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	/**
	 * 进入模版列表页面
	 * @return
	 */
	public String enterTempList(){
		return SUCCESS;
	}
	/**
	 * 模版列表
	 * @return
	 */
	private String r;//get or search 获取  或 搜索
	private String t;//tag  all 所有 unsendverify 没有送审的 verifying 正在送审核的  verifyed 审核通过的  unverifyed 审核不通过的 
	private Integer p;//页数  1第一页
	public String tempList(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		String searchString = null;
		String typeString = null;
		if(r.equals("search")){
			searchString = t;
			typeString = "all";
		}else{
			typeString = t;
		}
		return this.renderListResult(memberService.getUserMsgTempListByPage(getUserIdMy(), 20, 0, typeString, searchString));
	}
	/**
	 * 更新模板标题
	 * @return
	 */
	private String tempId;
	private String tempTitle;
	public String updateTempTitle(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.updateTempTitle(this.getUserIdMy(), tempId, tempTitle);
		return this.renderSuccessResult();
	}
	/**
	 * 删除模板
	 * @return
	 */
	public String deleteTemp(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.deleteTempByTempId(getUserIdMy(), tempId);
		return this.renderSuccessResult();
	}
	/**
	 * 获取用户签名列表
	 * @return
	 */
	public String getSignList(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		return this.renderListResult(memberService.getMemberSignList(this.getUserIdMy()));
	}
	/*
	 * 添加短信模板
	 */
	private String tempContent;
	private int tempStatus;
	private int signId;
	public String addTemp(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		
		if(!Strings.isNullOrEmpty(tempId)){
			memberService.editTemp(tempId, getUserIdMy(), signId, tempContent, tempStatus);
		}else{
			memberService.addTemp(getUserIdMy(), signId, tempContent, tempStatus);
		}
		return this.renderSuccessResult();
	}
	
	/**
	 * 删除签名
	 * @return
	 */
	public String deleteSign(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.deleteMemberSign(getUserIdMy(), signId);
		return this.renderSuccessResult();
	}
	/**
	 * 添加签名
	 */
    private String signContent;
	public String addSign(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.addMemberSign(getUserIdMy(), signContent);
		return this.renderSuccessResult();
	}
	/**
	 * 获取单个用户模板信息
	 * @return
	 */
	public String getMsgTempBean(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		return this.renderObjectResult(memberService.getMsgTempBean(getUserIdMy(), tempId));
	}
	/**
	 * 进入新建模版界面
	 * @return
	 */
	public String enterCreateTemp(){
		return SUCCESS;
	}
	
    private int getUserIdMy(){
    	return this.getUserSession().getIntAttr(SessionAttrName.USERID);
    }
	public String getR() {
		return r;
	}
	public void setR(String r) {
		this.r = r;
	}
	public String getT() {
		return t;
	}
	public void setT(String t) {
		this.t = t;
	}
	public Integer getP() {
		return p;
	}
	public void setP(Integer p) {
		this.p = p;
	}
	public String getTempId() {
		return tempId;
	}
	public void setTempId(String tempId) {
		this.tempId = tempId;
	}
	public String getTempTitle() {
		return tempTitle;
	}
	public void setTempTitle(String tempTitle) {
		this.tempTitle = tempTitle;
	}
	public String getTempContent() {
		return tempContent;
	}
	public void setTempContent(String tempContent) {
		this.tempContent = tempContent;
	}
	public int getTempStatus() {
		return tempStatus;
	}
	public void setTempStatus(int tempStatus) {
		this.tempStatus = tempStatus;
	}
	public int getSignId() {
		return signId;
	}
	public void setSignId(int signId) {
		this.signId = signId;
	}
	public String getSignContent() {
		return signContent;
	}
	public void setSignContent(String signContent) {
		this.signContent = signContent;
	}
}
