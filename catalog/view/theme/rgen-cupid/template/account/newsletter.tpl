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
			
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
			<div class="box-form">
				<div class="content">
					<table class="form">
						<tr>
							<td><?php echo $entry_newsletter; ?></td>
							<td><?php if ($newsletter) { ?>
								<input type="radio" name="newsletter" value="1" checked="checked" />
								<?php echo $text_yes; ?>&nbsp;
								<input type="radio" name="newsletter" value="0" />
								<?php echo $text_no; ?>
								<?php } else { ?>
								<input type="radio" name="newsletter" value="1" />
								<?php echo $text_yes; ?>&nbsp;
								<input type="radio" name="newsletter" value="0" checked="checked" />
								<?php echo $text_no; ?>
								<?php } ?></td>
						</tr>
					</table>
				</div>
			
			</div>
			
			<div class="buttons">
				<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
				<div class="right">
					<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
				</div>
			</div>
		</form>
	
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>