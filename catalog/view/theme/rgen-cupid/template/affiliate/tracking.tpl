<?php echo $header; ?>
<div id="content">
	<div id="main" class="wrapper clearfix"><?php
		
		/* PAGE HEADER
		***************/
		?><div class="pagehead">
			<h1><?php echo $heading_title; ?></h1>
			<div>
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
			</div>
		</div><?php
		
		/* SIDE COLUMNS
		***************/
		?><?php echo $column_left; ?>
		<?php echo $column_right; ?><?php
		
		
		/* PAGE CONTENT
		***************/
		?><div id="content-body">
			<?php echo $content_top; ?>
			<div class="box-form">
				<p><?php echo $text_description; ?></p>
				<table class="form">
					<tr>
						<td valign="top"><?php echo $text_code; ?></td>
						<td><textarea style="width:80%" cols="40" rows="5"><?php echo $code; ?></textarea></td>
					</tr>
					<tr>
						<td valign="top"><?php echo $text_generator; ?></td>
						<td valign="top"><input style="width:80%" type="text" name="product" value="" /></td>
					</tr>
					<tr>
						<td valign="top"><?php echo $text_link; ?></td>
						<td><textarea style="width:80%" name="link" cols="40" rows="5"></textarea></td>
					</tr>
				</table>	
			</div>
			
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.link
					}
				}));
			}
		});
	},
	select: function(event, ui) {
		$('input[name=\'product\']').attr('value', ui.item.label);
		$('textarea[name=\'link\']').attr('value', ui.item.value);
						
		return false;
	},
	focus: function(event, ui) {
      return false;
   }
});
//--></script> 

<?php echo $footer; ?>