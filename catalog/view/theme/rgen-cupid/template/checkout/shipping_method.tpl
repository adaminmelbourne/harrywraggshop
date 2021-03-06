<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div class="box-form">

<?php if ($shipping_methods) { ?>
<p><?php echo $text_shipping_method; ?></p>
<table class="radio">
	<?php foreach ($shipping_methods as $shipping_method) { ?>
	<tr>
		<td colspan="3"><b class="header-4"><?php echo $shipping_method['title']; ?></b></td>
	</tr>
	<?php if (!$shipping_method['error']) { ?>
	<?php foreach ($shipping_method['quote'] as $quote) { ?>
	<tr class="highlight">
		<td><?php if ($quote['code'] == $code || !$code) { ?>
			<?php $code = $quote['code']; ?>
			<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
			<?php } else { ?>
			<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
			<?php } ?></td>
		<td><label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label></td>
		<td style="text-align: right;"><label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label></td>
	</tr>
	<?php } ?>
	<?php } else { ?>
	<tr>
		<td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
	</tr>
	<?php } ?>
	<?php } ?>
</table>
<?php } ?>
<br />
<b><?php echo $text_comments; ?></b>
<textarea name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>

</div>
<div class="buttons">
	<div class="right">
		<input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button" />
	</div>
</div>
