// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
		
	$.cleditor.defaultOptions.width = 780;
	$.cleditor.defaultOptions.height = 500;
    $("textarea").cleditor();
	$('img').poshytip({
		className: 'tip-skyblue',
			bgImageFrameSize: 9,
			offsetX: 0,
			offsetY: 20		
	});
	
	$(".mm").editable(	"home/update_mp", {
	         type      : 'text',
	       	submitdata: { _method: "get" },
		
	         indicator : "saving...",
	         tooltip   : 'click to edit...'
			
	 });
	$(".bbc").editable(	"home/update_bbc", {
	         type      : 'text',
	       	submitdata: { _method: "get" },

	         indicator : "saving...",
	         tooltip   : 'click to edit...'

	 });
	$(".tel").editable(	"me/update_tel", {
	         type      : 'text',
	       	submitdata: { _method: "get" },

	         indicator : "saving...",
	         tooltip   : 'click to edit...'

	 });
	$(".info").editable("me/update_info", {
	         type      : 'textarea',
	cols:50,rows:4,		submit : "OK",
			cancel : "Cancel",
	       	submitdata: { _method: "get" },

	         indicator : "saving...",
	         tooltip   : 'click to edit...'

	 });
	$("a.tab").click(function () {
	
	
 // switch all tabs off
	$(".active").removeClass("active");
	
	// switch this tab on
	 $(this).addClass("active");
	
	 // slide all content up
	$(".content").slideUp();
	
 // slide this content up
	 var content_show = $(this).attr("title");
	 $("#"+content_show).slideDown();
	
	});
	
	$('#loopedSlider').loopedSlider({
		addPagination: true,
						slidespeed: 500,
						autoHeight: 500
		
	});
	
	
	$('#coin-slider').coinslider({
		width:640,height:428,delay:5000,hoverPause:true,links:false
	});
	

})
