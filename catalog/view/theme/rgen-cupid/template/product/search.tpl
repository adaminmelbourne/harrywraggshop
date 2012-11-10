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
		?><div id="content-body" class="search-page">
			<?php echo $content_top; ?><?php
		
		
			/* SEARCH FORM
			***************/
			?><div class="box-form">
				<h2 class="header-3"><?php echo $text_critea; ?></h2>
				<div class="content">
					<table>
						<tr>
							<td valign="top"><label style="position:relative; top:8px;"><?php echo $entry_search; ?></label></td>
							<td>
								<?php if ($filter_name) { ?>
								<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
								<?php } else { ?>
								<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
								<?php } ?>
								<select name="filter_category_id">
									<option value="0"><?php echo $text_category; ?></option>
									<?php foreach ($categories as $category_1) { ?>
									<?php if ($category_1['category_id'] == $filter_category_id) { ?>
									<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
									<?php } ?>
									<?php foreach ($category_1['children'] as $category_2) { ?>
									<?php if ($category_2['category_id'] == $filter_category_id) { ?>
									<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
									<?php } ?>
									<?php foreach ($category_2['children'] as $category_3) { ?>
									<?php if ($category_3['category_id'] == $filter_category_id) { ?>
									<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
									<?php } else { ?>
									<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
									<?php } ?>
									<?php } ?>
									<?php } ?>
									<?php } ?>
								</select>
								
								<br />
								<?php if ($filter_sub_category) { ?>
								<input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
								<?php } ?>
								<label for="sub_category"><?php echo $text_sub_category; ?></label>
								
								<?php if ($filter_description) { ?>
								<input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
								<?php } else { ?>
								<input type="checkbox" name="filter_description" value="1" id="description" />
								<?php } ?>
								<label for="description"><?php echo $entry_description; ?></label>
								<br /><br />
								<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" />
							</td>
						</tr>
					</table>
				</div>
			</div>
			
			<h2 class="header-2 result-title"><?php echo $text_search; ?></h2><?php
			
			
			/* REFINE TOOLS
			***************/
			?><div class="refine-tools">
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
			</div><?php
			
			
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
			<?php }?>
			
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>
<script type="text/javascript"><!--
$('#content input[name=\'filter_name\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var filter_name = $('#content input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_category_id = $('#content select[name=\'filter_category_id\']').attr('value');
	
	if (filter_category_id > 0) {
		url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
	}
	
	var filter_sub_category = $('#content input[name=\'filter_sub_category\']:checked').attr('value');
	
	if (filter_sub_category) {
		url += '&filter_sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'filter_description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&filter_description=true';
	}

	location = url;
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
