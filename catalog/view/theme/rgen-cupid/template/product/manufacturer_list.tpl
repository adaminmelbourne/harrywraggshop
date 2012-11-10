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
			
			<?php if ($categories) { ?>
			<p class="brands-a2z"><b><?php echo $text_index; ?></b>
				<?php foreach ($categories as $category) { ?>
				<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><?php echo $category['name']; ?></a>
				<?php } ?>
			</p>
			<?php foreach ($categories as $category) { ?>
			<div class="manufacturer-list">
				<div class="manufacturer-heading"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>
				<div class="manufacturer-content">
					<?php if ($category['manufacturer']) { ?>
					<?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
					<ul>
						<?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
						<?php for (; $i < $j; $i++) { ?>
						<?php if (isset($category['manufacturer'][$i])) { ?>
						<li><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
						<?php } ?>
						<?php } ?>
					</ul>
					<?php } ?>
					<?php } ?>
				</div>
			</div>
			<?php } ?>
			<?php } else { ?>
			<div class="content"><?php echo $text_empty; ?></div>
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			<?php } ?>
	
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>