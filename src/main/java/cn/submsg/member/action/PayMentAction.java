package cn.submsg.member.action;


import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.bo.MallProducts;
import cn.submsg.member.bo.PaymentOrder;
import cn.submsg.member.constant.SessionAttrName;
import cn.submsg.member.service.MemberService;
import cn.submsg.member.service.PayMentService;

public class PayMentAction extends JsonBaseActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 支付
	 * @return
	 */
	private int num;
	private int id;
	private MallProducts mp;
	public String payMent(){
		if(id==0){
			return "back";
		}
		MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
		mp = memberService.getProductById(id);
		return SUCCESS;
	}
    /**
     * 创建订单
     * @return
     */
	private int productId;
	private int invoiceId;
	public String creatOrder(){
		PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
		String orderId = payMentService.creatOrder(this.getUserId(), productId, num, invoiceId);
		return this.renderKeyValueResult("orderId", orderId);
	}
	/**
	 * 支付界面
	 * @return
	 */
	private String orderId;
	private PaymentOrder porder;
	public String pay(){
		PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
		porder = payMentService.getPayMentOrderByOrderId(orderId);
		if(porder!=null){
			MemberService memberService = ServiceCacheFactory.getService(MemberService.class);
			mp = memberService.getProductById(porder.getProductId());
		}else{
			return "back";
		}
		return SUCCESS;
	}
	/**
	 * 获取用户发票信息列表
	 * @return
	 */
	public String getInvoiceList(){
		PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
		return this.renderListResult(payMentService.getUserInvoiceList(getUserId()));
	}
	/**
	 * 获取单个发票信息
	 * @return
	 */
	public String getInvoiceById(){
		PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
		return this.renderObjectResult(payMentService.getInvoiceById(id));
	}
	/**
	 * 创建发票信息
	 * @return
	 */
	private String type;//0 普通发票  1专票
	private String title;//发票抬头
	private String lastname;
	private String firstname;
	private String provice;
	private String city;
	private String area;
	private String address;
	private String mob;//手机号码
	//专票信息
	private String s_address;//公司注册地址
	private String s_mob;//公司电话
	private String s_bank;//开户银行
	private String s_account;//公司对公帐号
	private String s_taxcode;//纳税人标识
	
    public String createInvoice(){
    	PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
    	payMentService.createOrEditInvoice(getUserId(), id, type, title, firstname,lastname, provice, city, area, address, mob, s_address, s_mob, s_bank, s_account, s_taxcode);
    	return this.renderSuccessResult();
    }
    
    /**
     * 删除发票信息
     * @return
     */
    public String deleteInvoice(){
    	PayMentService payMentService = ServiceCacheFactory.getService(PayMentService.class);
    	payMentService.deleteInvoiceById(id,this.getUserId());
    	return this.renderSuccessResult();
    }
    
    

    private int getUserId(){
    	return this.getUserSession().getIntAttr(SessionAttrName.USERID);
    }

	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public MallProducts getMp() {
		return mp;
	}


	public void setMp(MallProducts mp) {
		this.mp = mp;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getLastname() {
		return lastname;
	}


	public void setLastname(String lastname) {
		this.lastname = lastname;
	}


	public String getFirstname() {
		return firstname;
	}


	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}


	public String getProvice() {
		return provice;
	}


	public void setProvice(String provice) {
		this.provice = provice;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getMob() {
		return mob;
	}


	public void setMob(String mob) {
		this.mob = mob;
	}


	public String getS_address() {
		return s_address;
	}


	public void setS_address(String s_address) {
		this.s_address = s_address;
	}


	public String getS_mob() {
		return s_mob;
	}


	public void setS_mob(String s_mob) {
		this.s_mob = s_mob;
	}


	public String getS_bank() {
		return s_bank;
	}


	public void setS_bank(String s_bank) {
		this.s_bank = s_bank;
	}


	public String getS_account() {
		return s_account;
	}


	public void setS_account(String s_account) {
		this.s_account = s_account;
	}


	public String getS_taxcode() {
		return s_taxcode;
	}


	public void setS_taxcode(String s_taxcode) {
		this.s_taxcode = s_taxcode;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getInvoiceId() {
		return invoiceId;
	}
	public void setInvoiceId(int invoiceId) {
		this.invoiceId = invoiceId;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public PaymentOrder getPorder() {
		return porder;
	}
	public void setPorder(PaymentOrder porder) {
		this.porder = porder;
	}
}
