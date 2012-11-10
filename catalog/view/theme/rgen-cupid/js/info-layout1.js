$(document).ready(function(e) {
	$(".image-additional").scrollable({vertical:true});
/* ==============
	PRODUCT INFORMATION DISPLAY
   ============== */
	var animationSpeed = 600;
	var easing = 'swing';
	
	$(".info-links a, .buying-info .review a").click(function(){
		if($('.product-info').hasClass('response768') == false){
			$(".info-wrapper").css({display:'block'});
			var pane = $(this).attr('rel');
			
			if($('.info-links').find('input[type="hidden"]').val() == 0){
				$('.info-links').find('input[type="hidden"]').val(1);
				$(".product-info").css({overflow:'hidden'});
			
				$(".product-info .right").stop().animate({ 
						width:960	
				}, animationSpeed, easing, function() {});
				
				/* ---------------------- */
				$(".product-info .left").stop().animate({ 
						marginLeft:-471,
				}, animationSpeed, easing, function() {});
				
				/* ---------------------- */
				
				/* OPEN INFORMATION */
				$(".buying-info").next().stop().animate({ 
						width:480	
				}, animationSpeed, easing, function() {
					
					/* PRODUCT DESCRIPTION CASE */
					if(pane == "#tab-description"){
						setData();
					} else if(pane == "#tab-attribute"){
						setData();
					} else {
						setData();
						//$('#tabs a').tabs();
					}
					
					$(".x").css({display:'block'});
					$(".x").stop().animate({ 
							opacity:1
						}, 100, easing, function() {
					});
					
				});
			}else{
				/* PRODUCT DESCRIPTION CASE */
				if(pane == "#tab-description"){
					setData();
				} else if(pane == "#tab-attribute"){
					setData();
				} else {
					setData();
				}	
			}
			setData();
		}
		/* ---------------------- */
		
		function setData(){
			/* RESET DATA */
			$(".info-wrapper").removeClass('overflow');
			$('.active').stop().animate({ opacity:0 }, 50, function(){
				$(this).removeClass('active');
			});
			
			$(pane).addClass('active');
			$(pane).stop().animate({ opacity:1 }, 800, function(){});
			
			$(pane + " > .content-pane").removeClass('overflow');
			
			/* CONDITION FOR INFORMATIVE DATA */
			if($(pane).children('input[type="hidden"]').val() == 0){
				$(pane).children('input[type="hidden"]').val(1);
				$(pane).stop().animate({ opacity:1 }, 300);
				
				$(pane + ' .content-pane').wrapInner('<div>');
				if($(pane + ' .content-pane > div').innerHeight() > 337){
					$(pane + ' .content-pane').jScrollPane({
						verticalGutter: -15,
						verticalDragMinHeight: 41,
						verticalDragMaxHeight: 41
					});	
					$(pane + ' .content-pane').stop().animate({ paddingRight:15 }, 200);
					$(pane + ' .jspContainer').stop().animate({ paddingRight:15 }, 200);
				}
				
				/* CONDITION FOR REVIEW */
				if(pane == '#tab-review'){
					
					if($('#review').hasClass('jspScrollable') == false){
						$('#review').wrapInner('<div>');
						
						if($('#review > div').innerHeight() > 337){
							$(pane + ' #review').jScrollPane({
								verticalGutter: -15,
								verticalDragMinHeight: 41,
								verticalDragMaxHeight: 41
							});	
							$(pane + ' #review').stop().animate({ paddingRight:15 }, 200);
							$(pane + ' .jspContainer').stop().animate({ paddingRight:15 }, 200);
						}	
					}
					
				}
				
			}
		}
		
		
	});/* <== click function close */
	$('#tabs a').tabs();
	$(".x").click(function(){
		$('.info-links').find('input[type="hidden"]').val(0);
		$(".info-wrapper").addClass('overflow');
		$(".product-info .right").stop().animate({ 
					width:479
		}, animationSpeed, easing, function() {
			$(".product-info").css({overflow:''});
		});
		
		/* ---------------------- */
		
		$(".product-info .left").stop().animate({ 
					marginLeft:0,
		}, animationSpeed, easing, function() {});
		
		/* ---------------------- */
		
		/* CLOSE INFORMATION */
		
		$('.info-wrapper > div').stop().animate({ opacity:0 }, 300);
		$(".buying-info").next().stop().animate({ 
					width:0	
		}, animationSpeed, easing, function() {
			$(this).css({display:'none'});
			$(".x").css({display:'none'});
			$(".x").stop().animate({ 
					opacity:0
				}, 100, easing, function() {
			});
			
		});
		
		/* ---------------------- */
		
		
	});/* <== click function close */
	
	$(".buying-info .review a").click(function(){
		
		
		var obj = $(this).attr('rev');
		$('#tabs a').removeClass('selected');
		$('#tab-review .tab-content').hide();
		
		$('#tabs a[href=' + obj +']').addClass('selected');
		
		$($(this).attr('rev')).fadeIn();
		
		var pane = $(this).attr('rel');
		
		if($('.product-info').hasClass('response768') == false){
			if(obj == "#read-review"){
				if($('#review').hasClass('jspScrollable') == false){
					$('#review').wrapInner('<div>');
					if($('#review > div').innerHeight() > 337){
						$(pane + ' #review').jScrollPane({
							verticalGutter: -15,
							verticalDragMinHeight: 41,
							verticalDragMaxHeight: 41
						});	
						$(pane + ' #review').stop().animate({ paddingRight:15 }, 200);
						$(pane + ' .jspContainer').stop().animate({ paddingRight:15 }, 200);
					}	
				}
				
			}	
		}else{
			$('html, body').animate({scrollTop: $(obj).offset().top}, 500);
		}
		
	});
});
