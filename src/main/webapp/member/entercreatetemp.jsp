<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=1024"/>
        <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
        <meta name="Author" content="创建模版- 短信 － 我的 SUBMSG - submsg.cn  - ${siteAuthor}" />
        <meta name="description" content="${siteDesc}" />
        <meta name="keywords" content="${siteKeyWords}" />
        <title>创建模版 - 短信 － 我的 SUBMSG</title>
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message_sys_base.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/message.css?2.5.0"  type="text/css" />
        <link rel="stylesheet" href="${libUrl}PlugIns/messageDateUI/jquery-ui-1.10.4.custom.css?2.5.0"  type="text/css" />
         <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/addTips.css?2.5.0"  type="text/css" />
        <script src="${libUrl}PlugIns/jquery.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.cookie.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery-ui-1.10.4.custom.min.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.placeholder-1.1.9.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}PlugIns/jquery.validate.min.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/address.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/menuHold.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/eventdialog.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/autotextarea.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.rotate.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/sys_base.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}zh_cn/scripts/message_editor.js?2.5.0" type="text/javascript" charset="utf-8"></script>
        <script src="${libUrl}PlugIns/jquery.upload-1.0.2.js?2.5.0" type="text/javascript" charset="utf-8" ></script>
        <script src="${libUrl}zh_cn/scripts/addTips.js?2.5.0" type="text/javascript" charset="utf-8"></script>
         <script src="${libUrl}PlugIns/submenus/submenus.js" type="text/javascript" charset="utf-8"></script>
    </head>
    <body id="create">
        <%@ include file="/member/cmessage/nav.jsp"%>
        
