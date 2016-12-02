package cn.submsg.member.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.game.framework.exception.ServiceException;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.service.PayMentService;


public class AlipayAction extends JsonBaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String orderNumber;
	private String payBank;
	public String alipayReq() throws IOException{
		this.setErrorResult(null);
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setContentType("text/html; charset=UTF-8");
		PayMentService paymentService = ServiceCacheFactory.getService(PayMentService.class);
		if(payBank!=null&&!payBank.equals("ALIPAY")){
//			throw new ServiceException(8900, "银行卡充值暂时关闭，请先用支付宝进行支付！");
			//银行卡支付
			String result = paymentService.jdBankPayReq(orderNumber, payBank);
			response.getWriter().println(result);
			return null;
		}else{
			
			response.getWriter().println("<!DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"><title>支付宝即时到账交易接口</title></head>");
			String html = paymentService.alipayRequest(orderNumber);
			response.getWriter().println(html);
			response.getWriter().println("<body></body></html>");
			return null;
		}
	}
	
	
	private String out_trade_no;
	private String trade_no;
	private String trade_status;
	private String seller_id;
	@SuppressWarnings("rawtypes")
	public String aliPaynotify() throws IOException {
		// 获取支付宝POST过来反馈信息
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = ServletActionContext.getRequest().getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
			params.put(name, valueStr);
		}
       PayMentService paymentService = ServiceCacheFactory.getService(PayMentService.class);
       boolean result = paymentService.aliPayNotify(out_trade_no, trade_no, trade_status,seller_id, params);
       if(result){
    	   ServletActionContext.getResponse().getWriter().print("success");
       }else{
    	   ServletActionContext.getResponse().getWriter().print("fail");
       }
       return null;
	}
	
	/**
	 * 返回
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	public String aliPayReturn() {
		// 获取支付宝POST过来反馈信息
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = ServletActionContext.getRequest().getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
			// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "gbk");
			params.put(name, valueStr);
		}
		PayMentService paymentService = ServiceCacheFactory.getService(PayMentService.class);
		paymentService.aliPayNotify(out_trade_no, trade_no, trade_status, seller_id, params);
		return SUCCESS;
	}
	
	
	public String getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String getOut_trade_no() {
		return out_trade_no;
	}
	public void setOut_trade_no(String out_trade_no) {
		this.out_trade_no = out_trade_no;
	}
	public String getTrade_no() {
		return trade_no;
	}
	public void setTrade_no(String trade_no) {
		this.trade_no = trade_no;
	}
	public String getTrade_status() {
		return trade_status;
	}
	public void setTrade_status(String trade_status) {
		this.trade_status = trade_status;
	}
	public String getSeller_id() {
		return seller_id;
	}
	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}
	public String getPayBank() {
		return payBank;
	}
	public void setPayBank(String payBank) {
		this.payBank = payBank;
	}
}
