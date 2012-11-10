<?php echo $header; ?>
<div id="content" class="rgen-mod">
	<link rel="stylesheet" type="text/css" href="view/stylesheet/rgen-module.css" />
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<div class="box">
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				<div class="main clearfix">
					<div class="buttonbar">
						<h1><?php echo $heading_title; ?></h1>
						<a onclick="$('#form').submit();" class="button1"><?php echo $button_save; ?></a>
						<a onclick="location = '<?php echo $cancel; ?>';" class="button1 cancel"><?php echo $button_cancel; ?></a>
					</div>
					<div class="main-wrapper">
						<div class="vtabs" id="RGen_mainTabs">
							<a href="#RGen_layoutSettings">Layout Settings</a>
							<a href="#RGen_themeColours">Theme Colours</a>
							<a href="#RGen_customContact">Footer Custom Content</a>
							<a href="#RGen_quickContact">Footer Quick Contact</a>
							<a href="#RGen_sharingLinks">Footer Sharing Links</a>
						</div>
						<div id="RGen_layoutSettings" class="pane clearfix">
							<div>
								<h3 class="heading-1">Logo position</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td style="width:300px">Enter value to set logo from top</td>
											<td align="right"><input type="text" name="RGen_Logo" id="RGen_Logo" value="<?php echo $RGen_Logo; ?>"></td>
										</tr>
									</table>
								</div>
								<br />
								
								<h3 class="heading-1">Slide Show Settings</h3>
								<div id="slideshowSettings">
									<table border="0" width="100%">
										<tr>
											<td class="layouts" valign="top">
												<div class="sizeSetting">
													<span class="radio" style="margin-right:15px">
														<input id="FullSlideShow" name="RGen_Slideshow_Layouts" class="full" type="radio" <?php if ($RGen_Slideshow_Layouts == 'full') { ?>checked="checked"<?php }?> value="full" />
														<label class="button2" for="FullSlideShow"><span></span>Full size to display product modules on slideshow</label>	
													</span>
													<span class="radio">
														<input id="MediumSlideShow" name="RGen_Slideshow_Layouts" type="radio" <?php if ($RGen_Slideshow_Layouts == 'medium') { ?>checked="checked"<?php }?> value="medium" />
														<label class="button2" for="MediumSlideShow"><span></span>Medium size</label>
													</span>
													<div class="help" id="MediumSlideShow_help" style="margin:30px 30px 0 0; <?php if ($RGen_Slideshow_Layouts == 'medium') { ?>display:block;<?php }else { ?>display:none;<?php }?>"><strong>Note :</strong> Set banners from "<strong>System > Design > Banners</strong>" with medium size</div>
													<br /><br />
													<div id="slideshowMod" class="sub-section" style="<?php if ($RGen_Slideshow_Layouts == 'full') { ?>display:block;<?php }else { ?>display:none;<?php }?>">
														<h4 class="heading-2">Select modules to display on slide show</h4>
														<span class="help1"><strong>Note :</strong> Set banners from "<strong>System > Design > Banners</strong>" with full size</span>
														<table>
															<tr>
																<td>
																	Featured Products
																	<span class="checkbox">
																		<input id="RGen_SlideShow_Featured" name="RGen_SlideShow_Featured" type="checkbox" <?php if ($RGen_SlideShow_Featured) { ?>checked="checked"<?php }?> value="1" />
																		<label for="RGen_SlideShow_Featured">Check-me</label>
																	</span> 
																</td>
																<td>
																	Latest Products
																	<span class="checkbox">
																		<input id="RGen_SlideShow_Latest" name="RGen_SlideShow_Latest" type="checkbox" <?php if ($RGen_SlideShow_Latest) { ?>checked="checked"<?php }?> value="1" />
																		<label for="RGen_SlideShow_Latest">Check-me</label>
																	</span> 
																</td>
																<td>
																	Best Sellers
																	<span class="checkbox">
																		<input id="RGen_SlideShow_Best" name="RGen_SlideShow_Best" type="checkbox" <?php if ($RGen_SlideShow_Best) { ?>checked="checked"<?php }?> value="1" />
																		<label for="RGen_SlideShow_Best">Check-me</label>
																	</span>
																</td>
																<td>
																	Special Offers
																	<span class="checkbox">
																		<input id="RGen_SlideShow_Special" name="RGen_SlideShow_Special" type="checkbox" <?php if ($RGen_SlideShow_Special) { ?>checked="checked"<?php }?> value="1" />
																		<label for="RGen_SlideShow_Special">Check-me</label>
																	</span>
																</td>
															</tr>
														</table>
													</div>
												</div>
											</td>
											
											<td valign="top" class="col-frm1" width="200">
												
												<h3 class="heading-3">Slide show configuration</h3>
												<div>
													<label class="label">Animation type</label>
													<input type="radio" name="RGen_animationType" id="RGen_animationType" <?php if ($RGen_animationType == 'fade') { ?>checked="checked"<?php }?> value="fade" />
													<label for="RGen_animationType">Fade</label>
													<input type="radio" name="RGen_animationType" id="RGen_animationType" <?php if ($RGen_animationType == 'slide') { ?>checked="checked"<?php }?> value="slide" />
													<label for="RGen_animationType">Slide</label>
												</div>
												<div>
													<label class="label">Slideshow speed</label>
													<input style="width:100px;" type="text" id="RGen_slideshowSpeed" name="RGen_slideshowSpeed" value="<?php echo $RGen_slideshowSpeed; ?>" />
													<span class="help1">Integer: Set the speed of the slideshow cycling, in milliseconds</span>
												</div>
												<div>
													<label class="label">Animation speed</label>
													<input type="text" style="width:100px;" id="RGen_animationSpeed" name="RGen_animationSpeed" value="<?php echo $RGen_animationSpeed; ?>" />
													<span class="help1">Integer: Set the speed of animations, in milliseconds</span>
												</div>
											</td>
											
										</tr>
									</table>
									
									
									
								</div>
								
								<br />
								
								<h3 class="heading-1">Banner Position</h3>
								<div id="bannerLayouts">
									<table class="layouts">
										<tr>
											<td width="210" align="left">
												<span class="radio">
													<input id="RGen_Banner_Layout1" class="bnrL1" name="RGen_Banner_Layouts" type="radio" <?php if ($RGen_Banner_Layouts == 1) { ?>checked="checked"<?php }?> value="1" />
													<label class="button2" for="RGen_Banner_Layout1">
														<span></span>Display home page small banners beside slideshow
													</label>
												</span>
												<br />
												<span class="help" id="bnrL1_help" <?php if ($RGen_Banner_Layouts == 1) { ?>style="display:block;"<?php } else { ?>style="display:none;"<?php }?> ><strong>Note:</strong> Please upload new small banners from "<strong>System > Design > Banners</strong>" with appropriate size to set beside main slide show</span>
												<input id="SmallSlideShow" type="hidden" <?php if ($RGen_Banner_Layouts == 1) { ?>name="RGen_Slideshow_Layouts" value="small"<?php }?> />
											</td>
											<td width="210" align="left">
												<span class="radio">
													<input id="RGen_Banner_Layout2" name="RGen_Banner_Layouts" type="radio" <?php if ($RGen_Banner_Layouts == 2) { ?>checked="checked"<?php }?> value="2" />
													<label class="button2" for="RGen_Banner_Layout2">
														<span></span>Display home page small banners below slideshow
													</label>
													<span class="help" id="bnrL2_help" style="display:none;"><strong>Note:</strong> Please select slideshow size if not selected from above slide show size section</span>
												</span>
												
												
											</td>
										</tr>
									</table>
								</div>
								<br />
								
								<br />
								<h3 class="heading-1">
									Product Information Page Layout
								</h3>
								<div id="proinfoLayouts">
									<table class="pad15-r layouts">
										<tr>
											<td>
												<span class="radio">
													<input id="AdvancedLayout" name="RGen_ProInfo_Layout" type="radio" <?php if ($RGen_ProInfo_Layout == 'proinfo1') { ?>checked="checked"<?php } ?> value="proinfo1" />
													<label class="button2" for="AdvancedLayout">
														<span></span>Custom layout
													</label>
												</span>
												<span class="radio">
													<input id="DefaultLayout" name="RGen_ProInfo_Layout" type="radio" <?php if ($RGen_ProInfo_Layout == 'proinfo2') { ?>checked="checked"<?php } ?> value="proinfo2" />
													<label class="button2" for="DefaultLayout">
														<span></span>Full width without side column
													</label>
												</span>
												<span class="radio">
													<input id="WithColumn" type="radio" name="RGen_ProInfo_Layout" type="hidden" <?php if ($RGen_ProInfo_Layout == '') { ?>checked="checked"<?php } ?> value="" />
													<label class="button2" for="WithColumn">
														<span></span>Reset to Default layout support side column
													</label>
												</span>
											</td>
											
										</tr>
									</table>
									
								</div>
								
							</div>
							
						</div>
						
						<div id="RGen_themeColours" class="pane clearfix">
							<div>
								<h3 class="heading-1 buttonbar1">
									<table width="100%">
										<tr>
											<td>Add your own CSS file</td>
											<td>
												<a class="button2 pull-right" onclick="$('#RGen_CustomCSS').attr('value', '');">Reset</a>
												<span class="checkbox pull-right move15-r">
													<input id="RGen_customFile" name="RGen_customFile" type="checkbox" <?php if ($RGen_customFile) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_customFile">Own CSS</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td>Enter your CSS file name</td>
											<td>
												<input type="text" class="file-path" name="RGen_CustomCSS" id="RGen_CustomCSS" value="<?php echo $RGen_CustomCSS; ?>">
												<br />
												<span class="help1">
													- Save your CSS file into this folder ==> <strong>catalog/view/theme/rgen-cupid/stylesheet/</strong><br />
													- Just enter file name in above input (Example: "my.css")
												</span>
											</td>
										</tr>
									</table>
								</div>
								<br /><br />
								
								
							
								<h3 class="heading-1 buttonbar1">
									<table width="100%">
										<tr>
											<td>R.Gen Custom Theme</td>
											<td>
												<a class="button2 pull-right" onclick="$('.hex, .rgb').attr('value', '');$('.hex, .rgb').attr('style', '');$('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>');$('#RGen_bodyBgImg').attr('value', '');">Reset</a>
												<span class="checkbox pull-right move15-r">
													<input id="RGen_theme" name="RGen_theme" type="checkbox" <?php if ($RGen_theme) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_theme">Bestseller products</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>General Theme Colours</td>
											<td>
												<a class="button2 pull-right" onclick="$('#generalTheme').find('.hex, .rgb').attr('value', '');$('#generalTheme').find('.hex, .rgb').attr('style', '');$('#generalTheme').find('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>');$('#generalTheme').find('#RGen_bodyBgImg').attr('value', '');">Reset</a>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1" id="generalTheme">
									<h3 class="heading-3">Body colour &amp; Background image</h3>
									<table class="col-frm">
										<tr>
											<td>Background colour</td>
											<td><input type="text" class="hex" name="RGen_bodyBg" id="RGen_bodyBg" value="<?php echo $RGen_bodyBg; ?>"></td>
										</tr>
										<tr>
											<td>
												Background image<br />
											</td>
											<td>
												<table>
													<tr>
														<td>
															<input type="hidden" name="RGen_bodyBgImg" value="<?php echo $RGen_bodyBgImg; ?>" id="RGen_bodyBgImg" />
															<img src="<?php echo $RGen_bodyBgImg_preview; ?>" alt="" id="RGen_bodyBgImg_preview" class="PreviewImage" />
														</td>
														<td>
															<div style="margin-bottom:10px;">
																<a onclick="image_upload('RGen_bodyBgImg', 'RGen_bodyBgImg_preview');" class="button3">Upload</a>
																<a onclick="$('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_bodyBgImg').attr('value', '');" class="button3">Remove</a>
															</div>
															
															<select name="RGen_bodyBgImgRepeat" style="width:150px">
																<?php if ($RGen_bodyBgImgRepeat == 'no-repeat') { ?>
																<option value="no-repeat" selected="selected">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_bodyBgImgRepeat == 'repeat-x') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x" selected="selected">repeat-x</option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_bodyBgImgRepeat == 'repeat-y') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y" selected="selected">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } else { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat" selected="selected">repeat</option>
																<?php } ?>
															</select>
															
															<select name="RGen_bodyBgImgPosition" style="width:150px">
																<?php if ($RGen_bodyBgImgPosition == 'left top') { ?>
																<option value="left top" selected="selected">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_bodyBgImgPosition == 'right top') { ?>
																<option value="left top">left top</option>
																<option value="right top" selected="selected">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_bodyBgImgPosition == 'center top') { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top" selected="selected">center top</option>
																<option value="center center">center center</option>
																<?php } else { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center" selected="selected">center center</option>
																<?php } ?>
															</select>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									
									<h3 class="heading-3">Page colour &amp; Background image</h3>
									<table class="col-frm">
										<tr>
											<td>Background colour</td>
											<td><input type="text" class="rgb" name="RGen_pageBg" id="RGen_pageBg" value="<?php echo $RGen_pageBg; ?>"></td>
										</tr>
										<tr>
											<td>
												Background image<br />
											</td>
											<td>
												<table>
													<tr>
														<td>
															<input type="hidden" name="RGen_pageBgImg" value="<?php echo $RGen_pageBgImg; ?>" id="RGen_pageBgImg" />
															<img src="<?php echo $RGen_pageBgImg_preview; ?>" alt="" id="RGen_pageBgImg_preview" class="PreviewImage" />
														</td>
														<td>
															<div style="margin-bottom:10px;">
																<a onclick="image_upload('RGen_pageBgImg', 'RGen_pageBgImg_preview');" class="button3">Upload</a>
																<a onclick="$('#RGen_pageBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_pageBgImg').attr('value', '');" class="button3">Remove</a>
															</div>
															
															<select name="RGen_pageBgImgRepeat" style="width:150px;">
																<?php if ($RGen_pageBgImgRepeat == 'no-repeat') { ?>
																<option value="no-repeat" selected="selected">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_pageBgImgRepeat == 'repeat-x') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x" selected="selected">repeat-x</option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_pageBgImgRepeat == 'repeat-y') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y" selected="selected">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } else { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat" selected="selected">repeat</option>
																<?php } ?>
															</select>
															<select name="RGen_pageBgImgPosition" style="width:150px;">
																<?php if ($RGen_pageBgImgPosition == 'left top') { ?>
																<option value="left top" selected="selected">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_pageBgImgPosition == 'right top') { ?>
																<option value="left top">left top</option>
																<option value="right top" selected="selected">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_pageBgImgPosition == 'center top') { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top" selected="selected">center top</option>
																<option value="center center">center center</option>
																<?php } else { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center" selected="selected">center center</option>
																<?php } ?>
															</select>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Outer shadow</td>
											<td><input type="text" class="rgb" name="RGen_pageShadow" id="RGen_pageShadow" value="<?php echo $RGen_pageShadow; ?>"></td>
										</tr>
									</table>
									
									<h3 class="heading-3">Common components</h3>
									<table class="col-frm">
										<tr>
											<td>Global colors</td>
											<td>
												<table>
													<tr>
														<td>Colour 1<br /><input type="text" class="hex" name="RGen_globalColour" id="RGen_globalColour" value="<?php echo $RGen_globalColour; ?>"></td>
														<td>Colour 2<br /><input type="text" class="hex" name="RGen_globalColour1" id="RGen_globalColour1" value="<?php echo $RGen_globalColour1; ?>"></td>
														<td>General content font color<br /><input type="text" class="hex" name="RGen_fontColor" id="RGen_fontColor" value="<?php echo $RGen_fontColor; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Button1 color</td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_btColor" id="RGen_btColor" value="<?php echo $RGen_btColor; ?>"></td>
														<td>Normal text<br /><input type="text" class="hex" name="RGen_btFontColor" id="RGen_btFontColor" value="<?php echo $RGen_btFontColor; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_btColor_hover" id="RGen_btColor_hover" value="<?php echo $RGen_btColor_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_btFontColor_hover" id="RGen_btFontColor_hover" value="<?php echo $RGen_btFontColor_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Button2 color</td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_btColor1" id="RGen_btColor1" value="<?php echo $RGen_btColor1; ?>"></td>
														<td>Normal text<br /><input type="text" class="hex" name="RGen_btFontColor1" id="RGen_btFontColor1" value="<?php echo $RGen_btFontColor1; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_btColor1_hover" id="RGen_btColor1_hover" value="<?php echo $RGen_btColor1_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_btFontColor1_hover" id="RGen_btFontColor1_hover" value="<?php echo $RGen_btFontColor1_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>General link button color</td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_LinkBtColor" id="RGen_LinkBtColor" value="<?php echo $RGen_LinkBtColor; ?>"></td>
														<td>Normal Text<br /><input type="text" class="hex" name="RGen_LinkBtFontColor" id="RGen_LinkBtFontColor" value="<?php echo $RGen_LinkBtFontColor; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_LinkBtColor_hover" id="RGen_LinkBtColor_hover" value="<?php echo $RGen_LinkBtColor_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_LinkBtFontColor_hover" id="RGen_LinkBtFontColor_hover" value="<?php echo $RGen_LinkBtFontColor_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>General link color</strong></td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_LinkColor" id="RGen_LinkColor" value="<?php echo $RGen_LinkColor; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_LinkColor_hover" id="RGen_LinkColor_hover" value="<?php echo $RGen_LinkColor_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>General headers</td>
											<td><input type="text" class="hex" name="RGen_Header" id="RGen_Header" value="<?php echo $RGen_Header; ?>"></td>
										</tr>
										<tr>
											<td>General table list</td>
											<td>
												<table>
													<tr>
														<td>Header<br /><input type="text" class="hex" name="RGen_tableListHeader" id="RGen_tableListHeader" value="<?php echo $RGen_tableListHeader; ?>"></td>
														<td>Header text<br /><input type="text" class="hex" name="RGen_tableListHeaderFont" id="RGen_tableListHeaderFont" value="<?php echo $RGen_tableListHeaderFont; ?>"></td>
														<td>Content text<br /><input type="text" class="hex" name="RGen_tableListFont" id="RGen_tableListFont" value="<?php echo $RGen_tableListFont; ?>"></td>
														<td>Border bottom<br /><input type="text" class="hex" name="RGen_tableListBorder_bottom" id="RGen_tableListBorder_bottom" value="<?php echo $RGen_tableListBorder_bottom; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Slide show dot color</td>
											<td><input type="text" class="rgb" name="RGen_globalColourRing" id="RGen_globalColourRing" value="<?php echo $RGen_globalColourRing; ?>"></td>
										</tr>
									</table>
									<h3 class="heading-3">Main navigation</h3>
									<table class="col-frm">
										<tr>
											<td>Menu bar</td>
											<td>
												<table>
													<tr>
														<td>Menu bar<br /><input type="text" class="rgb" name="RGen_Nav" id="RGen_Nav" value="<?php echo $RGen_Nav; ?>"></td>
														<td>Menu items text<br /><input type="text" class="hex" name="RGen_NavFont" id="RGen_NavFont" value="<?php echo $RGen_NavFont; ?>"></td>
													</tr>
													<tr>
														<td>Menu items hover<br /><input type="text" class="rgb" name="RGen_Nav_hover" id="RGen_Nav_hover" value="<?php echo $RGen_Nav_hover; ?>"></td>
														<td>Menu items hover text<br /><input type="text" class="hex" name="RGen_NavFont_hover" id="RGen_NavFont_hover" value="<?php echo $RGen_NavFont_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Menu dropdown</td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="rgb" name="RGen_NavSub" id="RGen_NavSub" value="<?php echo $RGen_NavSub; ?>"></td>
														<td>Normal text<br /><input type="text" class="hex" name="RGen_NavSubFont" id="RGen_NavSubFont" value="<?php echo $RGen_NavSubFont; ?>"></td>
													</tr>
													<tr>
														<td>Hover<br /><input type="text" class="rgb" name="RGen_NavSub_hover" id="RGen_NavSub_hover" value="<?php echo $RGen_NavSub_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_NavSubFont_hover" id="RGen_NavSubFont_hover" value="<?php echo $RGen_NavSubFont_hover; ?>"></td>
													</tr>
													<tr>
														<td>Border<br /><input type="text" class="rgb" name="RGen_NavSubBorder" id="RGen_NavSubBorder" value="<?php echo $RGen_NavSubBorder; ?>"></td>
														<td></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									
								</div>
								<br /><br />
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>Product list components</td>
											<td>
												<a class="button2 pull-right" onclick="$('#productList').find('.hex, .rgb').attr('value', '');$('#productList').find('.hex, .rgb').attr('style', '');">Reset</a>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1" id="productList">
									<h3 class="heading-3">Refine search on category page</h3>
									<table class="col-frm">
										<tr>
											<td>Refine search</td>
											<td>
												<table>
													<tr>
														<td>Title bg<br /><input type="text" class="hex" name="RGen_RefinCateHdBg" id="RGen_RefinCateHdBg" value="<?php echo $RGen_RefinCateHdBg; ?>"></td>
														<td>Title text color<br /><input type="text" class="hex" name="RGen_RefinCateHdFontColor" id="RGen_RefinCateHdFontColor" value="<?php echo $RGen_RefinCateHdFontColor; ?>"></td>
														<td>Block bg<br /><input type="text" class="hex" name="RGen_RefinCateBg" id="RGen_RefinCateBg" value="<?php echo $RGen_RefinCateBg; ?>"></td>
														<td>Category text color<br /><input type="text" class="hex" name="RGen_RefinCateFontColour" id="RGen_RefinCateFontColour" value="<?php echo $RGen_RefinCateFontColour; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									<h3 class="heading-3">Product block</h3>
									<table class="col-frm">
										<tr>
											<td>Product block</td>
											<td>
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="rgb" name="RGen_prdBack" id="RGen_prdBack" value="<?php echo $RGen_prdBack; ?>"></td>
														<td>Hover BG<br /><input type="text" class="rgb" name="RGen_prdHover_Bg" id="RGen_prdHover_Bg" value="<?php echo $RGen_prdHover_Bg; ?>"></td>
													</tr>
													<tr>
														<td>Name<br /><input type="text" class="hex" name="RGen_prdName" id="RGen_prdName" value="<?php echo $RGen_prdName; ?>"></td>
														<td>Description<br /><input type="text" class="hex" name="RGen_prdText" id="RGen_prdText" value="<?php echo $RGen_prdText; ?>"></td>
													</tr>
													<tr>
														<td>Buttons<br /><input type="text" class="rgb" name="RGen_prdLinks" id="RGen_prdLinks" value="<?php echo $RGen_prdLinks; ?>"></td>
														<td>Buttons hover<br /><input type="text" class="rgb" name="RGen_prdLinks_hover" id="RGen_prdLinks_hover" value="<?php echo $RGen_prdLinks_hover; ?>"></td>
													</tr>
													<tr>
														<td>Old price<br /><input type="text" class="hex" name="RGen_OldPrice" id="RGen_OldPrice" value="<?php echo $RGen_OldPrice; ?>"></td>
														<td>New price<br /><input type="text" class="hex" name="RGen_Price" id="RGen_Price" value="<?php echo $RGen_Price; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									
								</div>
								
								<br /><br />
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>Products display on slide show </td>
											<td>
												<a class="button2 pull-right" onclick="$('#slideshowPrd').find('.hex, .rgb').attr('value', '');$('#slideshowPrd').find('.hex, .rgb').attr('style', '');">Reset</a>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1" id="slideshowPrd">
									<h3 class="heading-3">Slide show product scroller</h3>
									<table class="col-frm">
										<tr>
											<td>Slide show product block</td>
											<td>
												<table>
													<tr>
														<td>Title<br /><input type="text" class="rgb" name="RGen_featuredTitleBg" id="RGen_featuredTitleBg" value="<?php echo $RGen_featuredTitleBg; ?>"></td>
														<td>Title text<br /><input type="text" class="hex" name="RGen_featuredTitleFont" id="RGen_featuredTitleFont" value="<?php echo $RGen_featuredTitleFont; ?>"></td>
														<td></td>
													</tr>
													<tr>	
														<td>Background<br /><input type="text" class="rgb" name="RGen_featuredBg" id="RGen_featuredBg" value="<?php echo $RGen_featuredBg; ?>"></td>
														<td>
															<table>
																<tr>
																	<td>Image hover bg<br /><input type="text" class="rgb" name="RGen_featuredHover_Bg" id="RGen_featuredHover_Bg" value="<?php echo $RGen_featuredHover_Bg; ?>"></td>
																	<td>Product name<br /><input type="text" class="hex" name="RGen_featuredPrdText" id="RGen_featuredPrdText" value="<?php echo $RGen_featuredPrdText; ?>"></td>
																</tr>
															</table>
														</td>
														<td></td>
													</tr>
													<tr>	
														<td>Buttons<br /><input type="text" class="rgb" name="RGen_featuredCrtBt" id="RGen_featuredCrtBt" value="<?php echo $RGen_featuredCrtBt; ?>"></td>
														<td>Buttons hover<br /><input type="text" class="rgb" name="RGen_featuredCrtBt_hover" id="RGen_featuredCrtBt_hover" value="<?php echo $RGen_featuredCrtBt_hover; ?>"></td>
														<td></td>
													</tr>
													<tr>
														<td>Price bg<br /><input type="text" class="rgb" name="RGen_featuredPriceBg" id="RGen_featuredPriceBg" value="<?php echo $RGen_featuredPriceBg; ?>"></td>	
														<td>
															<table>
																<tr>
																	<td>New price<br /><input type="text" class="hex" name="RGen_featuredPrice" id="RGen_featuredPrice" value="<?php echo $RGen_featuredPrice; ?>"></td>
																	<td>Old Price<br /><input type="text" class="hex" name="RGen_featuredPriceOld" id="RGen_featuredPriceOld" value="<?php echo $RGen_featuredPriceOld; ?>"></td>
																</tr>
															</table>
														</td>
														<td></td>
													</tr>
													<tr>		
														<td>Scroll arrow<br /><input type="text" class="rgb" name="RGen_featuredArrow" id="RGen_featuredArrow" value="<?php echo $RGen_featuredArrow; ?>"></td>
														<td></td>
														<td></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
								<br /><br />
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>Footer</td>
											<td>
												<a class="button2 pull-right" onclick="$('#footerColours').find('.hex, .rgb').attr('value', '');$('#footerColours').find('.hex, .rgb').attr('style', '');">Reset</a>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1" id="footerColours">
									<table class="col-frm">
										<tr>
											<td>Contact icons</td>
											<td><input type="text" class="rgb" name="RGen_contactIcons" id="RGen_contactIcons" value="<?php echo $RGen_contactIcons; ?>"></td>
										</tr>
										<tr>
											<td>Social buttons</td>
											<td>
												<table>
													<tr>
														<td>Normal<br /><input type="text" class="rgb" name="RGen_FooterSocial" id="RGen_FooterSocial" value="<?php echo $RGen_FooterSocial; ?>"></td>
														<td>Hover<br /><input type="text" class="rgb" name="RGen_FooterSocial_hover" id="RGen_FooterSocial_hover" value="<?php echo $RGen_FooterSocial_hover; ?>"></td>
													</tr>
													<tr>	
														<td>Border<br /><input type="text" class="rgb" name="RGen_FooterSocialRing" id="RGen_FooterSocialRing" value="<?php echo $RGen_FooterSocialRing; ?>"></td>
														<td>Border hover<br /><input type="text" class="rgb" name="RGen_FooterSocialRing_hover" id="RGen_FooterSocialRing_hover" value="<?php echo $RGen_FooterSocialRing_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>Background</td>
											<td><input type="text" class="hex" name="RGen_FooterBg" id="RGen_FooterBg" value="<?php echo $RGen_FooterBg; ?>"></td>
										</tr>
									</table>
								</div>
								
							</div>
						</div>
						
						<div id="RGen_customContact" class="pane clearfix">
							<div>
								<h3 class="heading-1 buttonbar1">
									<table width="100%">
										<tr>
											<td>R.Gen Custom Footer status</td>
											<td align="right">
												<select name="RGen_FT_Status_home" style="vertical-align:middle; margin:0 10px 0 0;">
													<?php if ($RGen_FT_Status_home == 'common/home') { ?>
													<option value="common/home" selected="selected">Display only on home page</option>
													<option value="all">Display on all pages</option>
													<?php } else { ?>
													<option value="common/home">Display only on home page</option>
													<option value="all" selected="selected">Display on all pages</option>
													<?php } ?>
												</select>
												<span class="checkbox" style="text-align:left">
													<input id="RGen_FT_Status" name="RGen_FT_Status" type="checkbox" <?php if ($RGen_FT_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_FT_Status">Footer status</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>About Us</td>
											<td>
												<span class="checkbox pull-right">
													<input id="RGen_FT_about_Status" name="RGen_FT_about_Status" type="checkbox" <?php if ($RGen_FT_about_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_FT_about_Status">About us</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td>Title</td>
											<td><input type="text" name="FT_about_Title" value="<?php echo $FT_about_Title; ?>"></td>
										</tr>
										<tr>
											<td>About Description</td>
											<td><textarea name="FT_about_Text"><?php echo $FT_about_Text; ?></textarea></td>
										</tr>
									</table>
								</div>
								<br /><br />
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>Twitter</td>
											<td>
												<span class="checkbox pull-right">
													<input id="RGen_FT_twitter_Status" name="RGen_FT_twitter_Status" type="checkbox" <?php if ($RGen_FT_twitter_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_FT_twitter_Status">Twitter</label>
												</span>
												
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td>Title</td>
											<td><input type="text" name="FT_twitter_Title" value="<?php echo $FT_twitter_Title; ?>"></td>
										</tr>
										<tr>
											<td>Number of tweets</td>
											<td>
												<select name="FT_twitter_Tweets">
													<option value="1"<?php if($FT_twitter_Tweets == '1') echo ' selected="selected"';?>>1</option>
													<option value="2"<?php if($FT_twitter_Tweets == '2') echo ' selected="selected"';?>>2</option>
													<option value="3"<?php if($FT_twitter_Tweets == '3') echo ' selected="selected"';?>>3</option>
												</select>
											</td>
										</tr>
										<tr>
											<td>Twitter username</td>
											<td><input type="text" name="FT_twitter_User" value="<?php echo $FT_twitter_User; ?>" /></td>
										</tr>
									</table>
								</div>
								
								<br /><br />
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td>Facebook</td>
											<td>
												<span class="checkbox pull-right">
													<input id="RGen_FT_fb_Status" name="RGen_FT_fb_Status" type="checkbox" <?php if ($RGen_FT_fb_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="RGen_FT_fb_Status">Facebook</label>
												</span>
												
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td>Title</td>
											<td><input type="text" name="FT_fb_Title" value="<?php echo $FT_fb_Title; ?>"></td>
										</tr>
										<tr>
											<td>Facebook page ID</td>
											<td><input type="text" name="FT_fb_ID" value="<?php echo $FT_fb_ID; ?>"></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						
						<div id="RGen_sharingLinks" class="pane clearfix">
							<div>
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Facebook</td>
											<td>
												<input type="text" name="socialLink_fb" value="<?php echo $socialLink_fb; ?>">
												<span class="checkbox pull-right">
													<input id="socialLink_fb_Status" name="socialLink_fb_Status" type="checkbox" <?php if ($socialLink_fb_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_fb_Status">Facebook</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Twitter</td>
											<td>
												<input type="text" name="socialLink_twitter" value="<?php echo $socialLink_twitter; ?>">
												<span class="checkbox pull-right">
													<input id="socialLink_twitter_Status" name="socialLink_twitter_Status" type="checkbox" <?php if ($socialLink_twitter_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_twitter_Status">Twitter</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Youtube</td>
											<td>
												<input type="text" name="socialLink_youtube" value="<?php echo $socialLink_youtube; ?>">
												<span class="checkbox pull-right">
													<input id="socialLink_youtube_Status" name="socialLink_youtube_Status" type="checkbox" <?php if ($socialLink_youtube_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_youtube_Status">Youtube</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
							
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Google+</td>
											<td>
												<input type="text" name="socialLink_google" value="<?php echo $socialLink_google; ?>">
												<span class="checkbox pull-right">
													<input id="socialLink_google_Status" name="socialLink_google_Status" type="checkbox" <?php if ($socialLink_google_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_google_Status">Google</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Mail to</td>
											<td>
												<span class="checkbox pull-right">
													<input id="socialLink_mailTo_Status" name="socialLink_mailTo_Status" type="checkbox" <?php if ($socialLink_mailTo_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_mailTo_Status">Mail to</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								
								<h3 class="heading-1">
									<table width="100%">
										<tr>
											<td width="150">Share this</td>
											<td>
												<span class="checkbox pull-right">
													<input id="socialLink_addThis_Status" name="socialLink_addThis_Status" type="checkbox" <?php if ($socialLink_addThis_Status) { ?>checked="checked"<?php }?> value="1" />
													<label for="socialLink_addThis_Status">Share this</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
							</div>
						</div>
						
						<div id="RGen_quickContact" class="pane clearfix">
							<div>
								<h3 class="heading-1 buttonbar1">
									<table width="100%">
										<tr>
											<td>Quick contact status</td>
											<td>
												<span class="checkbox pull-right">
													<input id="FT_Contact_status" name="FT_Contact_status" type="checkbox" <?php if ($FT_Contact_status) { ?>checked="checked"<?php }?> value="1" />
													<label for="FT_Contact_status">quickcontact</label>
												</span>
											</td>
										</tr>
									</table>
								</h3>
								<div class="sub-section1">
									<table class="col-frm">
										<tr>
											<td>Phone No.</td>
											<td>
												<input type="text" name="FT_Contact_ph" value="<?php echo $FT_Contact_ph; ?>" style="width:150px;">
												<input type="text" name="FT_Contact_ph1" value="<?php echo $FT_Contact_ph1; ?>" style="width:150px;">
												<span class="checkbox pull-right">
													<input id="FT_Contact_phStatus" name="FT_Contact_phStatus" type="checkbox" <?php if ($FT_Contact_phStatus) { ?>checked="checked"<?php }?> value="1" />
													<label for="FT_Contact_phStatus">Phone</label>
												</span>
											</td>
										</tr>
										<tr>
											<td>Fax No.</td>
											<td>
												<input type="text" name="FT_Contact_fax" value="<?php echo $FT_Contact_fax; ?>" style="width:150px;">
												<input type="text" name="FT_Contact_fax1" value="<?php echo $FT_Contact_fax1; ?>" style="width:150px;">
												<span class="checkbox pull-right">
													<input id="FT_Contact_faxStatus" name="FT_Contact_faxStatus" type="checkbox" <?php if ($FT_Contact_faxStatus) { ?>checked="checked"<?php }?> value="1" />
													<label for="FT_Contact_faxStatus">Fax</label>
												</span>
												
											</td>
										</tr>
										<tr>
											<td>Email</td>
											<td>
												<input type="text" name="FT_Contact_email" value="<?php echo $FT_Contact_email; ?>" style="width:150px;">
												<span class="checkbox pull-right">
													<input id="FT_Contact_emailStatus" name="FT_Contact_emailStatus" type="checkbox" <?php if ($FT_Contact_emailStatus) { ?>checked="checked"<?php }?> value="1" />
													<label for="FT_Contact_emailStatus">Fax</label>
												</span>
												
											</td>
										</tr>
									</table>
								</div>
								
							</div>
						</div>
						
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript" src="view/javascript/jquery/iphone-style-checkboxes.js"></script>

<script type="text/javascript"><!--
function image_upload(field, previewImg) {
	
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + previewImg).replaceWith('<img src="' + data + '" alt="" class="PreviewImage" id="' + previewImg + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 


<input id="helpImage" />
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
// SET FCK EDITOR FOR ABOUT US CONTENT
CKEDITOR.replace('FT_about_Text', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

$('#slideshowSettings .sizeSetting input[type="radio"]').click(function(){
	
	// SET SMALL SLIDESHOW OFF
	$('#SmallSlideShow').val('');
	$('#SmallSlideShow').removeAttr('name');
	
	var bnr = $('#RGen_Banner_Layout2').attr('checked');
	
	if($(this).hasClass('full') == true) {
		$('#slideshowMod').css({display:'block'});
		
		// SET SMALL SLIDESHOW OFF
		$('#SmallSlideShow').val('');
		
		// SET BANNER BESIDE SLIDESHOW OFF
		$('#RGen_Banner_Layout1').removeAttr('checked');
		$('#bnrL1_help').css({display:'none'});
		$('#MediumSlideShow_help').css({display:'none'});
		
		if(bnr == 'checked'){
			$('#RGen_Banner_Layout2').attr('checked', 'checked');
		}
	}else{
		$('#slideshowMod input[type="checkbox"]').removeAttr('checked');
		$('#slideshowMod').css({display:'none'});
		//$('#RGen_Banner_Layout2').attr('checked','checked');
		
		$('#MediumSlideShow_help').css({display:'block'});
		
		// SET BANNER BESIDE SLIDESHOW OFF
		$('#RGen_Banner_Layout1').removeAttr('checked');
		$('#bnrL1_help').css({display:'none'});
		
		if(bnr == 'checked'){
			$('#RGen_Banner_Layout2').attr('checked', 'checked');
		}
	}
});

$('#bannerLayouts input[type="radio"]').click(function(){
	$('#bannerLayouts .help').css({display:'none'});
	
	if($(this).hasClass('bnrL1') == true) {
		$('#SmallSlideShow').val('small');
		$('#SmallSlideShow').attr('name', 'RGen_Slideshow_Layouts');
		$('#bnrL1_help').css({display:'block'});
		
		// SET OFF SLIDE SHOW PRODUCTS
		$('#slideshowMod input[type="checkbox"]').removeAttr('checked');
		$('#slideshowMod').css({display:'none'});
		
		// SET OFF SLIDESHOW IN OTHER SIZE
		$('#slideshowSettings input[type="radio"]').removeAttr('checked');
		
	}else{
		$('#SmallSlideShow').val('');
		$('#bnrL2_help').css({display:'block'});
	}
});

$('#RGen_Tab_Featured').click(function(){
	$('#RGen_SlideShow_Featured').removeAttr('checked');
});

$('#RGen_Tab_Special').click(function(){
	$('#RGen_SlideShow_Special').removeAttr('checked');
});
$('#RGen_Tab_Latest').click(function(){
	$('#RGen_SlideShow_Latest').removeAttr('checked');
});
$('#RGen_Tab_Best').click(function(){
	$('#RGen_SlideShow_Best').removeAttr('checked');
});

$('#RGen_SlideShow_Featured').click(function(){
	$('#RGen_Tab_Featured').removeAttr('checked');
});

$('#RGen_SlideShow_Special').click(function(){
	$('#RGen_Tab_Special').removeAttr('checked');
});
$('#RGen_SlideShow_Latest').click(function(){
	$('#RGen_Tab_Latest').removeAttr('checked');
});
$('#RGen_SlideShow_Best').click(function(){
	$('#RGen_Tab_Best').removeAttr('checked');
});


/*
$('input[type="checkbox"]').click(function(){
	if($(this).val() == 0){
		$(this).val(1);
	}else{
		$(this).val(0);
	}
});

*/

function imgPopup (helpImg){
	$('#ThemeOverview').remove();
	$('#content').prepend('<div id="ThemeOverview" style="padding: 15px;"><img src="" /></div>');
	$('#ThemeOverview').dialog({
		dialogClass: "ThemeOverview-popup",
		open: function(event, ui) {
			$(this).find('img').attr('src',$(helpImg).attr('rel'));
			},
		title: 'Theme overview',
		bgiframe: false,
		width: 950,
		height: 600,
		resizable: false,
		modal: false,
		closeOnEscape: true
	});
}



$('.header-1 .toggleBt').click(function(){
	if($(this).parent().parent().parent().hasClass('open') == true){
		$(this).parent().parent().parent().removeClass('open');
		$(this).text('show')
	}else{
		$(this).parent().parent().parent().addClass('open');
		$(this).text('hide')
	}
});

$('.hex').each(function(index, element) {
	$(this).colorpicker({
		hsv:false,
		altField:$(this),
		showNoneButton:true,
		altProperties: 'background-color'
	});	
	$(this).click(function(){
		$('.ui-colorpicker').css({top:$(this).offset().top + 25});
	});
	
	if($(this).val() == ''){
		$(this).css({backgroundColor:"#fff"});
	}else{
		$(this).css({backgroundColor:"#"+$(this).val()});
	}
});
$('.rgb').each(function(index, element) {

	$(this).colorpicker({
		hsv:false,
		alpha:true,
		colorFormat: ['RGBA'],
		showNoneButton:true,
		select: function(event, color) {
					$(this).val(color.formatted);
				}
	});
	
	$(this).click(function(){
		$('.ui-colorpicker').css({top:$(this).offset().top + 25});
	});
});

$('select .normal').bind('select', function(){
	$('.normal-size').css({display:'block'});
	});

// RGEN SCRIPTS
$('#RGen_mainTabs a').tabs();





//--></script> 


<?php echo $footer; ?>