<div class="body_container">
            
            <div class="content_container">
                <div class="content">
                    <h1 class="createTitle">新建短信项目</h1>
                    <p>在创建或者编辑一条短信项目（即短信模板）时，您可以在短信中插入<a href="/chs/documents/developer/oKraS3" target="_blank" class="highlight">自定义文本变量</a>，这些变量用来替换短信中的动态内容，如验证码、订单编号等。 </p>
                    <p>在您发送任何项目之前您需要将短信内容提交至 SUBMSG 进行人工审核，审核通过后，您随时可以进行发送。 </p>
                    <p><a href="/chs/documents/developer/oKraS3" target="_blank" class="highLinkHack">短信模板编辑示例</a></p>
                    <p>&nbsp;</p>
                    <div class="createMessageContainer">
                        <div class="createContainer">
                            <div class="create">
                                <p class="messageOptions createicon">编辑</p>
                                <p class="editorLength">剩余 500 字</p>
                                <p class="clear"></p>
                                <div class="messageEditor">
                                    <div class="editorContainer">
                                        <textarea name="texteditor" id="texteditor" class="messageTextEditor" placeholder="在这里键入短信模板"></textarea>
                                        <input type="hidden" name="signatureValue" value="" />
                                    </div>
                                    <p class="messageAro"></p>
                                    <a class="signaturearea" href="javascript:void(0)" title="取消签名"></a>
                                    <div class="editorOptions">
                                        <a class="signature" href="javascript:void(0);" title="插入签名">签名</a>
                                        <a class="symbol" href="javascript:void(0);" title="插入常用符号">常用符号</a>
                                        <div class="optionPanel">
                                            <div class="signaturePanel">
                                                <p>创建签名</p>
                                                <input type="text" name="signature" class="input" style="" placeholder="在这里键入签名" maxlength='20'/>
                                                <a href="javascript:void(0)" class="write submitSignature" title="创建签名">创建签名</a>
                                                <p class="clear" style="margin:0;padding:0;height:0;"></p>
                                                <p>插入签名</p>
                                                <div class="loadSignature">
                                                    <ul>
                                                    </ul>
                                                </div>
                                            </div>
                                            
                                            <div class="symbolPanel">
                                                <div class="symbolOptions">
                                                    <div class="symbolPreview"></div>
                                                    <ul>
                                                        <li><a href="javascript:void(0)" class="symbol1">特殊</a></li>
                                                        <li><a href="javascript:void(0)" class="symbol2">括号</a></li>
                                                        <li><a href="javascript:void(0)" class="symbol3">货币</a></li>
                                                        <li><a href="javascript:void(0)" class="symbol4">数字</a></li>
                                                    </ul>
                                                </div>
                                                
                                                <div class="symbolTabel">
                                                    <ul>
                                                    </ul>
                                                </div>
                                            </div>
                                            <p class="optionPanelAro"></p>
                                        </div>
                                    </div>
                                    <div class="editor-locker">
                                        
                                    </div>
                                    <a href="javascript:void(0)" title="解锁" class="unlock">解锁</a>
                                </div>
                                <p class="clear" style=" margin-top:40px;"></p>
                                <p>每<span class="highlight" id="sigelCount">0</span>字（包含标点符号和空格）计算为1条短信</p>
                                <p>此内容包含<span class="highlight" id="textCount">0</span>个字，需要<span class="highlight" id="messageCount">0</span>条短信发送许可 (至每个联系人）</p>
                                
                                
                                
                                
                                <p class="clear" ></p>
                                <div id="send-container">
                                    <p class="hr" style=" margin-top:20px;border-color:#17bf82;"></p>
                                    <p class="messageOptions sendicon" style="margin-top: 20px;">发送</p>
                                    <p class="clear" ></p>
                                    <p class="hr" style=" margin-top:20px;"></p>
                                    <div class="appidContainer">
                                        <div class="title">应用ID</div>
                                        <div class="appid-selector">
                                            
                                            <select id="appid" name='appid' class="dropdown-select">
                                                
                                                <option value="none" selected>请选择一个应用ID</option><option value="10407">中国一川短信教研(10407)</option><option value="10805">中国一川商城短信(10805)</option>                                            </select>
                                            
                                        </div>
                                        <div class="manage-apps">
                                            <a href="/chs/developer/apps#/message" target="_blank" class="highLinkHack">管理应用ID</a>
                                            
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                    <p class="hr" style=" margin-top:20px;"></p>
                                    
                                    
                                    <h2>添加联系人</h2>
                                    <p style=" margin-top:20px;"></p>
                                    
                                    <div class="contact-mod-container">
                                        <a href="javascript:void(0)" class="section-btn active" id="addressbookmod">从地址簿中导入<input type="radio" name="contactMod" value="0"/></a>
                                        <a href="javascript:void(0)" class="section-btn " id="filemod">从文件导入<input type="radio" name="contactMod" value="1"/></a>
                                        <a href="javascript:void(0)" class="section-btn" id="inputmod">手动输入<input type="radio" name="contactMod" value="2"/></a>
                                        <div class="hr"></div>
                                    </div>
                                    
                                    <div class="addressCloum contact-mod-section active">
                                        <a href="javascript:void(0)" class="resetLink" >刷新</a>
                                        
                                        <div id="listing">
                                            <ul></ul>
                                            <p class="clear"></p>
                                        </div>
                                        <p class="clear"></p>
                                        <div class="addressBookOptions">
                                            <ul>
                                                <li class="first"><span class="img"></span></li>
                                                <li><a href="/chs/addressbook/create?r=message" class="highLinkHack" target="_blank">新建地址簿</a></li>
                                                <li><a href="/chs/addressbook/#message"  class="highLinkHack" target="_blank">管理地址簿</a></li>
                                            </ul>
                                        </div>
                                        <p class="clear"></p>
                                    </div>
                                    
                                    <div class="addressFile contact-mod-section">
                                        <div class="warp">
                                            <div class="template-notic">您的短信模板中包含<span>3个文本变量</span>，请在 <span>CSV</span> 文件中将<span>第一列（A 列）</span>设为接收<span>手机号码</span>，<span>第二列（B 列）</span>设为<span>@var(active)</span>对应的值，<span>第三列（C 列）</span>设为<span>@var(name)</span>对应的值，<span>第四列（D 列）</span>设为<span>@var(type)</span>对应的值</div>
                                            <div class="file-notic">文件排列示意：</div>
                                            <div class="ex-container">
                                                <table>
                                                    <tr>
                                                        <td class="title">A</td>
                                                        <td class="title">B</td>
                                                        <td class="title">C</td>
                                                        <td class="title">D</td>
                                                    </tr>
                                                    <tr>
                                                        <td>138xxxxxxxx</td>
                                                        <td>active 值</td>
                                                        <td>name 值</td>
                                                        <td>type 值</td>
                                                    </tr>
                                                    <tr>
                                                        <td>138xxxxxxxx</td>
                                                        <td>active 值</td>
                                                        <td>name 值</td>
                                                        <td>type 值</td>
                                                    </tr>
                                                    <tr>
                                                        <td>……</td>
                                                        <td>……</td>
                                                        <td>……</td>
                                                        <td>……</td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="uploadfileoverview"></div>
                                            <div class="notic">
                                                <ol>
                                                    <li>仅支持 CSV 文件</li>
                                                    <li>单个文件中最多支持5万个联系人</li>
                                                </ol>
                                            </div>
                                            <div class="fileupload-container">
                                                <form id="ajaxfileup">
                                                    <input type="file" name="file" accept="text/csv" />
                                                </form>
                                            </div>
                                            <div id="filedatarow">
                                            
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <div class="addressInput contact-mod-section">
                                        <div class="warp">
                                            <div class="input-container">
                                                <table>
                                                    <tr>
                                                        <td class="title">手机号码</td>
                                                        <td class="title">active 变量</td>
                                                        <td class="title">name 变量</td>
                                                        <td class="title">type 变量</td>
                                                        <td class="title"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type="text" name="to" placeholder="输入手机号码" /></td>
                                                        <td><input type="text" name="var-active" placeholder="输入 active 变量" /></td>
                                                        <td><input type="text" name="var-name" placeholder="输入 name 变量" /></td>
                                                        <td><input type="text" name="var-type" placeholder="输入 type 变量" /></td>
                                                        <td><input type="button" name="add" value="+" /> <input type="button" name="less" value="-" /></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    <p class="clear" ></p>
                                    <h2 style="">订阅用户</h2>
                                    <div class="contactlist">
                                        <ul>
                                            <li><input type="checkbox" id="subscribe"/><label for="subscribe" id="subscribeLabel">订阅用户 (0个联系人)</label></li>
                                        </ul>
                                    </div>
                                    <p class="clear"></p>
                                    <h2 style=" margin-top:20px;">过滤</h2>
                                    <div class="contactlist">
                                        <ul>
                                            <li><input type="checkbox" id="unsubscribe" value="00" checked="checked" disabled="disabled"/><label for="unsubscribe" id="unsubscribeLabel">退订用户 (0个联系人)</label></li>
                                            <li><input type="checkbox" id="repeat" value="00" checked="checked" disabled="disabled"/><label for="repeat">过滤重复</label></li>
                                        </ul>
                                    </div>
                                </div>
                                
                                
                                <p class="clear"></p>
                                <p class="hr" style=" width:auto;margin-top:20px;"></p>
                                
                                <div class="messageDateUI">
                                    <div class="container">
                                        <div class="datepickerContainer">
                                            <div class="timingTitle date"><p class="icon"></p><p class="text">日期</p><p class="clear"></p></div>
                                            
                                            <div id="datepicker"></div>
                                        </div>
                                        <div class="timepickerContainer">
                                            <div class="timingTitle time"><p class="icon"></p><p class="text">时间</p><p class="clear"></p></div>
                                            <div>
                                                <p class="timer" style="background-color:#fff;">00:00</p>
                                                <select id="time" class="timeSelectContainer dropdown">
                                                    <option value="00" disabled="true">00:00</option>
                                                    <option value="01" disabled="true">01:00</option>
                                                    <option value="02" disabled="true">02:00</option>
                                                    <option value="03" disabled="true">03:00</option>
                                                    <option value="04" disabled="true">04:00</option>
                                                    <option value="05" disabled="true">05:00</option>
                                                    <option value="06" disabled="true">06:00</option>
                                                    <option value="07" disabled="true">07:00</option>
                                                    <option value="08" disabled="true">08:00</option>
                                                    <option value="09" disabled="true">09:00</option>
                                                    <option value="10" disabled="true">10:00</option>
                                                    <option value="11" disabled="true">11:00</option>
                                                    <option value="12" disabled="true">12:00</option>
                                                    <option value="13" disabled="true">13:00</option>
                                                    <option value="14" disabled="true">14:00</option>
                                                    <option value="15" disabled="true">15:00</option>
                                                    <option value="16" disabled="true">16:00</option>
                                                    <option value="17" disabled="true">17:00</option>
                                                    <option value="18" disabled="true">18:00</option>
                                                    <option value="19" disabled="true">19:00</option>
                                                    <option value="20" disabled="true">20:00</option>
                                                    <option value="21" disabled="true">21:00</option>
                                                    <option value="22" disabled="true">22:00</option>
                                                    <option value="23" disabled="true">23:00</option>
                                                </select>
                                                
                                                <select id="m" class="timeSelectContainer dropdown" style=" margin-top:-10px;">
                                                    <option value="00" disabled="true">00</option>
                                                    <option value="15" disabled="true">15</option>
                                                    <option value="30" disabled="true">30</option>
                                                    <option value="45" disabled="true">45</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="seletedContainer">
                                            <div class="timingTitle select"><p class="icon"></p><p class="text">发送</p><a href="javascript:void(0)" class="cencelTiming" title="取消">取消</a><p class="clear"></p></div>
                                            <div class="datetimeSelector">
                                                <div class="ym"></div>
                                                <div class="day"></div>
                                                <div class="timeselect">00:00</div>
                                                <input type="hidden" name="datetosend" value="" />
                                                <input type="hidden" name="timetosend" value="" />
                                                <a href="javascript:void(0)" class="timingConfirm">确认</a>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <p class="timingAro"></p>
                                </div>
                                
                                <div class="sendoptions">
                                    <input type="button" name="sending" class="sending" />
                                    <input type="button" name="sendlater" class="sendlater" />
                                    <input type="button" name="send_to_check" class="send_to_check"  />
                                    <input type="button" name="save" class="save"  />
                                </div>
                                
                                <div id="edit-tips">
                                    <p class="clear" ></p>
                                    <p class="hr" style=" margin-top:20px; border-color:#27BF84"></p>
                                    <h2 class="edit-tips-icon">常见问题与解答</h2>
                                    <p class="clear" ></p>
                                    <p class="qa-title">常用模板如何编写？动态内容如何处理？</p>
                                    <p class="qa-content">编辑常用的短信模板，例如验证码，订单通知，各类通知、提醒时，请在编辑中填写短信模板的实际内容，动态内容部分使用文本变量进行替换，API发送时使用vars参数替换这些变量。如验证码模板：<span class="highlight">“您的验证码：@var(code)，请在30分钟内输入，如非本人操作请忽略。”</span>，其中 <span class="highlight">@var(code)</span> 为文本变量，可使用脚本动态替换改变量的内容，<span class="highlight">文本变量支持中文、英文和数字</span>。<a href="/chs/documents/developer/oKraS3" target="_blank" class="highLinkHack">阅读文本变量申明方法文档</a></p>
                                    <p class="qa-content"><span class="highlight">常用事务类短信模板示例</span>：</p>
                                    <p class="qa-content">验证码类模板示例：您的验证码：@var(code)，请在30分钟内输入，如非本人操作请忽略。</p>
                                    <p class="qa-content">订单类模板示例：您在海尔商城预订的咕咚洗衣机暂未付款，订单号：@var(order_number)。谢谢您的订购。</p>
                                    <p class="qa-content">提醒类模板示例：您的商店@var(store)有一笔款项需要支付@var(price)元。在APP中我的订单查看详情或拨打400xxxxxxx。</p>
                                    <p class="qa-content">通知类模板示例：尊敬的用户，我们已经收到了订单“@var(order_number)”的发票申请，已将该订单的发票使用“@var(express)”发出。@var(express)编号：@var(express_number)，请登录@var(express)官网查询快递进度。</p>
                                    
                                    <p class="clear hr" ></p>
                                    <p class="qa-title">什么是短信签名？自定义签名和固定签名的区别是什么？</p>
                                    <p class="qa-content">依据运营商相关规定，您的短信必须包含一个签名。短信签名可以是您的公司名称缩写、企事业单位名称缩写、政府部门或机构名称缩写、网站名称、应用名称、APP名称、或产品名称等等，您可以自定义2-8个字符的签名（自定义签名仅支持事务类短信模板，如验证码，订单通知，各类通知、提醒等），<span class="highlight">您还可以申请固定签名，固定签名拥有更宽松短信模板审核政策，并支持营销类短信（如促销、打折活动、推广类短信）</span>，<a href="/chs/blog/view/29" target="_blank" class="highLinkHack">固定签名申请方法与流程</a>。</p>
                                    <p class="qa-content">要添加短信签名，请单击编辑框下方<span class="highlight">“签名”</span> 按钮，并在签名创建文本框内输入您的签名，并单击右侧<span class="highlight">“笔”</span> 状图标，创建后<span class="highlight">单击您创建的签名</span> 即可为您的短信模板添加该签名。</p>
                                    <p class="clear hr" ></p>
                                    <p class="qa-title">短信模板的人工审核需要多久？</p>
                                    <p class="qa-content">短信模板审核时间一般为工作日（周一至周五）：上午8：00-凌晨12：00； 国定假期和双休日：上午11：00-凌晨12：00，审核时间一般为2-5分钟以内。如遇紧急情况，请致电 SUBMAIL 。</p>
                                    <p class="clear hr" ></p>
                                    <p class="qa-title">我可以在线发送短信吗？</p>
                                    <p class="qa-content">短信提供在线发送方式，创建完短信模板并审核通过后，即可前往“项目”页面，点击该短信模板工具栏中的“发送”按钮，即可进入发送页面。发送页面支持使用地址薄模式群发、文件导入和手动输入等方式进行在线发送。</p>
                                    <p class="clear hr" ></p>
                                </div>
                            </div>
                        </div>
                        <div class="previewContainer">
                            <div class="preview">
                                <p class="messageOptions previewicon">预览</p>
                                <div class="previewMessageAtiPhone5s">
                                    <p class="previewTimer">上午 7:30</p>
                                    <div class="preview5sContentContainer">
                                        <p class="previewMessageTimer">2月12日 周日 上午 7:30</p>
                                        <div class="previewMessageContainer">
                                            <div class="previewMessage">在这里键入短信模板</div>
                                            <div class="previewMessageAro"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                 <%@ include file="/member/cmessage/bottom.jsp"%>
                           </div>
        </div>
    </body>
</html>