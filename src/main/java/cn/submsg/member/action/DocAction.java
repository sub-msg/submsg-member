package cn.submsg.member.action;

import com.sr178.game.framework.context.ServiceCacheFactory;
import com.sr178.module.web.action.JsonBaseActionSupport;

import cn.submsg.member.service.DocService;

public class DocAction extends JsonBaseActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 开发文档首页
	 * @return
	 */
	private int type=1;
	public String index(){
		return SUCCESS;
	}
	
	private String docId;
	public String getContent(){
		DocService docService = ServiceCacheFactory.getService(DocService.class);
		return this.renderObjectResult(docService.getDocContent(docId));
	}
	
	private String e;
	public String searchContents(){
		DocService docService = ServiceCacheFactory.getService(DocService.class);
		return this.renderListResult(docService.searchDoc(e));
	}
	
	public String getE() {
		return e;
	}

	public void setE(String e) {
		this.e = e;
	}

	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}

	public String getDocId() {
		return docId;
	}

	public void setDocId(String docId) {
		this.docId = docId;
	}
}
