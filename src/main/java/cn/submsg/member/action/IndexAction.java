package cn.submsg.member.action;

import com.sr178.module.web.action.BaseActionSupport;
/**
 * 主页action
 * @author dogdog
 *
 */
public class IndexAction extends BaseActionSupport{

	private static final long serialVersionUID = 1L;

	public String showIndex(){
		return "showIndex";
	}
	
	public String login(){
		return SUCCESS;
	}
	
	
}
