/*!
 *
 * Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
 * wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt
 *
 * Version: v3.0.7-release Build: 2013-05-16 04:34 AM
 *
 */
(function(b){var a;b.fn.datepicker=function(){return b(this).each(function(){var m,q,l=pe.fn.calendar,f,t=new Date(),r="YYYY-MM-DD",k,h,s,p,i,g,u=t.getMonth(),c,o,n,j=t.getFullYear(),e=b(this),d=e.parent();if(e.hasClass("picker-field")){return}e.addClass("picker-field");f=function(v){var w=b('label[for="'+v+'"]').text(),x=b('<a id="'+v+'-picker-toggle" class="picker-toggle-hidden" href="javascript:;"><img class="image-actual" src="'+pe.add.liblocation+'images/datepicker/calendar-month.png" alt="'+pe.dic.get("%datepicker-show")+w+'"/></a>');x.on("click vclick touchstart",function(){n(v);return false});e.after(x);a.slideUp(0)};m=function(z,B,A,E,y,w,D){var C=b("#"+z),x,v;if(C.attr("min")!==undefined){y=C.attr("min")}else{y="1800-01-01"}if(C.attr("max")!==undefined){w=C.attr("max")}else{w="2100-01-01"}y=pe.date.from_iso_format(y);w=pe.date.from_iso_format(w);x=(B===y.getFullYear()&&A===y.getMonth());v=(B===w.getFullYear()&&A===w.getMonth());E.each(function(F,I){if((!x&&!v)||(x===true&&F>=y.getDate())||(v===true&&F<=w.getDate())){var J=b(I).children("div"),H=b('<a href="javascript:;"></a>'),G=J.parent();G.empty();H.append(J.html());H.appendTo(G);H.on("keydown",function(M){var K=b(this).closest(".cal-container"),L=K.attr("id");if(!(M.ctrlKey||M.altKey||M.metaKey)){switch(M.keyCode){case 27:n(z);return false;case 32:b(this).trigger("click");return false;case 33:if(M.shiftKey){c(L,B,A,y,w,new Date(B-1,A,F+1))}else{c(L,B,A,y,w,new Date(B,A-1,F+1))}return false;case 34:if(M.shiftKey){c(L,B,A,y,w,new Date(B+1,A,F+1))}else{c(L,B,A,y,w,new Date(B,A+1,F+1))}return false;case 35:pe.focus(b(this).closest("ol").children("li").children("a").last());return false;case 36:pe.focus(b(this).closest("ol").children("li").children("a").first());return false;case 37:c(L,B,A,y,w,new Date(B,A,F));return false;case 38:c(L,B,A,y,w,new Date(B,A,F-6));return false;case 39:c(L,B,A,y,w,new Date(B,A,F+2));return false;case 40:c(L,B,A,y,w,new Date(B,A,F+8));return false}}else{if(M.ctrlKey&&!(M.altKey||M.metaKey)){switch(M.keyCode){case 35:c(L,B,A,y,w,new Date(B,11,31));return false;case 36:c(L,B,A,y,w,new Date(B,0,1));return false}}}});H.on("click vclick touchstart",{fieldid:z,year:B,month:A,day:F+1,days:E,format:D},function(K){q(K.data.fieldid,K.data.year,K.data.month+1,K.data.day,K.data.format);o(K.data.fieldid,K.data.year,K.data.month,K.data.days,K.data.format);n(K.data.fieldid);return false})}})};c=function(v,x,z,y,A,w){if(w.getTime()<y.getTime()){w=y;w.setDate(w.getDate()+1)}else{if(w.getTime()>A.getTime()){w=A;w.setDate(w.getDate()+1)}}if(w.getMonth()!==z||w.getFullYear()!==x){l.create(v,w.getFullYear(),w.getMonth(),true,y,A)}pe.focus(a.find(".cal-day-list").children("li:eq("+(w.getDate()-1)+")").children("a"))};o=function(x,B,z,E,D){var A,v,w,C;b(E).removeClass("datepicker-selected");b(E).find(".datepicker-selected-text").detach();D=D.replace("DD","(?<a> [0-9]{2})");D=D.replace("D","(?<a> [0-9] )");D=D.replace("MM","(?<b> [0-9]{2})");D=D.replace("M","(?<b> [0-9])");D=D.replace("YYYY","(?<c> [0-9]{4})");D=D.replace("YY","(?<c /> [0-9]{2})");A="^"+D+"$";v=b("#"+x).val();C=new XRegExp(A,"x");try{if(v!==""){w=b.parseJSON(v.replace(C,'{"year":"$1", "month":"$2", "day":"$3"}'));if(parseInt(w.year,10)===B&&parseInt(w.month,10)===z+1){b(E[w.day-1]).addClass("datepicker-selected");b(E[w.day-1]).children("a").append('<span class="wb-invisible datepicker-selected-text"> ['+pe.dic.get("%datepicker-selected")+"]</span>")}}}catch(y){}};q=function(v,x,z,w,y){a.parent().find("#"+v).val(k(x,z,w,y))};n=function(w){var y=b("#"+w),z=y.parent(),v=z.find("#"+w+"-picker-toggle"),x=pe.date.from_iso_format(y.val());v.toggleClass("picker-toggle-hidden picker-toggle-visible");if(y.attr("min")!==undefined){g=y.attr("min")}else{g="1800-01-01"}if(y.attr("max")!==undefined){i=y.attr("max")}else{i="2100-01-01"}a.attr({"aria-labelledby":w+"-picker-toggle","aria-controls":w});l.create("wb-picker",j,u,true,g,i);y.after(a);a.unbind("focusout.calendar");a.unbind("focusin.calendar");if(v.hasClass("picker-toggle-visible")){s(w);a.find("a").attr("tabindex",0);a.slideDown("fast",function(){p(b(this))});a.attr("aria-hidden","false");v.children("a").children("span").text(pe.dic.get("%datepicker-hide"));if(x!==null){x.setDate(x.getDate()+1);c("wb-picker",j,u,pe.date.from_iso_format(g),pe.date.from_iso_format(i),x)}else{if(a.find(".cal-prevmonth a").length!==0){pe.focus(a.find(".cal-prevmonth a"))}else{if(a.find(".cal-nextmonth a").length!==0){pe.focus(a.find(".cal-nextmonth a"))}else{pe.focus(a.find(".cal-goto a"))}}}}else{h(b("#"+w));pe.focus(z.find("#"+w))}};s=function(v){b(".picker-field").each(function(){if(b(this).attr("id")!==v){h(b(this))}})};h=function(y){var w,v,x;w=y.attr("id");v=b("#"+w+"-picker-toggle");x=b('label[for="'+w+'"]').text();a.find("a").attr("tabindex","-1");a.slideUp("fast",function(){p(b(this))});a.attr("aria-hidden","true");l.hideGoToForm("wb-picker");v.children("a").children("span").text(pe.dic.get("%datepicker-show")+x);v.removeClass("picker-toggle-visible");v.addClass("picker-toggle-hidden")};p=function(v){var w=b("#wb-main-in"),x;if(pe.ie===7){x=v.height()+v.offset().top-w.offset().top+50;if(w.height()>=x){w.css("min-height","")}else{if(w.height()<x){w.css("min-height",x)}}}else{if(pe.ie>0&&pe.ie<7){x=v.height()+v.offset().top-w.offset().top+50;if(w.height()>=x){w.css("height","")}else{if(w.height()<x){w.css("height",x)}}}}};k=function(x,z,w,y){var v=y;v=v.replace("DD",pe.string.pad(w,2));v=v.replace("D",w);v=v.replace("MM",pe.string.pad(z,2));v=v.replace("M",z);v=v.replace("YYYY",x);v=v.replace("YY",x.toString().substr(2,2));return v};if(a===undefined){a=b('<div id="wb-picker" class="picker-overlay" role="dialog" aria-hidden="true"></div>');a.on("keyup",function(v){if(v.keyCode===27){s();pe.focus(a.parent().find("#"+a.attr("aria-controls")))}});a.on("calendarDisplayed",function(z,w,y,A){var x=b(this),v=x.attr("aria-controls");m(v,w,y,A,g,i,r);o(v,w,y,A,r);x.on("click vclick touchstart focusin",function(B){if(B.stopPropagation){B.stopImmediatePropagation()}else{B.cancelBubble=true}})});pe.document.on("click vclick touchstart focusin",function(){if(a.attr("aria-hidden")==="false"){h(a.parent().find("#"+a.attr("aria-controls")));return false}});b('<a class="picker-close" role="button" href="javascript:;"><img src="'+pe.add.liblocation+'images/datepicker/cross-button.png" alt="'+pe.dic.get("%datepicker-hide")+'" class="image-actual" /></a>').appendTo(a).click(function(){n(a.attr("aria-controls"))});a.find("a").attr("tabindex","-1");pe.bodydiv.after(a)}if(e.attr("id")!==undefined){f(e.attr("id"))}})};b('input[type="date"]').datepicker()}(jQuery));