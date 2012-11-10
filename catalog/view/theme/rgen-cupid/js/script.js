/* Author:	R.Genesis */
$(document).ready(function() {
	$('#notification').prependTo('body');
/* ==============
    MENU
   ============== */
	$('nav > ul > li > div').each(function(index, element) {
		
		$(element).children('ul').wrap("<td />");
		$(element).wrapInner("<tr />");
		$(element).wrapInner("<table />");
		
		if ($.browser.msie && ($.browser.version == 7 || $.browser.version == 6)) {
			
		}
	});
	
	$('nav ul > li > a + div').each(function(index, element) {
		
		var menu = $('nav').offset();
		var dropdown = $(this).parent().offset();
		
		i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('nav').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});
	
	// IE6 & IE7 Fixes
	if ($.browser.msie) {
		if ($.browser.version <= 6) {
			$('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');
			
			$('#column-right + #content').css('margin-right', '195px');
		
			$('.box-category ul li a.active + ul').css('display', 'block');	
		}
		
		if ($.browser.version <= 7) {
			$('nav > ul > li').bind('mouseover', function() {
				$(this).addClass('active');
			});
				
			$('nav > ul > li').bind('mouseout', function() {
				$(this).removeClass('active');
			});	
		}
	}

/* ==============
    CUSTOM FOOTER
   ============== */
	$('.custom-footer').find('.column:last').addClass('last');
	var colHeight = 0;  
    $('.custom-footer').find('.column').each(function(){  
        if($(this).height() > colHeight){ 
			colHeight = $(this).height();  
        }
    });
	if(colHeight > 200){
		$('.custom-footer .column').height(colHeight);  	
	}


/* ==============
	CUSTOM CSS CLASSES
   ============== */
	if($('.refine-tools').find('.refine-search').html() == null){
		$('.refine-tools').addClass('no-refine');
	}
	if($('#content').find('.column').html() == null){
		$('#content').addClass('no-column');
	}
	if($('.refine-tools').find('.product-filter').html() == null){
		$('.refine-tools').addClass('no-filter');
	}
	
	
/* ==============
	TOOL TIP
   ============== */
	$(".header-options > a, .prd-block li a, .cart a, .small-prd-block ul a, .lrg-stars, .sml-stars, .social a").tooltip();


/* ==============
	SLIDE SHOW PRODUCT SETUP
   ============== */
   $(".slideshowMod .box-heading").live("click", function(){ 
		if($(this).next().is(':visible') == false) {
			$('.slideshowMod .box-content').slideUp(300, function(){
				$(this).removeClass('active');
				$('.box-heading').removeClass('open');	
			});
		}
		
		if($(this).hasClass('open') == true) {
			$(this).next().slideUp(300, function(){
				$(this).removeClass('active');
				$(this).prev().removeClass('open');	
			});
		}else{
			$(this).next().slideDown(300, function(){
				$(this).addClass('active');
				$(this).prev().addClass('open');
			});
		}
	});
	
	var obj = $('.slidshow-prd');
	obj.each(function(index, element) {
		$(this).appendTo('.slideshowMod');
	});
	
	if($('#content').hasClass('store-home')){
		var moveSlideshow = $('.slideshow');
		
		moveSlideshow.promise().done(function() {
			moveSlideshow.hide().prependTo('#content-body').fadeIn(1000, function(){
				$('.slideshowMod .box-content').hide()
				$('.slideshowMod .box-content:eq(0)').slideDown('slow', function(){
					$(this).addClass('active');
					$(this).prev().addClass('open');
				});
				obj.css({height:'auto', overflow:'inherit'})
				obj.fadeIn(5000);
			});
		});
	}




});/*<================================== Ready function close */

/* ==============
   QUANTITY TEXT BOX
   ============== */
function qtyPlus(){
	var qty = parseInt($('#qty').val());
	if(qty > 0){
    	$('#qty').val(qty+1);
    }         
    return false;
}

function qtyMinus(){
	var qty = parseInt($('#qty').val());
    if(qty > 1){
    	$('#qty').val(qty-1);
    }         
    return false;
}
	
