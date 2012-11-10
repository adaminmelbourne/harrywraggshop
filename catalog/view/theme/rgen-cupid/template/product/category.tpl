<?php echo $header; ?>
<div id="content" class="category">
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
			
			
			/* CATEGORY DESCRIPTION
			***************/
			?><?php if ($thumb || $description) { ?>
			<article class="category-info clearfix">
				<?php if ($thumb) { ?>
				<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
				<?php } ?>
				<?php if ($description) { ?>
				<?php echo $description; ?>
				<?php } ?>
			</article>
			<?php } ?><?php
			
			
			/* REFINE CATEGORIES
			***************/
			?>
			<?php if ($products || $categories) { ?>
			<div class="refine-tools">
				<?php if ($products) { ?>
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
				<?php } ?>
				
				<?php if ($categories) { ?>
				<div class="refine-search">
					<h2><?php echo $text_refine; ?></h2>
					<?php if (count($categories) <= 5) { ?>
					<div class="category-list">
						<ul>
							<li>
								<?php foreach ($categories as $category) { ?>
								<a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
								<?php } ?>
							</li>
						</ul>
					</div>
					<?php } else { ?>
					<div class="category-list">
						<ul>
							<li>
								<?php for ($i = 0; $i < count($categories);) { ?>
									<?php $j = $i + ceil(count($categories) / 4); ?>
									<?php for (; $i < $j; $i++) { ?>
									<?php if (isset($categories[$i])) { ?>
									<a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a>
									<?php } ?>
									<?php } ?>
								<?php } ?>
							</li>
						</ul>
					</div>
					<?php } ?>
				</div>
				<?php } ?>
				
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
			<?php } ?>
			
			<?php if (!$categories && !$products) { ?>
			<div class="content"><?php echo $text_empty; ?></div>
			<div class="buttons">
				<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
			</div>
			<?php } ?>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>
<script type="text/javascript"><!--
$(document).ready(function(e) {
	var W = $('.category-list').find('li > a').length * 138;
	$('.category-list').find('ul').css({width:W});
	$('.category-list').jScrollPane({
		horizontalDragMinWidth: 41,
		horizontalDragMaxWidth: 41
	});
	
	var api = $('.category-list').data('jsp');
	var throttleTimeout;
	$(window).bind('resize', function(){
		if ($.browser.msie) {
			// IE fires multiple resize events while you are dragging the browser window which
			// causes it to crash if you try to update the scrollpane on every one. So we need
			// to throttle it to fire a maximum of once every 50 milliseconds...
			if (!throttleTimeout) {
				throttleTimeout = setTimeout(
					function()
					{
						api.reinitialise();
						throttleTimeout = null;
					},
					50
				);
			}
		} else {
			api.reinitialise();
			
		}
	});
	
});

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
		
		$('.display').html('<span title="<?php echo $text_list; ?>" class="icon-list"><?php echo $text_list; ?></span><a onclick="display(\'grid\');" class="icon-grid" title="<?php echo $text_grid; ?>"><?php echo $text_grid; ?></a>');
		
		$.cookie('display', 'list');
		
		$(".prd-block li a").tooltip();
		
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
					
		$('.display').html('<a onclick="display(\'list\');" class="icon-list" title="<?php echo $text_list; ?>"><?php echo $text_list; ?></a><span class="icon-grid" title="<?php echo $text_grid; ?>"><?php echo $text_grid; ?></span>');
		
		$.cookie('display', 'grid');
		$(".prd-block li a").tooltip();
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