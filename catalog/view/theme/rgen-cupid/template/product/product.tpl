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
		?><?php if ($this->config->get('RGen_ProInfo_Layout') != 'proinfo1' && $this->config->get('RGen_ProInfo_Layout') != 'proinfo2') { ?>
			<?php echo $column_left; ?>
			<?php echo $column_right; ?>
		<?php } ?><?php
		
		
		/* PAGE CONTENT
		***************/
		?><div id="content-body" <?php if ($this->config->get('RGen_ProInfo_Layout') != 'proinfo1' && $this->config->get('RGen_ProInfo_Layout') != 'proinfo2') { ?>class="pro-layout3"<?php } ?>>
			
			<?php echo $content_top; ?>
			
			<div class="product-info clearfix <?php if ($this->config->get('RGen_ProInfo_Layout') == 'proinfo1') { ?>pro-layout1<?php } ?>"><?php
				
				
				/* PRODUCT PHOTOS
				***************/
				?><?php if ($thumb || $images) { ?>
				<div class="left">
					<?php if ($this->config->get('RGen_ProInfo_Layout') == 'proinfo1' || $this->config->get('RGen_ProInfo_Layout') == 'proinfo2') { ?>
					<?php if ($images) { ?>
					<div class="image-additional-wrapper">
						<div class="image-additional">
							<div class="items">
								
								<?php if ($thumb) { ?>
								<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'">
								<img src="<?php echo $additional; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</a>
								<?php } ?>
							
								<?php foreach ($images as $image) { ?>
								<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb1']; ?>'">
								<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</a>
								<?php } ?>
							</div>
						</div>
						<a class="prev"></a><a class="next"></a>
					</div>
					<?php } ?>
					<?php } ?>
					<?php if ($thumb) { ?>
					<div class="image">
					
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" id='zoom1' rel="position: 'inside' , showTitle: false, adjustX:-0, adjustY:-0">
						<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
						</a>
						<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox" rel="colorbox"></a>
					</div>
					<?php } ?>
					<?php if ($this->config->get('RGen_ProInfo_Layout') != 'proinfo1' && $this->config->get('RGen_ProInfo_Layout') != 'proinfo2') { ?>
					<?php if ($images) { ?>
					<div class="image-additional-wrapper">
						<div class="image-additional">
							<div class="items">
								
								<?php if ($thumb) { ?>
								<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'">
								<img src="<?php echo $additional; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</a>
								<?php } ?>
							
								<?php foreach ($images as $image) { ?>
								<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb1']; ?>'">
								<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</a>
								<?php } ?>
							</div>
						</div>
						<a class="prev"></a><a class="next"></a>
					</div>
					<?php } ?>
					<?php } ?>
					
				</div>
				<?php } ?>
				
				
				<div class="right"><?php
				
				
					/* BUYING INFO
					***************/
					?><div class="buying-info">
						<?php if ($price) { ?>
						<div class="price vm">
							<div>
								<?php if (!$special) { ?>
								<span class="price-new"><?php echo $price; ?></span>
								<?php } else { ?>
								<span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
								<?php } ?>
								<?php if ($tax) { ?>
								<span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span>
								<?php } ?>
								<?php if ($points) { ?>
								<span class="reward"><?php echo $text_points; ?> <?php echo $points; ?></span>
								<?php } ?>
								<?php if ($discounts) { ?>
								<div class="discount">
									<?php foreach ($discounts as $discount) { ?>
									<?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
									<?php } ?>
								</div>
								<?php } ?>
							</div>
						</div>
						<?php } ?>
						
						<?php if ($review_status) { ?>
						<div class="review vm">
							<div>
								<b class="rating lrg-stars stars-<?php echo $rating; ?>" title="<?php echo $reviews; ?>"></b>
								<a rel="#tab-review" rev="#read-review"><?php echo $reviews; ?></a>
								<a rel="#tab-review" rev="#write-review"><?php echo $text_write; ?></a>
							</div>
						</div>
						<?php } ?>
						
						<div class="info-links">
							<a rel="#tab-description" rev="#tab-description"><?php echo $tab_description; ?></a>
							<?php if ($attribute_groups) { ?>
							<a rel="#tab-attribute" rev="#tab-attribute"><?php echo $tab_attribute; ?></a>
							<?php } ?>
							<?php if ($review_status) { ?>
							<a rel="#tab-review" rev="#read-review"><?php echo $tab_review; ?></a>
							<?php } ?>
							<input type="hidden" value="0" />
						</div>
					</div><?php
					
					/* INFO LAYOUT 1
					***************/
					?><?php if ($this->config->get('RGen_ProInfo_Layout') == 'proinfo1') { ?>
					
					<div class="info-wrapper overflow info-layout1">
						<span class="x"></span><?php
					
						/* DESCRIPTION
						***************/
						?><?php if ($description) {?>
						<div id="tab-description">
							<h3 class="header-2"><?php echo $tab_description; ?></h3>
							<div class="content-pane overflow"><?php echo $description; ?></div>
							<input type="hidden" value="0" />
						</div>
						
						<?php } ?><?php
			
						/* ATTRIBUTES
						***************/
						?><?php if ($attribute_groups) { ?>
						<div id="tab-attribute">
							<h3 class="header-2"><?php echo $tab_attribute; ?></h3>
							<div class="content-pane overflow">
								<table class="list">
									<?php foreach ($attribute_groups as $attribute_group) { ?>
									<thead>
										<tr>
											<td colspan="2"><?php echo $attribute_group['name']; ?></td>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
										<tr>
											<td><?php echo $attribute['name']; ?></td>
											<td><?php echo $attribute['text']; ?></td>
										</tr>
										<?php } ?>
										

									</tbody>
									<?php } ?>
								</table>
							</div>
							<input type="hidden" value="0" />
						</div>
						<?php } ?><?php
			
						/* REVIEWS
						***************/
						?><?php if ($review_status) { ?>
						<div id="tab-review">
							<div id="tabs" class="htabs clearfix" content-theme="a">
								<a href="#read-review"><?php echo $tab_review; ?></a>
								<a href="#write-review"><?php echo $text_write; ?></a>
							</div>
							<div id="read-review" class="tab-content" content-theme="a">
								<div id="review"></div>
								<input type="hidden" value="0" />
							</div>
							<div id="write-review" class="tab-content" content-theme="a">
								<div class="message"></div>
								<ul>
									<li class="name">
										<label><?php echo $entry_name; ?></label>
										<div class="fields"><input type="text" name="name" value="" /></div>
									</li>
									<li class="rating">
										<label><?php echo $entry_rating; ?></label>
										<div class="fields">
											<ol>
												<li class="bad"><?php echo $entry_bad; ?></li>
												<li>
													<input type="radio" name="rating" value="1" />
													<input type="radio" name="rating" value="2" />
													<input type="radio" name="rating" value="3" />
													<input type="radio" name="rating" value="4" />
													<input type="radio" name="rating" value="5" />
												</li>
												<li class="good"><?php echo $entry_good; ?></li>
											</ol>
										</div>
									</li>
									<li class="comment">
										<label><?php echo $entry_review; ?><span class="note"><?php echo $text_note; ?></span></label>
										<div class="fields">
											<textarea name="text" cols="40" rows="8" style="width: 95%;"></textarea>
										</div>
									</li>
								</ul>
								<label><?php echo $entry_captcha; ?></label>
								<ul class="captcha">
									<li class="captcha-input"><input type="text" name="captcha" style="width:142px;" value="" /></li>
									<li><img src="index.php?route=product/product/captcha" alt="" id="captcha" /></li>
								</ul>
								<a id="button-review" class="button"><?php echo $button_continue; ?></a>
								
							</div>
							<input type="hidden" value="0" />
						</div>
						<?php } ?>
						
					</div>
					<?php } ?>
					
					<div class="options-wrapper">
						<ul class="item-info">
							<?php if ($manufacturer) { ?>
							<li><span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
							<?php } ?>
							<li><span><?php echo $text_model; ?></span> <?php echo $model; ?></li>
							<?php if ($reward) { ?>
							<li><span><?php echo $text_reward; ?></span> <?php echo $reward; ?></li>
							<?php } ?>
							<li><span><?php echo $text_stock; ?></span> <?php echo $stock; ?></li>
						</ul><?php
				
				
						/* OPTIONS
						***************/
						?><?php if ($options) { ?>
						<div class="options">
							<?php foreach ($options as $option) { ?>
								
								<?php if ($option['type'] == 'select') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<select name="option[<?php echo $option['product_option_id']; ?>]">
											<option value=""><?php echo $text_select; ?></option>
											<?php foreach ($option['option_value'] as $option_value) { ?>
											<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
											<?php if ($option_value['price']) { ?>
											(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
											<?php } ?>
											</option>
											<?php } ?>
										</select>	
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'radio') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option radio">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<?php foreach ($option['option_value'] as $option_value) { ?>
										<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
										<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
											<?php if ($option_value['price']) { ?>
											(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
											<?php } ?>
										</label>
										<br />
										<?php } ?>
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'checkbox') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option checkbox">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									
									<div class="fields">
										<?php foreach ($option['option_value'] as $option_value) { ?>
										<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
										<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
											<?php if ($option_value['price']) { ?>
											(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
											<?php } ?>
										</label>
										<br />
										<?php } ?>
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'image') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option option-image">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<table>
											<?php foreach ($option['option_value'] as $option_value) { ?>
											<tr>
												<td style="width: 1px;">
													<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
												</td>
												<td>
													<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>">
														<img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" />
													</label>
													<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
														<?php if ($option_value['price']) { ?>
														(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
														<?php } ?>
													</label>
												</td>
											</tr>
											<?php } ?>
										</table>
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'text') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'textarea') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="32" rows="5"><?php echo $option['option_value']; ?></textarea>
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'file') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
										<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'date') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'datetime') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
									</div>
								</div>
								<?php } ?>
								
								<?php if ($option['type'] == 'time') { ?>
								<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
									<label><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</label>
									<div class="fields">
										<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
									</div>
								</div>
								<?php } ?>
								
							<?php } ?>
						</div>
						<?php } ?><?php
					
					
						/* QUANTITY
						***************/
						?><div class="cart">
							<strong><?php echo $text_qty; ?></strong>
							<div>
								<span>
									<a onclick="qtyMinus();" class="minus"></a><input type="text" name="quantity" id="qty" size="2" value="<?php echo $minimum; ?>" /><a onclick="qtyPlus();" class="plus"></a>
								</span>
								<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
								
								<a id="button-cart" class="icon-cart" title="<?php echo $button_cart; ?>"><?php echo $button_cart; ?></a>
								<a class="icon-wishlist" onclick="addToWishList('<?php echo $product_id; ?>');" title="<?php echo $button_wishlist; ?>"><?php echo $button_wishlist; ?></a>
								<a class="icon-compare" onclick="addToCompare('<?php echo $product_id; ?>');" title="<?php echo $button_compare; ?>"><?php echo $button_compare; ?></a>
							</div>
						</div>
						<?php if ($minimum > 1) { ?>
						<div class="minimum"><?php echo $text_minimum; ?></div>
						<?php } ?>
						
						<div class="share"><!-- AddThis Button BEGIN -->
							<div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
							<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
							<!-- AddThis Button END --> 
						</div>	
					</div>
					
				</div><?php
					
				/* INFO LAYOUT 2
				***************/
				?><?php if ($this->config->get('RGen_ProInfo_Layout') != 'proinfo1') { ?>
				<div class="clearfix"></div>
				<div class="info-layout2">
					<div id="tabs" class="htabs clearfix" content-theme="a">
						<a href="#tab-description"><?php echo $tab_description; ?></a>
						<?php if ($attribute_groups) { ?>
						<a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
						<?php } ?>
						<a href="#read-review"><?php echo $tab_review; ?></a>
						<a href="#write-review"><?php echo $text_write; ?></a>
					</div>
					<div id="tab-description" class="tab-content" content-theme="a">
						<div class="scrollPane"><?php echo $description; ?></div>
					</div>
					
					<?php if ($attribute_groups) { ?>
					<div id="tab-attribute" class="tab-content" content-theme="a">
						
						<div class="scrollPane">
						<table class="list">
							<?php foreach ($attribute_groups as $attribute_group) { ?>
							<thead>
								<tr>
									<td colspan="2"><?php echo $attribute_group['name']; ?></td>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
								<tr>
									<td><?php echo $attribute['name']; ?></td>
									<td><?php echo $attribute['text']; ?></td>
								</tr>
								<?php } ?>
								

							</tbody>
							<?php } ?>
						</table>
						</div>
					</div>
					<?php } ?>
					
					<div id="read-review" class="tab-content" content-theme="a">
						<div id="review" class="scrollPane"></div>
					</div>
					<div id="write-review" class="tab-content" content-theme="a">
						<div class="message"></div>
						<ul>
							<li class="name">
								<label><?php echo $entry_name; ?></label>
								<div class="fields"><input type="text" name="name" value="" /></div>
							</li>
							<li class="rating">
								<label><?php echo $entry_rating; ?></label>
								<div class="fields">
									<ol>
										<li class="bad"><?php echo $entry_bad; ?></li>
										<li>
											<input type="radio" name="rating" value="1" />
											<input type="radio" name="rating" value="2" />
											<input type="radio" name="rating" value="3" />
											<input type="radio" name="rating" value="4" />
											<input type="radio" name="rating" value="5" />
										</li>
										<li class="good"><?php echo $entry_good; ?></li>
									</ol>
								</div>
							</li>
							<li class="comment">
								<label><?php echo $entry_review; ?><span class="note"><?php echo $text_note; ?></span></label>
								<div class="fields">
									<textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
								</div>
							</li>
						</ul>
						<label><?php echo $entry_captcha; ?></label>
						<ul class="captcha">
							<li class="captcha-input"><input type="text" name="captcha" style="width:142px;" value="" /></li>
							<li><img src="index.php?route=product/product/captcha" alt="" id="captcha" /></li>
						</ul>
						<a id="button-review" class="button"><?php echo $button_continue; ?></a>
					</div>
				</div>
				<?php } ?>
				
			</div><?php
					
			/* RELATED PRODUCTS
			***************/
			?><?php if ($products) { ?>
			
			<div id="tab-related">
				<div class="box-heading header-1"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</div>
				
				<div class="box-content">
					<div class="box-product clearfix"><?php
			
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
									<div class="description"><?php echo $product['description']; ?></div>
								</div>
							</div>
							<?php if ($product['price']) { ?>
							<div class="price">
								<?php if (!$product['special']) { ?>
								<span class="price-block"><?php echo $product['price']; ?></span>
								<?php } else { ?><span class="price-block"><span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span></span><?php } ?>
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
			<?php } ?><?php
					
			/* PRODUCT TAGS
			***************/
			?><?php if ($tags) { ?>
			<div class="tags">
				<h4 class="header-4"><?php echo $text_tags; ?></h4>
				<?php for ($i = 0; $i < count($tags); $i++) { ?>
				<?php if ($i < (count($tags) - 1)) { ?>
				<a href="<?php echo $tags[$i]['href']; ?>" class="link-bt"><?php echo $tags[$i]['tag']; ?></a>,
				<?php } else { ?>
				<a href="<?php echo $tags[$i]['href']; ?>" class="link-bt"><?php echo $tags[$i]['tag']; ?></a>
				<?php } ?>
				<?php } ?>
				
			</div>
			<?php } ?>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php
					
/* CUSTOM THEME JS
***************/
?>
<script type="text/javascript"><!--
$(document).ready(function(e) {
	$(".image-additional a").click(function(){
		$('.colorbox').attr('href',$(this).attr('href'));
	});
	
	$('.info-links a:last').addClass('last');
	
	$('.image-additional a').click(function(){
		$('.image-additional a').removeClass('current');
		$(this).addClass('current');
	}).first().click();
	
	
	$('#tab-related .prd-block:last').addClass('last');
	
	if($('#tab-related .prd-block').length > 4){
		
		$('#tab-related .box-content').addClass('scrollPane');
		$('#tab-related').css({borderBottom:'none', paddingBottom:0});
		
		$('#tab-related').find('.scrollPane').jScrollPane({
			horizontalDragMinWidth: 40,
			horizontalDragMaxWidth: 40
		});
	}
	
});
//--></script><?php
					
/* LAYOUT 1
***************/
?><?php if ($this->config->get('RGen_ProInfo_Layout') == 'proinfo1') { ?>
<script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/info-layout1.js"></script>
<?php } else { ?><?php
					
/* LAYOUT 2
***************/
?><script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/info-layout2.js"></script>
<?php } ?><?php

					
/* DEFAULT OPENCART JS
***************/
?>
<script type="text/javascript"><!--
$(document).ready(function(e) {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5
	});
});
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});

//--></script>

<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('.message').prepend('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('.message').prepend('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data.success) {
				$('.message').prepend('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 

<?php echo $footer; ?>