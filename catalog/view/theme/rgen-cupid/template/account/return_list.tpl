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
		?><div id="content-body" class="return-list">
			<?php echo $content_top; ?>
			
			<?php if ($returns) { ?>
			<?php foreach ($returns as $return) { ?>
						
			<div class="item-list">
				<div class="item-id">
					<b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?>
					<div class="item-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
				</div>
				
				
				<div class="item-content">
					<div>
						<b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
						<b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?>
					</div>
					
					<div>
						<b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?>
					</div>
					
					<div class="item-info">
						<a href="<?php echo $return['href']; ?>" class="sml-button"><?php echo $button_view; ?></a>
					</div>
				</div>
				
			</div>
			
			
			<?php } ?>
			<div class="pagination"><?php echo $pagination; ?></div>
			<?php } else { ?>
			<div class="content"><?php echo $text_empty; ?></div><br /><br />
			<?php } ?>
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>
