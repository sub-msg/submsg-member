package cn.submsg.member.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.google.common.base.Strings;
import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.game.framework.exception.ServiceException;
import com.sr178.module.utils.MD5Security;
import com.sr178.module.utils.ParamCheck;
import com.sr178.module.web.action.JsonBaseActionSupport;
import com.sr178.module.web.session.Session;
import com.sr178.module.web.session.SessionManager;

import cn.submsg.member.bo.MallProducts;
import cn.submsg.member.bo.Member;
import cn.submsg.member.constant.SessionAttrName;
import cn.submsg.member.service.MemberService;
/**
 * 主页action
 * @author dogdog
 *
 */
public class IndexAction extends JsonBaseActionSupport{

	private static final long serialVersionUID = 1L;
	
	
	private List<MallProducts> productList;
	
	
	/**
	 * 登录接口
	 * @return
	 */
	public String login(){
		this.setErrorResult(JSON);
		ParamCheck.checkString(email, 1, "用户名不能为空");
		ParamCheck.checkString(password, 2, "密码不能为空");
		String md5PassWord = MD5Security.md5_32_Small(password);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		Member member = memberService.getMember(email, md5PassWord);
		if(member==null){
			throw new ServiceException(3, "用户名或密码错误");
		}
		if(member.getStatus()==Member.NOT_ACTIVED){
			throw new ServiceException(4, "用户还没有激活");
		}
		String sessionId = ServletActionContext.getRequest().getSession().getId();
		Session session = new Session(member.getUserName(), System.currentTimeMillis(), sessionId);
		session.setAttr(SessionAttrName.NAME, member.getFirstName()+member.getSecondName());
		session.setAttr(SessionAttrName.USERID,member.getId());
		SessionManager.ins().addSession(sessionId, session);
		return this.renderSuccessResult();
	}
	
    /**
     * 首页
     */
	public String execute(){
		return "index";
	}
	/**
	 * 短信首页
	 * @return
	 */
	public String smsIndex(){
		return "sms";
	}
	/**
	 * 商城首页
	 * @return
	 */
	public String mallIndex(){
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		productList = memberService.getProductList();
		return "mall";
	}
	
	public String account(){
		return "account";
	}
	/**
	 * 邮件回调激活账户
	 */
	private String verifyCode;
	public String activeMember(){
		this.setErrorResult("noactive");
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		email = memberService.getEmailByVerifyCode(verifyCode);
		memberService.activeMember(verifyCode);
		return "active";
	}
	/**
	 * 重置密码
	 * @return
	 */
	private String repassword;
	public String resetPwd(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.resetPwd(verifyCode, repassword);
		return this.renderSuccessResult();
	}
	/**
	 * 更改邮箱
	 * @return
	 */
	private String change;
	public String changeEmail(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.changeEmail(email, password,change);
		return this.renderSuccessResult();
	}
	/**
	 * 发送重置密码邮件
	 * @return
	 */
	public String pwdreset(){
		this.setErrorResult(JSON);
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.sendPwdResetEmail(email);
		return this.renderSuccessResult();
	}
	/**
	 * 重新激活
	 * @return
	 */
	public String reSendActiveEmail(){
		//如果发送出错  则调到已激活的界面
		this.setErrorResult(JSON);
		if(Strings.isNullOrEmpty(email)){
			return this.renderErrorResult(100, "");
		}
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		memberService.sendActiveEmail(email);
		return this.renderSuccessResult();
	}
	/**
	 * 注册
	 */
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
	/**
	 * 发送测试短信
	 * @return
	 */
	public String sendTest(){
		return this.renderErrorResult("验证码不正确！");
	}
	public String upgrade(){
		return SUCCESS;
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
	public String getChange() {
		return change;
	}
	public void setChange(String change) {
		this.change = change;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
}
