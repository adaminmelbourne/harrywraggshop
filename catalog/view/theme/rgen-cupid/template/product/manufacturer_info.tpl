<?php echo $header; ?>
<div id="content" class="brandinfo">
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
			<?php echo $content_top; ?><?php
			
			
			/* REFINE CATEGORIES
			***************/
			?><?php if ($products) { ?>
			<div class="refine-tools">
				<ul class="product-filter">
					<li class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></li>
					<li class="sort">
						<b><?php echo $text_sort; ?></b>
						<select onchange="location = this.value;">
							<?php foreach ($sorts as $sorts) { ?>
							<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
							<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
						
					</li>
					<li class="limit">
						<b><?php echo $text_limit; ?></b>
						<select onchange="location = this.value;">
							<?php foreach ($limits as $limits) { ?>
							<?php if ($limits['value'] == $limit) { ?>
							<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
							<?php } else { ?>
							<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
							<?php } ?>
							<?php } ?>
						</select>
					</li>
					<li class="display"><span><?php echo $text_list; ?></span><a onclick="display('grid');"><?php echo $text_grid; ?></a></li>
				</ul>
			</div>
			<?php } ?><?php
			
			
			/* PRODUCTS 
			***************/
			?><?php if ($products) { ?>
			
			<div class="product-list clearfix"><?php
			
			
				/* PRODUCTS BLOCK
				***************/
				?><?php foreach ($products as $product) { ?>
				<div class="prd-block">
					<div class="image">
						<?php if ($product['special']) { ?>
						<span class="offer-tag"></span>
						<?php } ?>
						<a href="<?php echo $product['href']; ?>">
							<?php if ($product['thumb']) { ?>
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
							<?php } ?>
						</a>
						<div class="info">
							<a href="<?php echo $product['href']; ?>" class="name"><?php echo $product['name']; ?></a>
							
							<?php if ($product['rating']) { ?>
							<b class="rating lrg-stars stars-<?php echo $product['rating']; ?>" title="<?php echo $product['reviews']; ?>"></b>
							<?php } ?>
							
							<div class="description"><?php echo $product['description']; ?></div>
							
						</div>
					</div>
					<?php if ($product['price']) { ?>
					
					<?php if ($product['tax']) { ?>
					<div class="price withtax">
					<?php } else { ?>
					<div class="price">
					<?php } ?>
					
						<?php if (!$product['special']) { ?>
						<span class="price-block"><?php echo $product['price']; ?></span>
						<?php } else { ?><span class="price-block"><span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span></span><?php } ?>
						<?php if ($product['tax']) { ?><span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span><?php } ?>
					</div>
					<?php } ?>
					<ul>
						<li><a class="icon-cart" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a></li>
						<li><a class="icon-wishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a></li>
						<li><a class="icon-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a></li>
						<li class="last"><a class="icon-more" href="<?php echo $product['href']; ?>" title="<?php echo $button_moreinfo; ?>"><?php echo $button_moreinfo; ?></a></li>
					</ul>
					
				</div>
				<?php } ?>
				
			</div>
			
			<div class="pagination clearfix"><?php echo $pagination; ?></div>
			
			<?php } else { ?>
				<div class="content"><?php echo $text_empty; ?></div>
				<div class="buttons">
					<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
				</div>
			<?php }?>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>
<script type="text/javascript"><!--

function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > .prd-block').each(function(index, element) {
			html = '';
			$(element).addClass('clearfix');
			
			var info = $(element).find('.info').html();
			if (info != null) {
				html += '<div class="info">' + info + '</div>';
				$(element).find('.image .info').remove('.info');
			}
			/*var info = $(element).find('.info').html();
			
			if (info != null) {
				html += '<div class="info">' + info + '</div>';
			}*/
			
			var image = $(element).find('.image').html();
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			if (price != null && $('.price').hasClass('withtax')) {
				html += '<div class="price withtax">' + price  + '</div>';
			}else {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var buy = $(element).find('ul').html();
			html += '<ul>' + buy + '</ul>';

						
			$(element).html(html);
		});		
		
		$('.display').html('<span title="<?php echo $text_list; ?>" class="icon-list"><?php echo $text_list; ?></span><a class="icon-grid" onclick="display(\'grid\');" title="<?php echo $text_grid; ?>"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > .prd-block').each(function(index, element) {
			html = '';
			$(element).removeClass('clearfix');
			var image = $(element).find('.image').html();
			var info = $(element).children('.info').html();
			if (image != null) {
				html += '<div class="image">';
				html += image;
				if(info != null){
					html +=	'<div class="info">' + info + '</div>';
				}
				html += '</div>';
			}
			
			var price = $(element).find('.price').html();
			if (price != null && $('.price').hasClass('withtax')) {
				html += '<div class="price withtax">' + price  + '</div>';
			}else {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var buy = $(element).find('ul').html();
			html += '<ul>' + buy + '</ul>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<a onclick="display(\'list\');" title="<?php echo $text_list; ?>" class="icon-list"><?php echo $text_list; ?></a><span class="icon-grid" title="<?php echo $text_grid; ?>"><?php echo $text_grid; ?></span>');
		
		$.cookie('display', 'grid');
	}
}

view = $.cookie('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php echo $footer; ?>
