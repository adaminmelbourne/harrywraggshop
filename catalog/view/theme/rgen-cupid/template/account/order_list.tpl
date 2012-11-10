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
			
			<?php if ($orders) { ?>
			<?php foreach ($orders as $order) { ?>
			
			<div class="item-list">
				<div class="item-id">
					<b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?>
					<span class="item-status"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></span>
				</div>
				
				<div class="item-content">
					<div>
						<b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
						<b><?php echo $text_products; ?></b> <?php echo $order['products']; ?>
					</div>
					<div>
						<b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
						<b><?php echo $text_total; ?></b> <?php echo $order['total']; ?>
					</div>
					<div class="item-info">
						<a href="<?php echo $order['href']; ?>" class="sml-button"><?php echo $button_view; ?></a>
						<a href="<?php echo $order['reorder']; ?>" class="sml-button"><?php echo $button_reorder; ?></a>
					</div>
				</div>
			</div>
			
			<?php } ?>
			<div class="pagination"><?php echo $pagination; ?></div>
			<?php } else { ?>
			<div class="content"><?php echo $text_empty; ?></div>
			<?php } ?>
			
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>