<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="sms解决方案 － ${siteAuthor}" />
            <meta name="description" content="${siteDesc}" />
            <meta name="keywords" content="短信验证码" />
            <title>短信平台_软件_短信验证码_短信网关_接口 - SUBMSG</title>
            <link rel="stylesheet" href="${libUrl}PlugIns/dist/css/bootstrap.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}PlugIns/code-prettify/src/prettify.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/global.base.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/a2p.css"  type="text/css" />
            <script src="${libUrl}PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/code-prettify/src/prettify.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/jquery.mobile.custom.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.base.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.solutions.js" type="text/javascript" charset="utf-8"></script>
             <script src="${libUrl}zh_cn/scripts/global.event.js" type="text/javascript" charset="utf-8"></script>
            <script type="text/javascript" charset="utf-8">
                $(function(){
                  $('.sms-nav').addClass('active');
                  });
                </script>
            <%@ include file="/member/common/com_head_element.jsp"%>
            </head>
    <body class="white_color">
       <%@ include file="/member/common/nav.jsp"%>
       <div class='sections solutions-bg-g '>
            <div class='container'>
                <div class='row a2p_top top_height'>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center relative fr">
                        <div class="a2p_img1"><img src="${libUrl}images/a2p/a2p_img2.png" class="img-responsive" style='margin:0 auto;' /> </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center top_pad fl">
                        <div class="a2p_content1">
                            <div class="w_100">
                                <div class="a2p_icon1 fl"><img src="${libUrl}images/a2p/a2p_icon1.svg" class="img-responsive" style='margin:0 auto;' /></div>
                                <div class="a2p_text1 fl">
                                    <p>SUBMSG</p>
                                    <p class="text1_p2">A2P 短信平台</p>
                                </div>
                            </div>
                        </div>
                        <p class="text1_p3">最专业的短信发送平台 / 解决方案</p>
                        <p class="text1_p4">短信验证码 / 短信通知 / 营销推广短信</p>
                        <p class="text1_p5">好用，不贵！3秒必达，10分钟接入，全自助式服务</p>
                        <a class="btn try_btn" href="/member/index.sm">立即使用</a>
                        <div class="down_list">
                            <ul>
                                <li><a href="/doc/index.sm#t2f1J2" class="a-btn a-btn-rl">查看 API 开发文档</a></li>
                                <li><a href="/doc/index.sm#yQZyA" class="a-btn a-btn-rl">下载 SDK 开发包</a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class='sections border_g'>
            <div class='container'>
                <div class='row padding_80'>
                    <div class='container a2p_content'>
                        <div class='row '>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div">
                                <p class='a2p_icon_width'><img src="${libUrl}images/a2p/a2p_icon2.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                                <p class="a2p_div1_p1 ">三秒必达</p>
                                <p class="a2p_div1_p2">快速、稳定、及时送达每一条短信，3-5秒必达用户手机，支持上行，实时推送回执状态</p>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div" >
                                <p class='a2p_icon_width'><img src="${libUrl}images/a2p/a2p_icon3.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                                <p class="a2p_div1_p1">十分钟接入</p>
                                <p class="a2p_div1_p2">文档简单清晰、10分钟快速接入服务，并提供多达 10 种语言开发包下载</p>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div" >
                                <p class='a2p_icon_width'><img src="${libUrl}images/a2p/a2p_icon4.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                                <p class="a2p_div1_p1 mt_20_2">新用户专属优惠</p>
                                <p class="a2p_div1_p2">新用户专属特别优惠计划，2000 条短信套餐仅需 79元（单价0.039/条）。<br /></p>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div">
                                <p class='a2p_icon_width'><img src="${libUrl}images/a2p/a2p_icon5.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                                <p class="a2p_div1_p1 mt_20_2">金牌技术支持</p>
                                <p class="a2p_div1_p2">7x24 客服电话支持，7X24 在线支持，及时解答您遇到的任何问题。</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class='sections  color_w solutions-bg-g'>
            <div class='container'>
                <div class='row padding_80'>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center fr">
                        <p class='a2p_icon6_width'><img src="${libUrl}images/a2p/a2p_icon6.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center top_pad fl">
                        <p class="test_p1">毫秒级响应能力，3秒内必达手机，敢不敢现在就试一下？</p>
                        <div class="test_list w_100 overflow_h">
                            <p>请输入手机号码</p>
                            <input type="tel" class="test_mobile" name="test_mobile" placeholder="" maxlength="11"/>
                                <p>请输入图形验证码</p>
                                <div class='code_area overflow_h'>
                                    <input id="inputCode" type="text" class="test_code fl" name="test_code" maxlength="4"/>
                                    <a href="javascript:void(0)" class="reloadverifycode">
                                    <!-- <img src='/sms/codeImg' style='display:block;float:left;margin-left:20px;'/> -->
                                    </a>
                                </div>
                                </div>
                        <div class="btn btn-primary send_btn">发送体验短信</div>
                        <p class="" style="text-align:left;font-size:14px;margin:20px 0 0 0;">*请注意</p>
                        <p class="" style="text-align:left;font-size:12px;margin-top:0px;">为确保短信测试准确，请在发送短信前先将您的手机解锁，并打开短信APP，使手机处于激活状态</p>
                    </div>
                    
                </div>
            </div>
        </div>
        <div class='sections border_g color_g'>
            <div class='container'>
                <div class='row padding_80' style="padding-bottom:0;">
                    <p style="font-size:20px; text-align:center;margin:0;">满足所有短信发送需求</p>
                    <p style="font-size:16px;text-align:center; margin-bottom:40px;">主动防御机制，接口更安全、使用更放心</p>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center mb_20">
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon7.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">API 接口发送</p>
                        <p class="a2p_div1_p2">短信单发 API / 短信批量发送 API / 短信日志 API</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center mb_20">
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon8.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">WEB 在线发送</p>
                        <p class="a2p_div1_p2 ">地址薄导入发送 / 文件导入发送 / 定时发送任务</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center mb_20">
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon9.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">主动防御机制</p>
                        <p class="a2p_div1_p2 ">主动防御短信端口被恶意利用和攻击保证接口安全IP白名单 / 自定义号码屏蔽 / 手动开启防刷机制</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center mb_20">
                        <p class='a2p_icon11_width '><img src="${libUrl}images/a2p/a2p_icon10.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">配套语音验证码</p>
                        <p class="a2p_div1_p2 ">即使在极端场景下，用户无法接收短息，配合语音验证码能做到不遗漏每一个用户<br /></p>
                    </div>
                </div>
                <div class='row padding_80' style="padding:20px 20px 80px;">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div">
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon11.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">三网合一</p>
                        <p class="a2p_div1_p2">支持移动、联通、电信三网
                        短信端口号三网统一</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div" >
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon12.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1">固签固号</p>
                        <p class="a2p_div1_p2">免费申请固定签名，具备营销类短信发送权限，固定号码更安全</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div" style='padding:0px 20px 20px;'>
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon13.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1 mt_20">支持上行回复</p>
                        <p class="a2p_div1_p2">支持上行接口能力，实时推送用户回复短信</p>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center a2p_div" style='padding:0px 20px 20px;'>
                        <p class='a2p_icon11_width'><img src="${libUrl}images/a2p/a2p_icon14.svg"  class="img-responsive" style='margin:0 auto;'/></p>
                        <p class="a2p_div1_p1 mt_20">短信 SUBHOOK</p>
                        <p class="a2p_div1_p2">实时主动推送短信发送请求，发送请求，网关回执等重要信息</p>
                    </div>
                </div>
            </div>
        </div>
         <div class='sections solutions-bg-g'>
            <div class='container'>
                <div class='row mail_content2 padding_80' style="padding:80px 40px 40px;">
                    <p class="mail_p1">易于集成</p> 
                    <p class="mail_p2">简单即是强大 - SUBMAIL API 遵循的唯一法则, 它让 API 集成变得更简单、更自由。</p>
                    <p>除此之外，SUBMAIL 还提供如 PHP、JAVA、C#、RUBY、PYTHON、GO 等多种语言的 SDK 供开发者使用，仅需简单几行代码即可创建 API 请求。</p>
                    <p>SUBHOOK 无疑是你最直接、最便捷的数据反馈助手。简单易用的 SUBHOOK 会在你设置的事件触发后，将消息发送到你指定的回调 URL，通过短信 SUBHOOK 功能，您能够实时接收从网关发回的短信回执数据和短信的发送状态，甚至能实时接收到用户回复的内容。</p>
                    <div class="jc_div" style='margin-top:40px;'>
                        <div class="mail_max_width fl"><a href="/chs/documents/developer/t2f1J2"><img src="${libUrl}images/a2p/a2p_icon18.svg"  class="img-responsive fr" style='margin:0 auto;'/></a></div>
                        <div class="mail_add_icon fl"><img src="${libUrl}images/a2p/add_icon.svg"  class="img-responsive" style='margin:0 auto;'/></div>
                        <div class="mail_max_width fl"><a href="/chs/documents/developer/pJ9e74"><img src="${libUrl}images/a2p/a2p_icon19.svg"  class="img-responsive fl" style='margin:0 auto;'/></a></div>
                    </div>   
                </div>
                <div class='row solutions-row'>
                    <div class="col-sm-12 col-xs-12 " style='height:100%;text-align:left;'>
                        <div class='sections-developer-sdk-top'>
                            <ul style='padding-left:10px;'>
                                <li class='section-developer-sdk-title selected' title='1'>Curl</li>
                                <li class='section-developer-sdk-title ' title='2'>PHP</li>
                                <li class='section-developer-sdk-title' title='3'>Java</li>
                                <li class='section-developer-sdk-title' title='4'>Python</li>
                                <li class='section-developer-sdk-title' title='5'>Ruby</li>
                                <li class='section-developer-sdk-title' title='6'>C#</li>
                                <li class='section-developer-sdk-title' title='7'>Go</li>
                                <li class='section-developer-sdk-title' title='8'>Objective-C</li>
                                <li class='section-developer-sdk-title' title='9'>Swift</li>
                                <li class='section-developer-sdk-title' title='10'>Node.js</li>
                            </ul>
                        </div>
                        <pre class='section-developer-sdk-curl sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;'>
                            curl -d 'appid=your_app_id&to=138xxxxxxxx&project=ThJBE4&signature=your_app_key' \</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;https://api.submail.cn/message/xsend.json</br>
                        </pre>
                        <pre class='section-developer-sdk-php sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            &lt;?php</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;require "path/to/app_config.php";</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;require_once("path/to/SUBMAILAutoload.php");</br></br>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;$submail=new MESSAGEXsend($message_configs);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;$submail->AddTo("138xxxxxxx");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;$submail->SetProject("ThJBE4");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;$submail->AddVar("code", "198276");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;$submail->xsend();
                        </pre>
                        <pre class='section-developer-sdk-java sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            package demo;</br></br>
                            
                            import utils.ConfigLoader;</br>
                            import config.AppConfig;</br>
                            import lib.MESSAGEXsend;</br>
                            
                            &nbsp;&nbsp;public class MessageXSendDemo {</br>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;public static void main(String[] args) {</br>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AppConfig config = ConfigLoader.load(ConfigLoader.ConfigType.Message);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MESSAGEXsend submail = new MESSAGEXsend(config);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;submail.addTo("138xxxxxxxx");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;submail.setProject("kZ9Ky3");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;submail.addVar("code", "198276");</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;submail.xsend();</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;}</br>
                            &nbsp;&nbsp;}
                            
                        </pre>
                        <pre class='section-developer-sdk-c sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            from message_xsend import MESSAGEXsend</br>
                            from app_configs import MESSAGE_CONFIGS</br></br>
                            
                            
                            submail = MESSAGEXsend(MESSAGE_CONFIGS)</br>
                            submail.add_to('18616761881')</br>
                            submail.set_project('kZ9Ky3')</br>
                            submail.add_var('code','198276')</br>
                            print submail.xsend()
                            
                        </pre>
                        <pre class='section-developer-sdk-python sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            require &#39;submail&#39;</br></br>
                            message_config = {}</br>
                            message_config[&quot;appid&quot;] = &quot;your_message_app_id&quot;</br>
                            message_config[&quot;appkey&quot;] = &quot;your_message_app_key&quot;</br>
                            message_config[&quot;signtype&quot;] = &quot;md5&quot; &nbsp;</br>
                            messagexsend = MessageXSend.new(message_config)</br></br>
                            messagexsend.add_to(&quot;138********&quot;)</br>
                            messagexsend.set_project(&quot;kZ9Ky3&quot;) </br>
                            messagexsend.add_var(&quot;code&quot;, &quot;198276&quot;) </br>
                            puts messagexsend.message_xsend()</br>
                            
                        </pre>
                        <pre class='section-developer-sdk-ruby sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            using Submail;</br>
                            
                            namespace SubmailDemo</br>
                            {</br>
                            &nbsp;&nbsp;public MessageXSendDemo()</br>
                            &nbsp;&nbsp;{</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;AppConfigs config = new AppConfigs();</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;MessageXSend message = new MessageXSend(config.MESSAGE_CONFIGS);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;message.AddTo(&quot;138********&quot;);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;message.SetProject(&quot;kZ9Ky3&quot;);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;message.AddVar(&quot;code&quot;, &quot;198276&quot;);</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;message.XSend();</br>
                            &nbsp;&nbsp;}</br>
                            }
                        </pre>
                        <pre class='section-developer-sdk-o sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            package main</br></br>
                            
                            import (</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;"SubmailDemo/submail"</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;"fmt"</br>
                            )</br>
                            
                            func main() {</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;messageconfig := make(map[string]string)</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;messageconfig["appid"] = "your_message_app_id"</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;messageconfig["appkey"] = "your_message_app_key"</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;messageconfig["signtype"] = "md5"</br></br>
                            
                            &nbsp;&nbsp;&nbsp;&nbsp;messagexsend := new(MessageXSend)</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;messagexsend.vars = make(map[string]string)</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;MessageXSendAddTo(messagexsend, "138xxxxxxxx")</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;MessageXSendSetProject(messagexsend, "kZ9Ky3")</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;MessageXSendAddVar(messagexsend, "code", "198276")</br>
                            &nbsp;&nbsp;&nbsp;&nbsp;fmt.Println("MessageXSend ", MessageXSendRun(MessageXSendBuildRequest(messagexsend), messageconfig))</br>
                            }
                        </pre>
                        <pre class='section-developer-sdk-oc sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            #import &quot;MessageXSendDemo.h&quot;</br>
                            @implementation MessageXSendDemo</br></br>
                            
                            + (void)demo {</br>
                            &nbsp; &nbsp; SMMessageXSend * submail = [[SMMessageXSend alloc] init];</br>
                            &nbsp; &nbsp; [submail.aryTo addObject:@&quot;138********&quot;];</br>
                            &nbsp; &nbsp; submail.project = @&quot;kZ9Ky3&quot;;</br>
                            &nbsp; &nbsp; [submail.dictVar setValue:@&quot;198276&quot; forKey:@&quot;code&quot;];</br>
                            &nbsp; &nbsp; [submail xSend:^(BOOL success, id responseObject) {</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; // your code</br>
                            &nbsp; &nbsp; }];</br>
                            }</br>
                            @end
                        </pre>
                        <pre class='section-developer-sdk-s sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            import Foundation</br></br>
                            
                            public class MessageXSendDemo {</br>
                            &nbsp; &nbsp; public class func demo() {</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; var submail = MessageXSend(config: MessageConfig())</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; submail.add_to(&quot;138********&quot;)</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; submail.set_project(&quot;kZ9Ky3&quot;)</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; submail.add_var(&quot;code&quot;, &quot;198276&quot;)</br>
                            &nbsp; &nbsp; &nbsp; &nbsp; submail.xsend()</br>
                            &nbsp; &nbsp; }</br>
                            }
                        </pre>
                        <pre class='section-developer-sdk-node sdk-pre' style='height:376px;white-space:nowrap;overflow-x:auto;display:none;'>
                            var MessageXSend = require(&#39;./messageXSend.js&#39;);<br />
                            var messageXSend = new MessageXSend();<br />
                            <br />
                            messageXSend.add_to(&#39;138xxxxxxx&#39;);<br />
                            messageXSend.set_project(&#39;qagsN&#39;);<br />
                            messageXSend.add_var(&#39;code&#39;,&#39;5322&#39;);<br />
                            messageXSend.xsend();
                        </pre>
                    </div>
                </div>
            </div>
        </div>
        <div class='sections '>
            <div class='container'>
                <div class='row mail_content2 mail_content_flow padding_80' style="padding:80px 40px;">
                    <p class="mail_p1 a2p_p1">接入流程更简单</p> 
                    <div class="overflow_h" style="margin-top:40px;">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center relative flow_div">
                            <div class='flow_num flow_num2'>1</div>
                            <p class="a2p_div1_p1 a2p_p1">注册 SUBMSG 账户</p>
                            <p class="a2p_div1_p2 color_black">前往注册页面，填写邮件地址开始注册账户，收到激活邮件后，点击并登入账户完成配置。</p>
                            <div class="dashed_line dashed_line2"></div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center relative flow_div" >
                            <div class='flow_num flow_num2'>2</div>
                            <p class="a2p_div1_p1 a2p_p1">配置服务协议</p>
                            <p class="a2p_div1_p2 color_black">前往短信 -> 设置 -> 服务协议配置页面，填写您的公司名称并上传营业相关资质扫描件。</p>
                            <div class="dashed_line dashed_line2"></div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center relative flow_div" >
                            <div class='flow_num flow_num2'>3</div>
                            <p class="a2p_div1_p1 a2p_p1">创建短信模板</p>
                            <p class="a2p_div1_p2 color_black">前往短信 -> 新建页面，创建短信模板，并提交审核。短信通过审核后即可开始在线发送。</p>
                            <div class="dashed_line dashed_line2"></div>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 text-center relative flow_div">
                            <div class='flow_num flow_num2'>4</div>
                            <p class="a2p_div1_p1 a2p_p1">在线发送  / 接口调用</p>
                            <p class="a2p_div1_p2 color_black">前往应用集成 -> 应用 -> 短信 页面创建并获取 APPID和APPKEY，即可开始接口调用。</p>
                        </div>
                    </div>
                    
                </div>
              
            </div>
        </div>
        
        <div class='sections color_g last_sections'>
            <a class="btn try_btn_2" href="/member/index.sm">立即使用</a>
            <c:if test="${not empty siteCall}"><p>业务咨询请致电：${siteCall}</p></c:if>
        </div>
        

<%@ include file="/member/common/bottom.jsp"%>
    </body>
</html>