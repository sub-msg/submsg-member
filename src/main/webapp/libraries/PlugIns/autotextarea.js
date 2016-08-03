 (function($){
  $.fn.adaptiveTextarea = function(options){
  $.fn.adaptiveTextarea.defaults = {
  "maxH":99999,
  "minH":0
  };
  var opts = $.extend({},$.fn.adaptiveTextarea.defaults,options);
  return this.each(function(){
                   var $this = $(this);
                   var defaultH = opts.minH || $this.height();
                   $this.css({
                             "overflow":"auto",
                             "resize":"none",
                             "height":defaultH + "px"
                             });
                   $this.off("propertychange input").on("propertychange input",function(){
                                                        this.style.height = defaultH + "px";
                                                        if(opts.maxH >= opts.minH){
                                                        this.style.height = Math.min(this.scrollHeight,opts.maxH) + "px";
                                                        }
                                                        });
                   });
  }
  })(jQuery);
