jQuery.fn.menuHold = function(C) {
    var C = jQuery.extend({
                          t:''
                          
                          },
                          C);
    return this.each(function() {
                     var click_flag=true;
                     var click_to;
                     var move_to;
                     var item=$(this);
                     jQuery(this).show().mouseenter(function(){
                                                    clearTimeout(click_to);
                                                    clearTimeout(move_to);
                                                    click_to = setTimeout(function(){
                                                                          click_flag = true;
                                                                          }, 100);
                                                    }).mouseleave(function(){
                                                                  clearTimeout(click_to);
                                                                  clearTimeout(move_to);
                                                                  click_to = setTimeout(function(){
                                                                                        click_flag = false;
                                                                                        }, 100);
                                                                  move_to= setTimeout(exit,500);
                                                                  });
                     
                     
                     $(document).click(function() {
                                       if (!click_flag) {
                                       exit();
                                       }
                                       });
                     function exit(){
                     click_flag=true;
                     item.hide();
                     }
                     });
};

