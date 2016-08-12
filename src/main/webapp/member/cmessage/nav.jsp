<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="header">
		<div class="header_icon">
			<p>
				<a class="message_logo" href="/member/index.sm">SubMsg System</a>
			</p>
			<div class="topMenuContainer">
				<ul class="appmenu">
					<li class="create"><a href="/member/appList.sm">应用管理</a></li>
					<li class="create"><a href="/member/enterCreateTemp.sm">新建模板</a></li>
					<li class="project"><a href="/member/enterTempList.sm">模板列表</a></li>
					<li><a href="/member/enterLog.sm">计费日志</a></li>
				</ul>
			</div>
			<div class="headerBg"></div>
		</div>
		<div class="accounts">
			<ul>
				<li class="icon_account submenus_container"><a
					href="javascript:void(0)" id="accountbtn"> <img
						src="${libUrl}images/icon/icon64x64.jpg"
						width="32" height="32" /> <span>孟 潮</span>
				</a>
					<div class="submenus_remenu">
						<div class="account_overview">
							<ul>
								<!-- <li><a href="/chs/account/settings"><span>账户设置</span></a></li> -->
								<li><a href="/member/logout.sm" class="logout">登出</a></li>
							</ul>
						</div>
					</div></li>
				<li class="lr"></li>
				<li><a href="/mallIndex.sm">商店</a></li>
				<li class="lr"></li>
				<li><a href="/index.sm">首页</a></li>
			</ul>
		</div>
	</div>