<?php if ($this->config->get('RGen_Banner_Layouts') == 1 && $getRoute == 'common/home' && $module == 0) { ?>
<div id="banner<?php echo $module; ?>" class="banner banner-layout1">

<?php } elseif ($this->config->get('RGen_Banner_Layouts') == 2 && $getRoute == 'common/home' && $module == 0) { ?>
<div id="banner<?php echo $module; ?>" class="banner banner-layout2">

<?php } else { ?>
<div id="banner<?php echo $module; ?>" class="banner">
<?php } ?>

	<?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
	<div class="bnr-bx"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></div>
	<?php } else { ?>
	<div class="bnr-bx"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></div>
	<?php } ?>
	<?php } ?>
</div>


<script type="text/javascript"><!--
$(document).ready(function() {
	//$('#banner<?php echo $module; ?> div:first-child').css('display', 'block');
	
	<?php if ($this->config->get('RGen_Banner_Layouts') == 1 && $getRoute == 'common/home' && $module == 0) { ?>
	if($('#banner<?php echo $module; ?>').hasClass('banner-layout1')){
		$('#banner<?php echo $module; ?>').appendTo('.slideshow');
	}
	<?php } elseif ($this->config->get('RGen_Banner_Layouts') == 2 && $getRoute == 'common/home' && $module == 0) { ?>
	if($('#banner<?php echo $module; ?>').hasClass('banner-layout2')){
		$('#banner<?php echo $module; ?>').appendTo('.slideshow');
	}
	<?php } else { ?>
	var banner = function() {
		$('#banner<?php echo $module; ?>').cycle({
			before: function(current, next) {
				$(next).parent().height($(next).outerHeight());
			}
		});
	}
	setTimeout(banner, 2000);
	
	<?php } ?>
	
});



/* JS FOR STORE HOME BANNERS */
/*$('.store-home').find('.banner').append('<div class="clearfix" />')
$('.store-home').find('.banner').children('.bnr-bx:last').addClass('last')*/

//--></script>