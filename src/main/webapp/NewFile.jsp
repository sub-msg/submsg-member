<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h2><strong>SUBMSG<code> JAVA</code> SDK</strong></h2>

<p>&nbsp;</p>

<div><a class="res-title table-title btn-block" href="javascript:void(0)"><strong>&nbsp; &nbsp;概览</strong></a>

<div class="res-table">
<p>&nbsp;</p>

<p>SUBMSG JAVA SDK<br>
开发版本：jdk1.7<br>
代码编码格式：utf-8<br>
需导入 json 包和 http 请求处理包</p>

<p>&nbsp;</p>
</div>
</div>

<div><a class="res-title table-title btn-block" href="javascript:void(0)"><strong>&nbsp; &nbsp;下载</strong></a>

<div class="res-table table-responsive">
<table class="table table-hover" style="width:100%">
	<tbody>
		<tr>
			<td>
			<h5><code><a href="/sdk/SUBMSG_JAVA_SDK.zip">SUBMSG_JAVA_SDK</a></code></h5>
			</td>
			<td>
			<h5>SUBMSG 短信发送 JAVA SDK</h5>
			</td>
			<td>
			<h5><a href="/sdk/SUBMSG_JAVA_SDK.zip">下载</a></h5>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>
</div>
</div>


<div><a class="res-title table-title btn-block" href="javascript:void(0)"><strong>&nbsp; &nbsp;开始使用</strong></a>

<div class="res-table">
<p>&nbsp;</p>

<h3>引入文件</h3>

<table class="table table-hover" style="width:100%">
	<tbody>
		<tr>
			<td>
			<h5>导入以下包</h5>
			</td>
			<td>
			<h5>&nbsp;</h5>
			</td>
			<td>
			<h5>&nbsp;</h5>
			</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>json-lib-2.4-jdk15.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>commons-beanutils-1.8.0.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>commons-collections-3.2.1.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>commons-lang-2.5.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>commons-logging-1.1.1.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>ezmorph-1.0.6.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>httpclient-4.3.5.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>httpcore-4.3.2.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
			<p style="text-align:justify"><code>commons-codec-1.6.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
        <tr>
			<td>
			<p style="text-align:justify"><code>httpmime-4.3.5.jar</code></p>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>		
	</tbody>
</table>

<p>&nbsp;</p>

<h3>修改配置文件</h3>

<p>修改app_config.properties配置文件中的msg_appid=您应用管理中的应用ID，msg_appkey=应用KEY。</p>

<p>&nbsp;</p>
<hr>

<h3>代码调用示例</h3>

<p>使用 <code>SubMsgSendUtils</code> 类发送一条国内和国际短信。</p>

<hr>
<pre class="prettyprint prettyprinted"><span class="kwd">package</span><span class="pln"> cn.submsg.client.demo</span><span class="pun">;</span><br><span class="pln">
</span><br><span class="pln">
</span><span class="kwd">import</span><span class="pln"> java</span><span class="pun">.</span><span class="typ">util</span><span class="pun"><span class="pun">.</span><span class="typ">HashMap</span>;</span><br><span class="pln">
</span><span class="kwd">import</span><span class="pln"> java</span><span class="pun">.</span><span class="typ">util</span><span class="pun"><span class="pun">.</span><span class="typ">Map</span>;</span><br><span class="pln">
</span><span class="kwd">import</span><span class="pln"> cn</span><span class="pun">.</span><span class="typ">submsg</span><span class="pun"><span class="pun">.</span><span class="typ">client</span><span class="pun">.</span><span class="typ">util</span><span class="pun">.</span><span class="typ">SubMsgSendUtils</span>;</span><br><span class="pln">
</span>
<span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">class</span><span class="pln"> </span><span class="typ">MessageXSendDemo</span><span class="pln"> </span><span class="pun">{</span><br><span class="pln">
</span><br><span class="pln">
</span><span class="kwd">public</span><span class="pln"> </span><span class="kwd">static</span><span class="pln"> </span><span class="kwd">void</span><span class="pln"> main</span><span class="pun">(</span><span class="typ">String</span><span class="pun">[]</span><span class="pln"> args</span><span class="pun">)</span><span class="pln"> </span><span class="pun">{</span><br><span class="pln">
</span><br>
<span class="kwd">//模板中定义的 code 参数变量设置</span><br>
<span class="pln">Map<String,String> param = new HashMap<String,String>();</span><br>
<span class="pln">param.put("code", "156872");</span><br>
<span class="kwd">//发送国内短信  第一个参数为 手机号码  第二个参数为 模板ID  第四个参数为 模板中的变量参数与值</span><br>
<span class="pln">SubMsgSendUtils.sendMessage("18920652358", "1mg1O", param);</span><br>
<span class="kwd">//发送国际短信 第一个参数为国家代码 如86代表中国，第二个参数为手机号码  第三个参数为模板ID，第四个参数为 模板中的变量参数与值</span><br>
<span class="pln">SubMsgSendUtils.sendInternationalMessage("93","18920652358", "sUb981", param);</span><br>
<span class="pln">
</span><span class="pun">  }</span><br><span class="pln">
</span><span class="pun">}</span></pre>

<p>&nbsp;</p>
</div>
</div>
<p>&nbsp;</p>
	