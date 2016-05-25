package cn.submsg.member.action;

import java.io.IOException;

import org.apache.struts2.ServletActionContext;

import com.sr178.module.web.action.BaseActionSupport;
/**
 * 主页action
 * @author dogdog
 *
 */
public class IndexAction extends BaseActionSupport{

	private static final long serialVersionUID = 1L;

	public String execute(){
		return "index";
	}
	
	public String smsIndex(){
		return "sms";
	}
	
	public String mallIndex(){
		return "mall";
	}
	
	public String mallProducts(){
		String str = "{\"returns\":\"true\",\"sms_price\":\"0.000\",\"presents\":[{\"id\":\"B9fW8\",\"icon\":null,\"type\":\"0\",\"credit\":\"1\",\"price\":\"0.00\",\"sale\":\"0\",\"tn\":\"2\",\"unit_price\":null,\"enable\":\"0\"},{\"id\":\"sPrDH9\",\"icon\":null,\"type\":\"2\",\"credit\":\"1\",\"price\":\"1.00\",\"sale\":\"0\",\"tn\":\"0\",\"unit_price\":\"1.000\",\"enable\":\"0\"},{\"id\":\"PKOj54\",\"icon\":\"images\\/store-icon06.png\",\"type\":\"1\",\"credit\":\"1000\",\"price\":\"50.00\",\"sale\":\"1000\",\"tn\":\"1\",\"unit_price\":\"0.050\",\"enable\":\"0\"},{\"id\":\"oolTB4\",\"icon\":\"images\\/store-icon01.png\",\"type\":\"1\",\"credit\":\"5000\",\"price\":\"275.00\",\"sale\":\"5000\",\"tn\":\"0\",\"unit_price\":\"0.055\",\"enable\":\"0\"},{\"id\":\"C26LN3\",\"icon\":\"images\\/sm.png\",\"type\":\"0\",\"credit\":\"100000\",\"price\":\"379.00\",\"sale\":null,\"tn\":\"0\",\"unit_price\":\"3.800\",\"enable\":\"0\"},{\"id\":\"bcA9p3\",\"icon\":\"images\\/store-icon02.png\",\"type\":\"1\",\"credit\":\"20000\",\"price\":\"1059.00\",\"sale\":\"20000\",\"tn\":\"0\",\"unit_price\":\"0.053\",\"enable\":\"0\"},{\"id\":\"qKqdi2\",\"icon\":\"images\\/mid.png\",\"type\":\"0\",\"credit\":\"500000\",\"price\":\"1749.00\",\"sale\":\"0\",\"tn\":\"0\",\"unit_price\":\"3.500\",\"enable\":\"0\"},{\"id\":\"jUg26\",\"icon\":\"images\\/store-icon03.png\",\"type\":\"1\",\"credit\":\"100000\",\"price\":\"4999.00\",\"sale\":\"100000\",\"tn\":\"0\",\"unit_price\":\"0.050\",\"enable\":\"0\"},{\"id\":\"spryH3\",\"icon\":\"images\\/lg.png\",\"type\":\"0\",\"credit\":\"2000000\",\"price\":\"4999.00\",\"sale\":\"0\",\"tn\":\"0\",\"unit_price\":\"2.500\",\"enable\":\"0\"},{\"id\":\"xlJkX3\",\"icon\":\"images\\/big.png\",\"type\":\"0\",\"credit\":\"10000000\",\"price\":\"17999.00\",\"sale\":\"0\",\"tn\":\"0\",\"unit_price\":\"1.800\",\"enable\":\"0\"},{\"id\":\"qJW273\",\"icon\":\"images\\/store-icon04.png\",\"type\":\"1\",\"credit\":\"500000\",\"price\":\"23999.00\",\"sale\":\"500000\",\"tn\":\"0\",\"unit_price\":\"0.048\",\"enable\":\"0\"},{\"id\":\"kHdGg\",\"icon\":\"images\\/store-icon05.png\",\"type\":\"1\",\"credit\":\"2000000\",\"price\":\"89999.00\",\"sale\":\"2000000\",\"tn\":\"0\",\"unit_price\":\"0.045\",\"enable\":\"0\"}]}";
		
		
		try {
			ServletActionContext.getResponse().getWriter().write(str);
		} catch (IOException e) {
		}
		
		
		return null;
		
	}
	
	public String login(){
		return "index";
	}
	
	
}
