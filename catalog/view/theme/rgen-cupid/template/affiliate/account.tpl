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
			
			<?php echo $content_top; ?>
			
			<div class="box-content1">
				<h2 class="header-3"><?php echo $text_my_account; ?></h2>
				<div class="content">
					<ul>
						<li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
						<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
						<li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
					</ul>
				</div>
			</div>
			
			<div class="box-content1">
				<h2 class="header-3"><?php echo $text_my_tracking; ?></h2>
				<div class="content">
					<ul>
						<li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
					</ul>
				</div>
			</div>
			
			<div class="box-content1">
				<h2 class="header-3"><?php echo $text_my_transactions; ?></h2>
				<div class="content">
					<ul>
						<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
					</ul>
				</div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>
