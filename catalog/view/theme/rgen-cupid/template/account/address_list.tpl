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
		
			<?php if ($success) { ?>
			<div class="success"><?php echo $success; ?></div>
			<?php } ?>
			<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
			<?php } ?>

			<?php echo $content_top; ?>
			
			<div class="box-form m0">
				<h2 class="header-3"><?php echo $text_address_book; ?></h2>
				
				<?php foreach ($addresses as $result) { ?>
				<div class="content list-item">
					<table style="width: 100%;">
						<tr>
							<td><?php echo $result['address']; ?></td>
							<td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="sml-button"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="sml-button"><?php echo $button_delete; ?></a></td>
						</tr>
					</table>
				</div>
				<?php } ?>	
			</div>
			
			<div class="buttons">
				<div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
				<div class="right"><a href="<?php echo $insert; ?>" class="button"><?php echo $button_new_address; ?></a></div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>