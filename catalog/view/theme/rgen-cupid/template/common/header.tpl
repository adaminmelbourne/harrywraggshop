<!DOCTYPE html>

	<!--[if lt IE 7]> <html dir="<?php echo $direction; ?>" class="no-js lt-ie9 lt-ie8 lt-ie7" lang="<?php echo $lang; ?>"> <![endif]-->
	<!--[if IE 7]>    <html dir="<?php echo $direction; ?>" class="no-js lt-ie9 lt-ie8" lang="<?php echo $lang; ?>"> <![endif]-->
	<!--[if IE 8]>    <html dir="<?php echo $direction; ?>" class="no-js lt-ie9" lang="<?php echo $lang; ?>"> <![endif]-->
	<!--[if gt IE 8]><!-->
	<html dir="<?php echo $direction; ?>" class="no-js" lang="<?php echo $lang; ?>">
	<!--<![endif]-->

<head>
	<base href="<?php echo $base; ?>" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width">
	
	
	<title><?php echo $title; ?></title>
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content="<?php echo $keywords; ?>" />
	<?php } ?>
	<?php if ($icon) { ?>
	<link href="<?php echo $icon; ?>" rel="icon" />
	<?php } ?>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	
	
	<?php
	
	/* JAVASCRIPTS
	=============================*/
	?>
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>
	
	<?php
	
	/* R.GEN JAVASCRIPTS
	=============================*/
	?>
	<script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/common.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/modernizr-2.6.1-respond-1.1.0.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-cupid/js/script.js"></script>
	<?php
	
	/* CSS FILES
	=============================*/
	?>
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="catalog/view/theme/rgen-cupid/stylesheet/normalize.min.css">
	<link rel="stylesheet" href="catalog/view/theme/rgen-cupid/stylesheet/bootstrap-tooltip.css">
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-cupid/stylesheet/stylesheet.css" />
	
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<?php if ($this->config->get('RGen_customFile') == 1 && $this->config->get('RGen_CustomCSS') != '' ) { ?>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-cupid/stylesheet/<?php echo $this->config->get('RGen_CustomCSS'); ?>" />
	<?php }	?>
	
	<?php 
		$CustomTheme = $this->config->get('RGen_theme');
		
		if ($CustomTheme == 1) {
			include "catalog/view/theme/rgen-cupid/template/common/RGen_theme_setting.php";
		}			
	?>
	
	<?php echo $google_analytics; ?>

</head>

<body>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->
<div id="container"><?php
	
	/* HEADER OTHER INFORMATION 
	=============================*/
	?><div id="header-container">
		<header class="wrapper clearfix" id="header">
			
			<?php if ($logo) { ?>
			<div id="logo" <?php if($this->config->get('RGen_Logo') != ''){ ?>style="margin-top:<?php echo $this->config->get('RGen_Logo'); ?>px;"<?php } ?>><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
			<?php } ?>
			
			<div id="welcome">
				<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
				<?php } else { ?>
				<?php echo $text_logged; ?>
				<?php } ?>
			</div>
			
			<div class="header-options">
				<a href="<?php echo $account; ?>" data-placement="bottom" title="<?php echo $text_account; ?>" class="icon-myaccount"><?php echo $text_account; ?></a>
				<a href="<?php echo $wishlist; ?>" data-placement="bottom" title="<?php echo $text_wishlist; ?>" class="icon-wishlist" id="wishlist-total"><?php echo $text_wishlist; ?></a>
				<?php echo $currency; ?>
				<?php echo $language; ?>
				<?php echo $cart; ?>
				<div id="search">
					<?php if ($filter_name) { ?>
					<input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
					<?php } else { ?>
					<input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" />
					<?php } ?>
					<div class="button-search"></div>
				</div>
			</div>
			
		</header>
		
		<?php
		
		/* MAIN NAVIGATION SECTION
		=============================*/
		?><nav class="menu">
			<?php if ($categories) { ?>
				<ul>
					<?php foreach ($categories as $category) { ?>
					<li><a href="<?php echo $category['href']; ?>" class="top-lvl"><?php echo $category['name']; ?></a>
						<?php if ($category['children']) { ?>
						<div>
							<?php for ($i = 0; $i < count($category['children']);) { ?>
							<ul>
								<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
								<?php for (; $i < $j; $i++) { ?>
								<?php if (isset($category['children'][$i])) { ?>
								<li><a href="<?php echo $category['children'][$i]['href']; ?>" class="sub-lvl"><?php echo $category['children'][$i]['name']; ?></a></li>
								<?php } ?>
								<?php } ?>
							</ul>
							<?php } ?>
						</div>
						<?php } ?>
					</li>
					<?php } ?>
				</ul>
			<?php } ?>
			
			<?php if ($categories) { ?>
				<select onchange="location = this.value">
					<?php foreach ($categories as $category) { ?>
						<option>Menu</option>
						<option class="top-lvl" value="<?php echo $category['href']; ?>">
							<?php echo $category['name']; ?>
						</option>
						<?php if ($category['children']) { ?>
						
							<?php for ($i = 0; $i < count($category['children']);) { ?>
							
								<?php $j = $i + ceil(count($category['children'])); ?>
								<?php for (; $i < $j; $i++) { ?>
								<?php if (isset($category['children'][$i])) { ?>
								<option class="sub-lvl" value="<?php echo $category['children'][$i]['href']; ?>">
								<?php echo $category['children'][$i]['name']; ?>
								</option>
								<?php } ?>
								<?php } ?>
							
							<?php } ?>
						
						<?php } ?>
					<?php } ?>
				</select>
			<?php } ?>
			
		</nav>
	</div>
	



<div id="notification"></div>
