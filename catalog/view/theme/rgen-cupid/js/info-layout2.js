
if($('#content-body').hasClass('pro-layout3')){
	$(".image-additional").scrollable({});
}else{
	$(".image-additional").scrollable({vertical:true});
}

$('#tabs a').tabs();

$('.buying-info .review a, .info-links a').bind('click',function(event){
	$('html, body').animate({scrollTop: $('.info-layout2').offset().top}, 500);
	
	var obj = $(this).attr('rev');
	$('#tabs a').removeClass('selected');
	$('.info-layout2 .tab-content').hide();
	
	$('#tabs a[href=' + obj +']').addClass('selected');
	
	$(obj).fadeIn();
	
	$(obj + ' .scrollPane').wrapInner('<div>');
	if($(obj + ' .scrollPane').hasClass('jspScrollable') == false && $(obj + ' .scrollPane > div').height() > 450){
		$(obj).find('.scrollPane').jScrollPane({
			verticalGutter: -15,
			verticalDragMinHeight: 41,
			verticalDragMaxHeight: 41
		});
		$(obj + ' .scrollPane').stop().animate({ paddingRight:35 }, 50);
		$(obj + ' .jspContainer').stop().animate({ paddingRight:35 }, 50);
	}
});


$('#tab-description .scrollPane').jScrollPane({
	verticalGutter: 0,
	verticalDragMinHeight: 41,
	verticalDragMaxHeight: 41
});

$('#tab-description .scrollPane').stop().animate({ paddingRight:35 }, 50);
$('#tab-description .jspContainer').stop().animate({ paddingRight:35 }, 50);
$('#tabs a').click(function(){
	var obj = $(this).attr('href');
	$(obj + ' .scrollPane').wrapInner('<div>');
	if($(obj + ' .scrollPane').hasClass('jspScrollable') == false && $(obj + ' .scrollPane > div').height() > 450){
		$(obj).find('.scrollPane').jScrollPane({
			verticalGutter: -15,
			verticalDragMinHeight: 41,
			verticalDragMaxHeight: 41
		});
		$(obj + ' .scrollPane').stop().animate({ paddingRight:35 }, 50);
		$(obj + ' .jspContainer').stop().animate({ paddingRight:35 }, 50);
		
	}
});

