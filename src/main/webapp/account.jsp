<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:if test="${code==1}"><script type="text/javascript">alert("该账号已被激活。您可以直接登录该账户。",function(){history.go(-1);});</script></c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh-CN" lang="zh-CN">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
            <meta name="Author" content="登录 － 我的 SUBMSG - ${siteAuthor}" />
            <meta name="description" content="${siteDesc}" />
            <meta name="keywords" content="${siteKeyWords}" />
            <title>我的 SUBMSG-${siteTitle}</title>
            <link rel="stylesheet" href="${libUrl}PlugIns/dist/css/bootstrap.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/global.base.css"  type="text/css" />
            <link rel="stylesheet" href="${libUrl}zh_cn/styleSheets/login.css"  type="text/css" />
            <script src="${libUrl}PlugIns/jquery.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}/PlugIns/jquery-ui-1.10.4.custom.min.js" type="text/javascript" charset="utf-8" ></script>
            <script src="${libUrl}PlugIns/address.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}PlugIns/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.base.js" type="text/javascript" charset="utf-8"></script>
            <script src="${libUrl}zh_cn/scripts/global.login.js" type="text/javascript" charset="utf-8"></script>
             <script src="${libUrl}PlugIns/base64.js" type="text/javascript" charset="utf-8"></script>
            <%@ include file="/member/common/com_head_element.jsp"%>
            </head>
    <body>
        <%@ include file="/member/common/nav.jsp"%>
        <div class="container signin">
            <div class="row text-center">
                <h1 class="login-title" id="login-title" style="display:none;">登录</h1>
                <h1 class="login-title" id="login-signup" style="display:none;">注册</h1>
                <h1 class="login-title" id="login-forgot" style="display:none;">重置密码</h1>
                <h1 class="login-title" id="login-active" style="display:none;">激活账户</h1>
                <h1 class="login-title" id="login-change" style="display:none;">更改邮箱</h1>
                <h1 class="login-title" id="login-actived" style="display:none;">激活成功</h1>
                <h1 class="login-title" id="login-activeFailed" style="display:none;">激活失败</h1>
                <h1 class="login-title" id="login-activeTimesup" style="display:none;">激活失败</h1>
                <h1 class="login-title" id="login-unchange" style="display:none;">更改邮箱失败</h1>
                <h1 class="login-title" id="login-locked" style="display:none;">登录失败</h1>
                <h1 class="login-title" id="login-reset" style="display:none;">重置密码</h1>
                <h1 class="login-title" id="login-resetimesup" style="display:none;">重置失败</h1>
                <h1 class="login-title" id="login-resetsuccess" style="display:none;">重置成功</h1>
            </div>
            <div class="row">
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="login" style="display:none;">
                    <form class="form-horizontal" role="form" id="login-form">
                    <div class="row">
                        <div class="login-para">
                            <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" /></div>
                            <div class="col-xs-10 col-sm-11 login-input"><input type="email" class="form-control" name="email" placeholder="邮箱" /></div>
                         </div>
                    </div>
                  
                    <div class="row">
                        <div class="login-para">
                            <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-password.png" /></div>
                            <div class="col-xs-10 col-sm-11 login-input"><input type="password" class="form-control" name="password" placeholder="密码" /></div>
                        </div>
                    </div>
                    <div class="row visible-xs">
                        <div class="col-xs-12 text-right">
                            <a href="#/forgot">忘记密码？</a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="login-btn login-signin">
                            <div class="col-sm-3 hidden-xs"><p class="options"><a href="#/forgot">忘记密码？</a></p></div>
                            <div class="col-sm-6 hidden-xs"><p class="options">没有账户？  <a href="#/signup" >注册 SUBMSG 账户</a></p></div>
                            <div class="col-sm-3"><input type="submit" class="btn btn-primary btn-block btn-lg" value="登录"/></div>
                        </div>
                    </div>
                    <div class="row visible-xs">
                        <div class="col-xs-12">
                            <p class="options text-center">没有账户？ <a href="#/signup">免费注册 SUBMSG 账户</a></p>
                        </div>
                    </div>
                    </form>
                </div>
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="signup" style="display:none;">
                    <form class="form-horizontal" role="form" id="signup-form">
                    <div class="row">
                        <div class="login-h-para">
                            <div class="col-xs-7 col-sm-7  col-md-7 col-lg-7" style="margin-left:-15px; margin-right:0px;padding-right: 0px;">
                                <div class="login-para">
                                <div class="col-xs-3 col-sm-2 login-icon text-center"><img src="${libUrl}images/login-user.png" /></div>
                                <div class="col-xs-9 col-sm-10 login-input"><input type="text" name="firstname" class="form-control" style="padding-left: 8px;" placeholder="姓氏" /></div>
                                </div>
                            </div>
                            <div class="col-xs-5 col-sm-5  col-md-5 col-lg-5" style="margin-right:0px; margin-left:15px;padding:0px; padding-right:-15px;">
                                <div class="login-para">
                                    <input type="text" class="form-control" name="lastname" placeholder="名字"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-para">
                            <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" /></div>
                            <div class="col-xs-10 col-sm-11 login-input"><input type="email" class="form-control" name="email" placeholder="邮箱"/></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-para">
                            <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-password.png" /></div>
                            <div class="col-xs-10 col-sm-11 login-input"><input type="password" class="form-control" name="password" placeholder="密码" /></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin">
                            <div class="col-sm-9 hidden-xs"><p class="options">已有账户？  <a href="#/login">立即登录页面</a></p></div>
                            <div class="col-sm-3"><input type="submit" class="btn btn-success btn-block btn-lg" value="注册账户"/></div>
                        </div>
                    </div>
                    <div class="row visible-xs">
                        <div class="col-xs-12">
                            <p class="options text-center">已有账户？  <a href="#/login">立即登录页面</a></p>
                        </div>
                    </div>
                    
                    </form>
                </div>
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="forgot" style="display:none;">
                    <form class="form-horizontal" role="form" id="forgot-form">
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" style="margin-top:18px;"/></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="email" name="email" class="form-control" placeholder="邮箱" /></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="login-btn login-signin">
                                <div class="col-sm-3 hidden-xs"><p class="options"><a href="#/login">跳转至登录</a></p></div>
                                <div class="col-sm-6 hidden-xs"><p class="options">没有账户？  <a href="#/signup">注册 SUBMSG 账户</a></p></div>
                                <div class="col-sm-3"><input type="submit" class="btn btn-danger btn-block btn-lg " value="重置密码"/></div>
                            </div>
                        </div>
                        <div class="row visible-xs">
                            <div class="col-xs-5">
                                <p class="options text-left"><a href="#/login">跳转至登录</a></p>
                            </div>
                            <div class="col-xs-7">
                                <p class="options text-right"> <a href="#/signup">注册 SUBMSG 账户</a></p>
                            </div>
                        </div>
                    </form>
                </div>
                
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="active" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12" style="margin-top:-20px;">
                        <h1>感谢您创建 SUBMSG 账户</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12" style="margin-top:20px;">
                         <p>SUBMSG 已将激活邮件发送至您的邮箱：<a id="activeEmail">${email}</a> ,在进行账户配置之前，你需要从邮箱中激活此账户。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                        <p>要激活您的账户，请在您的激活邮件中点击立即激活按钮。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-5 col-sm-4 col-md-3 col-lg-3"><a href="#/change" class="btn btn-danger btn-block btn-lg" >更改邮箱</a></div>
                            <div class="col-xs-5 col-xs-offset-2 col-sm-4 col-sm-offset-4 col-md-3 col-md-offset-6 col-lg-3 col-lg-offset-6"><input type="button" name="resend" class="btn btn-block btn-lg btn-primary" value="重新发送"/></div>
                        </div>
                    </div>
                </div>
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="change" style="display:none;">
                    <form class="form-horizontal" role="form" id="change-form">
                        
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" style="margin-top:18px;"/></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="email" name="email" class="form-control" placeholder="邮箱" /></div>
                            </div>
                        </div>
                        
                        
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-password.png" style="margin-top:18px;"/></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="password" name="password" class="form-control" placeholder="密码" /></div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12"><hr /></div>
                        </div>
                        
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" style="margin-top:18px;"/></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="email" name="change" class="form-control" placeholder="新邮箱" /></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <p class="options" style="margin-left:20px;margin-right:20px; margin-top:20px; line-height:normal; height:auto;">成功更改后，新的激活邮件将发送至此邮箱，并且此邮箱将作为您的 SUBMSG 账户名</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="login-btn login-signin">
                                <div class="col-sm-8 col-lg-9 hidden-xs"><p class="options"><a href="#/active">取消更改</a></p></div>
                                <div class="col-sm-4  col-lg-3"><input type="submit" class="btn btn-danger btn-block btn-lg " value="更改邮箱"/></div>
                            </div>
                        </div>
                    </form>
                </div>
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="actived" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:-20px;">
                            <h1>您的账户已激活</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:20px;">
                            <p>感谢您创建 SUBMSG 账户，你的账户已成功激活。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <p>请点击立即登录按钮登入您的账户，立即开始使用强大的 SUBMSG！</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4"><a href="#/login" class="btn btn-lg btn-block btn-primary">立即登录</a></div>
                        </div>
                    </div>
                </div>
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="activeFailed" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12" style="margin-top:-20px;">
                            <h1>激活代码无效</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12" style="margin-top:20px;">
                            <p>此激活代码无效或因一些其他因素丢失激活链接。要尝试激活你的账户，你可以在成功创建 SUBMSG 账户后，登入此账户，在激活账户账户页面点击重新发送按钮，对此账户进行激活。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-5 col-sm-4 col-md-3 col-lg-3"><a href="#/signup" class="btn btn-success btn-block btn-lg" >注册账户</a></div>
                            <div class="col-xs-5 col-xs-offset-2 col-sm-4 col-sm-offset-4 col-md-3 col-md-offset-6 col-lg-3 col-lg-offset-6"><a href="#/login" class="btn btn-primary btn-block btn-lg" >登录</a></div>
                        </div>
                    </div>
                </div>
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="activeTimesup" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:-20px;">
                            <h1>激活邮件已失效</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:20px;">
                            <p>要继续激活此账户，请点击右下方的重新发送按钮，并在30分钟内从你的激活邮件中点击激活账户按钮。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2"><input type="botton" name="resend" class="btn btn-block btn-lg btn-primary" value="重新发送激活邮件"/></div>
                        </div>
                    </div>
                </div>
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="unchange" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:-20px;">
                            <h1>无法更改此账户</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:20px;">
                            <p>此账户已被激活，您无法更改此账户。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 text-center" style="margin-top:20px;">
                            <p>如需更改账户名，请登入此账户，进入个人设置 -> 账户和密码 页面修改此账户</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2"><a href="#/login" class="btn btn-primary btn-block btn-lg" >登录</a></div>
                        </div>
                    </div>
                </div>


                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="locked" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:-20px;">
                            <h1>尝试登录的账户出现异常</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:20px;">
                            <p>此账户已被 SUBMSG  Security 程序标记为异常，账户被锁定。在账户解锁前，您将不能登入此账户 ，给您带来的不便深表遗憾。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:20px;">
                            <p>请尝试致电 SUBMSG 客服或发送邮件至 <a href='mailto:emgc@submail.cn'>emgc@submsg.cn</a> 描述你遇到的问题</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-4 col-sm-offset-8 col-md-4 col-md-offset-8 col-lg-4 col-lg-offset-8"><a href="#/login" class="btn btn-primary btn-block btn-lg" >重试登录</a></div>
                        </div>
                    </div>
                </div>
                
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="reset" style="display:none;">
                    <form class="form-horizontal" role="form" id="reset-form">
                        <div class="row">
                            <div class="col-xs-12 " >
                                <p>您的密码重置邮件已发送至 <a id="password-reset"></a>. 请在收到的密码重置邮件中将安全代码（Security Code）的蓝色部分复制到此页面的安全代码框中。</p>
                                <p style="color:#999;">请注意：该安全代码只在您收到此封电邮的 30 分钟以内有效</p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12"><hr /></div>
                        </div>
                        
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-security.png"/></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="text" name="securityCode" class="form-control" placeholder="安全代码" /></div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-xs-12"><hr /></div>
                        </div>
                        <div class="row">
                            <div class="login-para" style="background-color:#e5ffeb;">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-email.png" /></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="email" name="email" class="form-control" placeholder="邮箱" disabled='true'/></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-password.png" /></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="password" name="password" id='password' class="form-control" placeholder="新密码" /></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="login-para">
                                <div class="col-xs-2 col-sm-1 login-icon text-center"><img src="${libUrl}images/login-password.png" /></div>
                                <div class="col-xs-10 col-sm-11 login-input"><input type="password" name="repassword"  class="form-control" placeholder="重复新密码" /></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="login-btn login-signin">
                                <div class="col-sm-8 col-lg-9 hidden-xs"><p class="options"><a href="#/login">跳转至登录</a></p></div>
                                <div class="col-sm-4  col-lg-3"><input type="submit" class="btn btn-danger btn-block btn-lg " value="更改密码"/></div>
                            </div>
                        </div>
                    </form>
                </div>
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="resetimesup" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:-20px;">
                            <h1>安全代码已失效</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:20px;">
                            <p>您输入的安全代码已失效或已超时。要重新获取此安全代码，请点击重设密码按钮，重新获取密码重设邮件，并确保在收到密码重设邮件后的 30 分钟内完成密码重设。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-4 col-sm-offset-8 col-md-4 col-md-offset-8 col-lg-4 col-lg-offset-8"><a href="#/forgot" class="btn btn-danger btn-block btn-lg" >重设密码</a></div>
                        </div>
                    </div>
                </div>
                
                
                <div class="login-form col-lg-6 col-md-8 col-sm-10 col-xs-10 col-lg-offset-3 col-md-offset-2 col-sm-offset-1 col-xs-offset-1" id="resetsuccess" style="display:none;padding:40px;">
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:-20px;">
                            <h1>你的密码已重置</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12 " style="margin-top:20px;">
                            <p>您的账户密码已重置。</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="login-btn login-signin" style="margin-top:50px;">
                            <div class="col-xs-12 col-sm-4 col-sm-offset-8 col-md-4 col-md-offset-8 col-lg-4 col-lg-offset-8"><a href="#/login" class="btn btn-primary btn-block btn-lg" >登录</a></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="clearfix"></div>
         <div class="login-bg"></div>
    </body>
</html>