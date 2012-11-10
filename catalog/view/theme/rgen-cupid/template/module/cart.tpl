<div id="cart">
	<div class="heading">
		<a><span id="cart-total"><?php echo $text_items; ?></span></a>
	</div>
	<div class="content">
		<b class="cart-arrow"></b>
		<?php if ($products || $vouchers) { ?>
		<div class="mini-cart-info">
			<table>
				<?php foreach ($products as $product) { ?>
				<tr>
					<td class="image">
						<?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
						<?php } ?>
					</td>
					<td class="name">
						<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						<?php foreach ($product['option'] as $option) { ?>
						<span><strong><?php echo $option['name']; ?></strong> <?php echo $option['value']; ?></span><br />
						<?php } ?>
					</td>
					<td class="total">
						<strong><?php echo $product['quantity']; ?> x <?php echo $product['total']; ?></strong>
						<a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" class="remove-link" title="<?php echo $button_remove; ?>"><?php echo $button_remove; ?></a>
					</td>
				</tr>
				<?php } ?>
				<?php foreach ($vouchers as $voucher) { ?>
				<tr>
					<td class="image"><span><img src="catalog/view/theme/rgen-cupid-opencart/image/rgen/giftcard.png" alt="<?php echo $vouchers['description']; ?>" title="<?php echo $vouchers['description']; ?>" /></span></td>
					<td class="name"><?php echo $voucher['description']; ?></td>
					<td class="total">
						<strong>1 x <?php echo $voucher['amount']; ?></strong>
						<a onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" class="remove-link" title="<?php echo $button_remove; ?>"><?php echo $button_remove; ?></a>
					</td>
				</tr>
				<?php } ?>
			</table>
		</div>
		<div class="mini-cart-total">
			<div class="checkout">
				<a href="<?php echo $cart; ?>" class="sml-button"><?php echo $text_cart; ?></a><br />
				<a href="<?php echo $checkout; ?>" class="sml-button dark-bt"><?php echo $text_checkout; ?></a>
			</div>
			<table>
				<?php foreach ($totals as $total) { ?>
				<tr>
					<td align="right"><b><?php echo $total['title']; ?>:</b></td>
					<td align="right"><?php echo $total['text']; ?></td>
				</tr>
				<?php } ?>
			</table>
		</div>
		
		<?php } else { ?>
		<div class="empty">
			<span class="empty-cart">
			<?php echo $text_empty; ?>
			</span>
		</div>
		
		
		<?php } ?>
	</div>
</div>
