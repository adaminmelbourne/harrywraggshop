<?php if ($this->config->get('RGen_SlideShow_Best') && $getRoute == 'common/home') { ?>
<div class="box best-prd slidshow-prd" id="BestOnSlideshow<?php echo $module; ?>">
<?php }else { ?>
<div class="box best-prd" id="best-prd<?php echo $module; ?>">
<?php } ?>

	<?php if ($this->config->get('RGen_SlideShow_Best') && $getRoute == 'common/home') { ?>
	<div id="bestPrd" class="box-heading header-1"><?php echo $heading_title; ?></div>
	<?php }else { ?>
	<div class="box-heading header-1"><?php echo $heading_title; ?></div>
	<?php } ?>
	
	<div class="box-content best">
		<div class="box-product clearfix">
			<?php foreach ($products as $product) { ?>
				
				<?php if ($this->config->get('RGen_SlideShow_Best') && $getRoute == 'common/home') { ?>
				<div class="small-prd-block">
				<?php }else { ?>
				<div class="prd-block">
				<?php } ?>
				
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
					<div class="price">
						<?php if (!$product['special']) { ?>
						<span class="price-block"><?php echo $product['price']; ?></span>
						<?php } else { ?>
						<span class="price-block"><span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span></span>
						<?php } ?>
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
	</div>
</div>
<script type="text/javascript"><!--
$(document).ready(function(){
	<?php if ($this->config->get('RGen_SlideShow_Best') && $getRoute == 'common/home') { ?>
		
		var obj = $('#BestOnSlideshow<?php echo $module; ?>');
		obj.find('.box-content').addClass('scrollPane');
		obj.find('.scrollPane').jScrollPane({ verticalDragMinHeight: 31, verticalDragMaxHeight: 31 });
	
	<?php }else { ?>
		
		var obj = $('#best-prd<?php echo $module; ?>');
		var Prd = obj.find('.prd-block').length*(25+obj.find('.prd-block').outerWidth());
		var posChk = obj.parent().hasClass('column');
		var chkW = $('#content-body').width();
		var chkHome = $('.best-prd').hasClass('slidshow-prd');
		
		obj.find('.prd-block:last').addClass('last');
		
		if(obj.find('.prd-block').length >= 4 & posChk == false){
			obj.find('.box-content').addClass('scrollPane');
			obj.css({borderBottom:'none', paddingBottom:0});
			obj.find('.scrollPane').jScrollPane({ horizontalDragMinWidth: 40, horizontalDragMaxWidth: 40 });
		}
		// CHECK FOR COLUMN PRODUCTS
		if(posChk == true) {
			obj.find('.prd-block').addClass('col-prd').removeClass('prd-block');
			
		}
		
	<?php } ?>
});

//--></script>



