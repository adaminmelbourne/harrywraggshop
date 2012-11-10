<style type="text/css">
body { 
	background:<?php if($this->config->get('RGen_bodyBgImg') != ''){ ?>url(image/<?php echo $this->config->get('RGen_bodyBgImg'); ?>) <?php echo $this->config->get('RGen_bodyBgImgRepeat'); ?> <?php echo $this->config->get('RGen_bodyBgImgPosition'); ?><?php } ?> <?php if($this->config->get('RGen_bodyBg') != ''){ ?>#<?php echo $this->config->get('RGen_bodyBg'); ?><?php } ?>;
	<?php if($this->config->get('RGen_fontColor') != ''){ ?>
	color:#<?php echo $this->config->get('RGen_fontColor'); ?>;
	<?php } ?>
	}

/* Page background */
#container {
	<?php if($this->config->get('RGen_pageBg') != ''){ ?>
	background:<?php if($this->config->get('RGen_pageBgImg') != ''){ ?>url(image/<?php echo $this->config->get('RGen_pageBgImg'); ?>) <?php echo $this->config->get('RGen_pageBgImgRepeat'); ?> <?php echo $this->config->get('RGen_pageBgImgPosition'); ?><?php } ?> <?php echo $this->config->get('RGen_pageBg'); ?>;
	<?php } ?>
	
	<?php if($this->config->get('RGen_pageShadow') != ''){ ?>
	-webkit-box-shadow: 0px 0px 8px 0px <?php echo $this->config->get('RGen_pageShadow'); ?>;'
	box-shadow: 0px 0px 8px 0px <?php echo $this->config->get('RGen_pageShadow'); ?>;
	<?php } ?>
}

