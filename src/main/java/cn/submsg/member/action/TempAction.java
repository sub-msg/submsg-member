package cn.submsg.member.action;

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
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		String searchString = null;
		String typeString = null;
		if(r.equals("search")){
			searchString = t;
			typeString = "all";
		}else{
			typeString = t;
		}
		return this.renderListResult(memberService.getUserMsgTempListByPage(getUserId(), 8, p-1, typeString, searchString));
	}
	/**
	 * 进入新建模版界面
	 * @return
	 */
	public String enterCreateTemp(){
		return SUCCESS;
	}
	
    private int getUserId(){
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
}
