<?php echo $header; ?>
<?php if ($this->config->get('RGen_Slideshow_Layouts') == 'full') { ?>
<div id="content" class="store-home full-slideshow">
<?php } elseif ($this->config->get('RGen_Slideshow_Layouts') == 'small') { ?>
<div id="content" class="store-home small-slideshow">
<?php }else { ?>
<div id="content" class="store-home medium-slideshow">
<?php } ?>

	<div id="main" class="wrapper clearfix">
		
		<?php echo $column_left; ?>
		<?php echo $column_right; ?>
		
		<div id="content-body">
			<?php echo $content_top; ?> 
			<h1 style="display: none;"><?php echo $heading_title; ?></h1>
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>
<?php echo $footer; ?>