/* General font colour */
<?php if($this->config->get('RGen_fontColor') != ''){ ?>
p,
.category-info p,
.tab-content{ color:#<?php echo $this->config->get('RGen_fontColor'); ?>; }
<?php } ?>

<?php if($this->config->get('RGen_Logo') != ''){ ?>
#logo { margin-top:<?php echo $this->config->get('RGen_Logo'); ?>px; }
<?php } ?>


/* GLOBAL COLOUR 1 */
<?php if($this->config->get('RGen_globalColour') != ''){ ?>
.htabs,
.pagination,
.product-info,
.no-filter .refine-search,
.product-filter,
.product-info .cart span a.plus:hover,
.product-info .cart span a.minus:hover,
.product-info .cart > div > .icon-cart:hover,
.product-info .cart > div > a:hover,
.store-home .flex-control-paging li a {
	border-color: #<?php echo $this->config->get('RGen_globalColour'); ?>;
}
.menu { border-bottom-color: #<?php echo $this->config->get('RGen_globalColour'); ?> }
.htabs a.selected,
.checkout-heading,
.compare-info thead td,
.compare-info thead tr td:first-child,
.small-prd-block .icon-cart:hover,
.small-prd-block .icon-wishlist:hover,
.small-prd-block .icon-compare:hover,
.small-prd-block .icon-more:hover,
#language ul,
#currency ul,
.product-info .cart > div > .icon-cart:hover,
.product-info .cart > div > a:hover,
.product-info .cart span a.plus:hover,
.product-info .cart span a.minus:hover,
.refine-search h2,
.jspVerticalBar .jspDrag,
.jspHorizontalBar .jspDrag,
.store-home .flex-control-nav,
.store-home .flex-control-paging li a:hover {
	background-color: #<?php echo $this->config->get('RGen_globalColour'); ?>;
}
<?php } ?>

<?php if($this->config->get('RGen_globalColour1') != ''){ ?>
.prd-block ul li a:hover,
.cart-module .highlight:hover,
.wishlist-info .action a.icon-cart:hover,
.brands-a2z a:hover,
.social a:hover  {
	border-color: #<?php echo $this->config->get('RGen_globalColour1'); ?>;
}
.menu > ul > li:hover > a.top-lvl,
.menu > ul > li > div,
.header-options .icon-myaccount:hover,
.header-options .icon-wishlist:hover,
#language:hover ul li:hover,
#currency:hover ul li:hover,
#search .button-search:hover,
.col-prd ul li a:hover,
.prd-block ul li a:hover,
.refine-search .category-list li a:hover,
.info-wrapper .x:hover,
.product-info .cart > div > .icon-cart,
.cart-module .highlight:hover,
.wishlist-info .action a.icon-cart:hover,
.checkout-heading a,
.brands-a2z a:hover,
.social a:hover,
.button:hover,
input.button:hover,
.sml-button:hover,
.dark-bt,
#confirm .payment .button,
.link-bt:hover  {
	background-color: #<?php echo $this->config->get('RGen_globalColour1'); ?>;
}
<?php } ?>

<?php if($this->config->get('RGen_globalColourRing') != ''){ ?>
.flex-control-paging li a { border-color:<?php echo $this->config->get('RGen_globalColourRing'); ?>; }
.store-home .flex-control-paging li a.flex-active { background-color:<?php echo $this->config->get('RGen_globalColourRing'); ?>; }
<?php } ?>


/* BUTTONS */
.button, .sml-button {
	<?php if($this->config->get('RGen_btColor') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor'); ?> !important;<?php } ?>
	}
.button:hover, .sml-button:hover {
	<?php if($this->config->get('RGen_btColor_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor_hover'); ?>;<?php } ?>
	}
.dark-bt {
	<?php if($this->config->get('RGen_btColor1') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor1'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor1') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor1'); ?> !important;<?php } ?>
	}
.dark-bt:hover {
	<?php if($this->config->get('RGen_btColor1_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor1_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor1_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor1_hover'); ?> !important;<?php } ?>
	}
.link-bt,
.checkout-heading a {
	<?php if($this->config->get('RGen_LinkBtColor') != ''){ ?>background:#<?php echo $this->config->get('RGen_LinkBtColor'); ?> !important;<?php } ?>
	<?php if($this->config->get('RGen_LinkBtFontColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkBtFontColor'); ?>;<?php } ?>
	}
.link-bt:hover,
.checkout-heading a:hover {
	<?php if($this->config->get('RGen_LinkBtColor_hover') != ''){ ?>background:#<?php echo $this->config->get('RGen_LinkBtColor_hover'); ?> !important;<?php } ?>
	<?php if($this->config->get('RGen_LinkBtFontColor_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkBtFontColor_hover'); ?>;<?php } ?>
	}
a, a:visited, a b,
#footer .column a,
.col-links > ul > li > a,
.col-links > ul > li ul > li > a {
	<?php if($this->config->get('RGen_LinkColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkColor'); ?>;<?php } ?>
	}
a:hover,
#footer .column a:hover,
.col-links > ul > li a:hover,
.col-links > ul > li ul > li > a:hover {
	<?php if($this->config->get('RGen_LinkColor_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkColor_hover'); ?>;<?php } ?>
	}

.store-home .flex-control-paging li a.flex-active,
.store-home .flex-control-paging li.active {
	<?php if($this->config->get('RGen_globalColourRing') != ''){ ?>
	background:<?php echo $this->config->get('RGen_globalColourRing'); ?>;
	<?php } ?>	
}

	
/* HEADERS */
<?php if($this->config->get('RGen_Header') != ''){ ?>
.header-1, .header-2, .header-3, .header-4, .column .box-heading, .pagehead h1, .popup-box h1 {
	color:#<?php echo $this->config->get('RGen_Header'); ?>;
	}
<?php } ?>


/* TABLE LIST */
table.list thead td,
.wishlist-info thead td,
.cart-info thead td,
.compare-info thead td {
	<?php if($this->config->get('RGen_tableListHeaderFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_tableListHeaderFont'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListHeader') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_tableListHeader'); ?>;<?php } ?>
	}
table.list td,
.wishlist-info tbody td,
.cart-info tbody td,
.compare-info td {
	<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListBorder_right') != ''){ ?>border-right:1px solid #<?php echo $this->config->get('RGen_tableListBorder_right'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_tableListFont'); ?>;<?php } ?>
	}
<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>
.cart-total tr.last td,
.cart-total .total-amount td {
	border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;
	}
<?php } ?>

<?php if($this->config->get('RGen_tableListHeaderFont') != ''){ ?>
.compare-info tr td:first-child  {
	color:#<?php echo $this->config->get('RGen_tableListHeaderFont'); ?> !important;
	}
<?php } ?>


/* Main navigation */
<?php if($this->config->get('RGen_Nav') != ''){ ?>
.menu { background-color:<?php echo $this->config->get('RGen_Nav'); ?> !important; }
<?php } ?>

<?php if($this->config->get('RGen_NavFont') != ''){ ?>
.menu > ul > li > a.top-lvl {
	color:#<?php echo $this->config->get('RGen_NavFont'); ?>;
	}
<?php } ?>

.menu > ul > li:hover > a.top-lvl {
	<?php if($this->config->get('RGen_Nav_hover') != ''){ ?>background-color:<?php echo $this->config->get('RGen_Nav_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavFont_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_NavFont_hover'); ?>;<?php } ?>
	}

<?php if($this->config->get('RGen_NavSub') != ''){ ?>
.menu > ul > li > div { background-color:<?php echo $this->config->get('RGen_NavSub'); ?>; }	
<?php } ?>

.menu > ul > li ul > li > a.sub-lvl {
	<?php if($this->config->get('RGen_NavSubFont') != ''){ ?>color: <?php echo $this->config->get('RGen_NavSubFont'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavSubBorder') != ''){ ?>border-bottom-color:<?php echo $this->config->get('RGen_NavSubBorder'); ?>;<?php } ?>
	}
.menu > ul > li ul > li > a.sub-lvl:hover {
	<?php if($this->config->get('RGen_NavSub_hover') != ''){ ?>background-color: <?php echo $this->config->get('RGen_NavSub_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavSubFont_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_NavSubFont_hover'); ?>;<?php } ?>
	}


/* PRODUCT BOX */
<?php if($this->config->get('RGen_RefinCateBg') != ''){ ?>
.refine-search {
	background-color:#<?php echo $this->config->get('RGen_RefinCateBg'); ?>;
}
<?php } ?> 	
.refine-search h2 {
	<?php if($this->config->get('RGen_RefinCateHdBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_RefinCateHdBg'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_RefinCateHdFontColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_RefinCateHdFontColor'); ?>;<?php } ?>
}
<?php if($this->config->get('RGen_RefinCateHdBg') != ''){ ?>
.product-filter {
	border-color:#<?php echo $this->config->get('RGen_RefinCateHdBg'); ?>;	
}
<?php } ?>
<?php if($this->config->get('RGen_RefinCateFontColour') != ''){ ?>
.refine-search .category-list li a { 
	color:#<?php echo $this->config->get('RGen_RefinCateFontColour'); ?>;
}
<?php } ?>

/* PRODUCT BOX */
<?php if($this->config->get('RGen_prdBack') != ''){ ?>
.prd-block,
.product-list .image,
.product-list .info-wrp,
.prd-block .info,
.col-prd {
	background-color:<?php echo $this->config->get('RGen_prdBack'); ?>;
	}
<?php } ?>

<?php if($this->config->get('RGen_prdHover_Bg') != ''){ ?>
.prd-block .image:hover .info,
.col-prd .image:hover .info{
	background-color:<?php echo $this->config->get('RGen_prdHover_Bg'); ?>;
	}
.product-list .info {
	background:none;
	}
<?php } ?> 

<?php if($this->config->get('RGen_prdName') != ''){ ?>
.prd-block .image:hover .name,
.col-prd .info .name {
	color:#<?php echo $this->config->get('RGen_prdName'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_prdText') != ''){ ?>
.prd-block .image .description {
	color:#<?php echo $this->config->get('RGen_prdText'); ?>;
	}
<?php } ?> 

<?php if($this->config->get('RGen_prdLinks') != ''){ ?>
.prd-block ul li a,
.col-prd ul li a {
	background-color:<?php echo $this->config->get('RGen_prdLinks'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_prdLinks_hover') != ''){ ?>
.prd-block ul li a:hover,
.col-prd ul li a:hover {
	background-color:<?php echo $this->config->get('RGen_prdLinks_hover'); ?>;
	border-color:<?php echo $this->config->get('RGen_prdLinks_hover'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_OldPrice') != ''){ ?>
.prd-block .price .price-old, 
.prd-block .price .price-tax,
.col-prd .price-old {
	color: #<?php echo $this->config->get('RGen_OldPrice'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_Price') != ''){ ?>
.prd-block .price .price-new,
.prd-block .price .price-block,
.product-list .prd-block .price .price-new,
.col-prd .price {
	color:#<?php echo $this->config->get('RGen_Price'); ?> !important;
	}
<?php } ?>


/* SLIDE SHOW PRODUCT */
.slidshow-prd .box-heading {
	<?php if($this->config->get('RGen_featuredTitleBg') != ''){ ?>background-color:<?php echo $this->config->get('RGen_featuredTitleBg'); ?> !important;<?php } ?> 
	<?php if($this->config->get('RGen_featuredTitleFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_featuredTitleFont'); ?>;<?php } ?> 
	}
.slidshow-prd .box-product {
	<?php if($this->config->get('RGen_featuredBg') != ''){ ?>background:<?php echo $this->config->get('RGen_featuredBg'); ?>;<?php } ?>
}
.small-prd-block .info {
	<?php if($this->config->get('RGen_featuredHover_Bg') != ''){ ?>background:<?php echo $this->config->get('RGen_featuredHover_Bg'); ?>;<?php } ?> 	
}
.small-prd-block .info a.name {
	<?php if($this->config->get('RGen_featuredPrdText') != ''){ ?>color:#<?php echo $this->config->get('RGen_featuredPrdText'); ?>;<?php } ?> 
	}
.small-prd-block .price {
	<?php if($this->config->get('RGen_featuredPriceBg') != ''){ ?>background:<?php echo $this->config->get('RGen_featuredPriceBg'); ?>;<?php } ?> 
}
.small-prd-block .price-block,
.small-prd-block .price .price-new {
	<?php if($this->config->get('RGen_featuredPrice') != ''){ ?>color: #<?php echo $this->config->get('RGen_featuredPrice'); ?>;<?php } ?> 	
}
.small-prd-block .price .price-old {
	<?php if($this->config->get('RGen_featuredPriceOld') != ''){ ?>color: #<?php echo $this->config->get('RGen_featuredPriceOld'); ?>;<?php } ?> 
}
.small-prd-block ul li a {
	<?php if($this->config->get('RGen_featuredCrtBt') != ''){ ?>background-color:<?php echo $this->config->get('RGen_featuredCrtBt'); ?>;<?php } ?> 
}
.small-prd-block ul li a:hover {
	<?php if($this->config->get('RGen_featuredCrtBt_hover') != ''){ ?>background-color:<?php echo $this->config->get('RGen_featuredCrtBt_hover'); ?> !important;<?php } ?>
}
.slidshow-prd .jspVerticalBar .jspDrag {
	<?php if($this->config->get('RGen_featuredArrow') != ''){ ?>background-color:<?php echo $this->config->get('RGen_featuredArrow'); ?>;<?php } ?> 
}


/* FOOTER */

#footer .contact-info span {
	background-color:<?php echo $this->config->get('RGen_contactIcons'); ?>;	
}
.footer-bt .social a {
	<?php if($this->config->get('RGen_FooterSocial') != ''){ ?>background-color:<?php echo $this->config->get('RGen_FooterSocial'); ?>;<?php } ?> 
	
}
.footer-bt .social a:hover {
	<?php if($this->config->get('RGen_FooterSocial_hover') != ''){ ?>background-color:<?php echo $this->config->get('RGen_FooterSocial_hover'); ?>; <?php } ?> 
	<?php if($this->config->get('RGen_featuredCrtBtRing_hover') != '') { ?>
	border-color:<?php echo $this->config->get('RGen_featuredCrtBtRing_hover'); ?>;
	<?php } ?>
		
}

	
<?php echo $this->config->get('RGen_CustomCSS'); ?>


</style>