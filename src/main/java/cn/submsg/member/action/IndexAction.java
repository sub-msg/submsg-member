package cn.submsg.member.action;

import java.util.List;


import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.bo.MallProducts;
import cn.submsg.member.service.MemberService;
/**
 * 主页action
 * @author dogdog
 *
 */
public class IndexAction extends JsonBaseActionSupport{

	private static final long serialVersionUID = 1L;
	
	
	private List<MallProducts> productList;

	public String execute(){
		return "index";
	}
	
	public String smsIndex(){
		return "sms";
	}
	
	public String mallIndex(){
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		productList = memberService.getProductList();
		return "mall";
	}
	
	
	public String account(){
		return "account";
	}
	private String verifyCode;
	public String activeMember(){
		this.setErrorResult("noactive");
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		super.setUserName(memberService.activeMember(verifyCode));
		return "active";
	}
	
	public String reSendActiveEmail(){
		return null;
	}
	
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	public String signup(){
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		this.setErrorResult(JSON);
		memberService.signup(firstname, lastname, password, email);
		return this.renderSuccessResult();
	}

	public List<MallProducts> getProductList() {
		return productList;
	}

	public void setProductList(List<MallProducts> productList) {
		this.productList = productList;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getVerifyCode() {
		return verifyCode;
	}

	public void setVerifyCode(String verifyCode) {
		this.verifyCode = verifyCode;
	}
}
