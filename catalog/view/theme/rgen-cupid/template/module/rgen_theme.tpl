

<?php if ($RGen_FT_Status == '1') { ?>
<div class="custom-footer wrapper clearfix column-<?php echo $Active_modules; ?>">
	<?php if ($RGen_FT_about_Status == '1') : ?>
	<div id="aboutus-content" class="column">
		<h2 class="header-2"><?php echo $FT_about_Title; ?></h2>
		<p><?php echo html_entity_decode($FT_about_Text); ?></p>
	</div>
	<?php endif; ?>
	
	<!--  TWITTER -->
	<?php if($RGen_FT_twitter_Status == '1'): ?>
	<div id="twitter" class="column">
		<h2 class="header-2"><?php echo $FT_twitter_Title ; ?></h2>
		<ul id="twitter_update_list">
		</ul>
		<a target="_blank" href="http://twitter.com/#!/<?php echo $FT_twitter_User ; ?>">Follow us on twitter  &#8250;</a>
		<script type="text/javascript" src="//twitter.com/javascripts/blogger.js"></script> 
		<script type="text/javascript" src="//twitter.com/statuses/user_timeline/<?php echo $FT_twitter_User ; ?>.json?callback=twitterCallback2&count=<?php echo $FT_twitter_Tweets ; ?>"></script> 
	</div>
	<?php endif; ?>
	
	<!--  FACEBOOK -->
	<?php if ($RGen_FT_fb_Status == '1') { 
	$colW = (940-(($Active_modules-1) * 60)) / $Active_modules;
	?>
	<div id="facebook-block" class="column fan_box">
		<h2 class="header-2"><?php echo $FT_fb_Title ; ?></h2>
		<script type="text/javascript" src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/en_US"></script>
		<script type="text/javascript">FB.init("1690883eb733618b294e98cb1dfba95a");</script>
		<fb:fan 
			profile_id="<?php echo $FT_fb_ID; ?>" 
			stream="0" 
			
			<?php if ($Active_modules == '1') {	?>
			connections="18" 
			<?php }?>
			<?php if ($Active_modules == '2') { ?>
			connections="10" 
			<?php }?>
			<?php if ($Active_modules == '3') { ?>
			connections="6" 
			<?php }?>
			
			logobar="0" 
			width="<?php echo $colW; ?>"
			height="230"
			css="<?php echo HTTPS_SERVER; ?>catalog/view/theme/rgen-cupid/stylesheet/fb.css"
			>
		</fb:fan>
	</div>
	<?php } ?>
</div>
<?php } ?>