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
		?><div id="content-body">
			<?php echo $content_top; ?>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				<div class="box-form">
					<h2 class="header-3"><?php echo $text_password; ?></h2>
					<div class="content">
						<table class="form">
							<tr>
								<td><span class="required">*</span> <?php echo $entry_password; ?></td>
								<td><input type="password" name="password" value="<?php echo $password; ?>" />
									<?php if ($error_password) { ?>
									<span class="error"><?php echo $error_password; ?></span>
									<?php } ?>
								</td>
							</tr>
							<tr>
								<td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
								<td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
									<?php if ($error_confirm) { ?>
									<span class="error"><?php echo $error_confirm; ?></span>
									<?php } ?></td>
							</tr>
						</table>
					</div>	
				</div>
				
				<div class="buttons">
					<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>
					<div class="right">
						<input type="submit" value="<?php echo $button_continue; ?>" class="button" />
					</div>
				</div>
			</form>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>