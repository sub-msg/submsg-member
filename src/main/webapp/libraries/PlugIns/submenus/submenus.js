var base_path2 = $("script").last().attr("src");
    base_path2=base_path2.replace(/submenus.js/g,'');
    $(function(){
      $('head').append('<link rel="stylesheet" href="'+base_path2+'submenus.css'+'" type="text/css">')
    });


jQuery.fn.submenu = function(C) {
    var C = jQuery.extend({
                          t:'',
                          p:'',
                          a:'',
                          ap:'',
                          type:''
                          },
                          C);
    return this.each(function() {
                     var target=$(this);
                     var target_top,target_left;
                     var tempHtml='<div class="submenus_blank"></div>';
                     
                     var target_w=target.parent('.submenus_container').width(),target_h=target.parent('.submenus_container').height(),target_l=target.offset().left,target_t=target.offset().top;

                     target_left=target_l;
                     
                     tempHtml+='<div class="submenus_menu_container">';
                     
                     tempHtml+='<div class="aro '+C.a+' '+C.ap+'"></div>'
                     if(C.t=='' || C.t=='menu'){
                        tempHtml+='<ul>';
                     }else if(C.t=='container'){
                        tempHtml+='<div>';
                     }
                     tempHtml+=target.parent('.submenus_container').find('.submenus_remenu').html();
                     if(C.t=='' || C.t=='menu'){
                     tempHtml+='</ul></div>';
                     }else if(C.t=='container'){
                     tempHtml+='</div></div>';
                     }
                     
                     
                     $('body').append(tempHtml);
                     
                     var submenus_menu_container_w=$('.submenus_menu_container').width()+2;
                     var submenus_menu_container_h=$('.submenus_menu_container').height()+2;
                     var b_menu_left=$('.submenus_menu_container').width()-5;
                     
                     if(C.g=='center'){
                        if(submenus_menu_container_w > target_w){
                            target_left=target_l-((submenus_menu_container_w-target_w)/2);
                        }else{
                            target_left=target_l+((target_w-submenus_menu_container_w)/2)-5;
                        }
                     }else if(C.g=='right'){
                        target_left=(target_l+target_w)-submenus_menu_container_w;
                        b_menu_left=submenus_menu_container_w-25;
                        b_menu_left='-'+b_menu_left;
                     }
                     
                     if(C.p=='' || C.p=='bottom'){
                        target_top=target_t+target_h+8;
                     }else if(C.p=='top'){
                        target_top=target_t-submenus_menu_container_h-8;
                     }else if(C.p=='left'){
                        target_left=(target_l+target_w);
                        target_top=target_t-target_h;
                     }
                     if(C.type!=''){

                      $('.submenus_menu_container').addClass(C.type);

                     }
                     
                     
                     $('.submenus_menu_container').css('left',target_left+'px').css('top',target_top+'px');
                     
                     $('.submenus_blank').live('click',function(){exit();});
                     $('.submenus_menu_container').find('a').live('click',function(){
                                                                  exit();
                                                                  });
                     $('.submenus_menu_b_container').css('left',b_menu_left+'px')
                     function exit(){
                        $('.submenus_blank').remove();
                        $('.submenus_menu_container').remove();
                        target.removeClass('active');
                     }
                     });
};
