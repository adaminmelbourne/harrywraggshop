<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
	<div class="review-comment">
		<strong class="reviewer"><?php echo $review['author']; ?> <?php echo $text_on; ?> <?php echo $review['date_added']; ?></strong>
		<span class="date"><?php echo $review['date_added']; ?></span>
		<b class="rating sml-stars stars-<?php echo $review['rating']; ?>" title="<?php echo $review['reviews']; ?>"></b>
		<?php echo $review['text']; ?>
	</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="review-comment"><?php echo $text_no_reviews; ?></div>
<?php } ?>