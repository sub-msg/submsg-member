function matchMob(a){var b=/1[0-9]{10}/;return 0==b.test(a)?!1:!0}var libraries="http://libraries.submail.cn/",sublibraries="http://libraries.submail.cn/",images_libraries="http://images.submail.cn/",spinnerWiteContainer='<div class="spinnerContainer"></div><div class="spinnerAnimate"><img src="'+sublibraries+'/images/subloading_0x1e_26px.gif" /></div>',setupSpinner=function(a){a.css("position","relative"),a.append(globalSpinner)},globalSpinner='<div class="emptyContainer"></div><div class="eventLoader"><img src="'+sublibraries+'images/spinner_eee.gif" /><p>正在加载</p></div>',removeSpinner=function(){$(".eventLoader").remove(),$(".emptyContainer").remove()};!function(a,b,c,d,e,f,g){a["GoogleAnalyticsObject"]=e,a[e]=a[e]||function(){(a[e].q=a[e].q||[]).push(arguments)},a[e].l=1*new Date,f=b.createElement(c),g=b.getElementsByTagName(c)[0],f.async=1,f.src=d,g.parentNode.insertBefore(f,g)}(window,document,"script","//www.google-analytics.com/analytics.js","ga"),ga("create","UA-16294152-5","auto"),ga("require","displayfeatures"),ga("send","pageview");