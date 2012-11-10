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
		?><div id="content-body" class="return-info">
			<?php echo $content_top; ?>
			
			<table class="list">
				<thead>
					<tr>
						<td class="left" colspan="2"><?php echo $text_return_detail; ?></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="left" style="width: 50%;"><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
							<b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
						<td class="left" style="width: 50%;"><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
							<b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
					</tr>
				</tbody>
			</table><br /><br />
			<h2 class="header-2"><?php echo $text_product; ?></h2>
			<table class="list">
				<thead>
					<tr>
						<td class="left" style="width: 33.3%;"><?php echo $column_product; ?></td>
						<td class="left" style="width: 33.3%;"><?php echo $column_model; ?></td>
						<td class="right" style="width: 33.3%;"><?php echo $column_quantity; ?></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="left"><span class="resp-title"><?php echo $column_product; ?></span><?php echo $product; ?></td>
						<td class="left"><span class="resp-title"><?php echo $column_model; ?></span><?php echo $model; ?></td>
						<td class="right"><span class="resp-title"><?php echo $column_quantity; ?></span><?php echo $quantity; ?></td>
					</tr>
				</tbody>
			</table>
			<table class="list">
				<thead>
					<tr>
						<td class="left" style="width: 33.3%;"><?php echo $column_reason; ?></td>
						<td class="left" style="width: 33.3%;"><?php echo $column_opened; ?></td>
						<td class="left" style="width: 33.3%;"><?php echo $column_action; ?></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="left"><span class="resp-title"><?php echo $column_reason; ?></span><?php echo $reason; ?></td>
						<td class="left"><span class="resp-title"><?php echo $column_opened; ?></span><?php echo $opened; ?></td>
						<td class="left"><span class="resp-title"><?php echo $column_action; ?></span><?php if ($action) { ?><?php echo $action; ?><?php } else {?> - <?php } ?></td>
					</tr>
				</tbody>
			</table>
			<?php if ($comment) { ?>
			<table class="list">
				<thead>
					<tr>
						<td class="left"><?php echo $text_comment; ?></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="left"><span class="resp-title"><?php echo $text_comment; ?></span><?php echo $comment; ?></td>
					</tr>
				</tbody>
			</table>
			<?php } ?>
			<?php if ($histories) { ?>
			<h2><?php echo $text_history; ?></h2>
			<table class="list">
				<thead>
					<tr>
						<td class="left" style="width: 33.3%;"><?php echo $column_date_added; ?></td>
						<td class="left" style="width: 33.3%;"><?php echo $column_status; ?></td>
						<td class="left" style="width: 33.3%;"><?php echo $column_comment; ?></td>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($histories as $history) { ?>
					<tr>
						<td class="left"><?php echo $history['date_added']; ?></td>
						<td class="left"><?php echo $history['status']; ?></td>
						<td class="left"><?php echo $history['comment']; ?></td>
					</tr>
					<?php } ?>
				</tbody>
			</table>
			<?php } ?>
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>