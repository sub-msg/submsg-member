function matchMob(a) {
    var b = /1[0-9]{10}/;
    return 0 == b.test(a) ? !1 : !0
}
var libraries = "/libraries/",
sublibraries = "/libraries/",
images_libraries = "/images/",
spinnerWiteContainer = '<div class="spinnerContainer"></div><div class="spinnerAnimate"><img src="' + sublibraries + '/images/subloading_0x1e_26px.gif" /></div>',
setupSpinner = function(a) {
    a.css("position", "relative"),
    a.append(globalSpinner)
},
globalSpinner = '<div class="emptyContainer"></div><div class="eventLoader"><img src="' + sublibraries + 'images/spinner_eee.gif" /><p>正在加载</p></div>',
removeSpinner = function() {
    $(".eventLoader").remove(),
    $(".emptyContainer").remove()
};
