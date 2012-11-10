<?php if (count($languages) > 0) { ?>

<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language_form">
	<div id="language">
		<ul>
			<?php foreach ($languages as $language) { ?>
			<li><a onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>'); $('#language_form').submit();" title="<?php echo $language['name']; ?>"><?php echo $language['code']; ?></a></li>
			<?php } ?>
		</ul>
		<?php foreach ($languages as $language) { ?>
		<?php if ($language['code'] == $language_code) { ?>
			
			<span class="selected-language"><?php echo $language['code']; ?></span>
			
		<?php } ?>
		<?php } ?>
		<input type="hidden" name="language_code" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
	</div>
</form>
<?php } ?>