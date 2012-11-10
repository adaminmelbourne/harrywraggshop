<?php if ($this->config->get('RGen_Banner_Layouts') == 1 && $getRoute == 'common/home') { ?>
<div class="slideshow banner-aside">
<?php } else { ?>
<div class="slideshow">
<?php } ?>

	<div id="slideshow<?php echo $module; ?>" class="slider-block">
		<div class="flexslider">
			<ul class="slides">
				<?php foreach ($banners as $banner) { ?>
				<li>
					<?php if ($banner['link']) { ?>
					<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
					<?php } else { ?>
					<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
					<?php } ?>
				</li>
				<?php } ?>
			</ul>
		</div>
		<?php if ($this->config->get('RGen_animationType') == 'fade') { ?>
		<div class="slideshowNav"></div>
		<?php } ?>
	</div>
	<div class="slideshowMod"></div>
</div>
<script type="text/javascript"><!--
$(window).load(function() {
  var slider = $('#slideshow<?php echo $module; ?> .flexslider').flexslider({
    animation: "<?php echo $this->config->get('RGen_animationType'); ?>",
	<?php if ($this->config->get('RGen_slideshowSpeed') != '') { ?>
	slideshowSpeed:<?php echo $this->config->get('RGen_slideshowSpeed'); ?>,
	<?php } ?>
	<?php if ($this->config->get('RGen_animationSpeed') != '') { ?>
	animationSpeed:<?php echo $this->config->get('RGen_animationSpeed'); ?>,
	<?php } ?>
	smoothHeight: true,
	pauseOnHover: true,
	start:function(){
		$('.slideshowMod').animate({ opacity:1, top:'40px' }, 800);
		
		<?php if ($this->config->get('RGen_animationType') == 'fade') { ?>
		$('#slideshow<?php echo $module; ?> .flex-control-paging').prependTo('#slideshow<?php echo $module; ?> .slideshowNav');
		<?php } ?>
		
	}
  });
	
});
--></script>

