package cn.submsg.member.bean;

import cn.submsg.member.bo.MallProducts;
import cn.submsg.member.bo.MemberInvoice;
import cn.submsg.member.bo.PaymentOrder;

public class OrderInfo {

	private PaymentOrder porder;
	private MemberInvoice invoice;
	private MallProducts mp;
	public PaymentOrder getPorder() {
		return porder;
	}
	public void setPorder(PaymentOrder porder) {
		this.porder = porder;
	}
	public MemberInvoice getInvoice() {
		return invoice;
	}
	public void setInvoice(MemberInvoice invoice) {
		this.invoice = invoice;
	}
	public MallProducts getMp() {
		return mp;
	}
	public void setMp(MallProducts mp) {
		this.mp = mp;
	}
	public OrderInfo(PaymentOrder porder, MemberInvoice invoice, MallProducts mp) {
		super();
		this.porder = porder;
		this.invoice = invoice;
		this.mp = mp;
	}
	public OrderInfo() {
		super();
	}
}
