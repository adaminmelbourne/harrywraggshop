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
			<?php if ($success) { ?>

			<div class="success"><?php echo $success; ?></div>
			<?php } ?>
			<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
			<?php } ?>
			
			<?php echo $content_top; ?>
			
			<?php echo $text_description; ?>
			<div class="login-content">
				<div>
					<div class="left box-form">
						<h2 class="header-3"><?php echo $text_new_affiliate; ?></h2>
						<div class="content"><?php echo $text_register_account; ?> <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>
					</div>
					<div class="right box-form">
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<h2 class="header-3"><?php echo $text_returning_affiliate; ?></h2>
							<div class="content">
								<p><?php echo $text_i_am_returning_affiliate; ?></p>
								<label for="email"><?php echo $entry_email; ?></label>
								<input type="text" name="email" value="<?php echo $email; ?>" />

								<label for="password"><?php echo $entry_password; ?></label>
								<input type="password" name="password" value="<?php echo $password; ?>" />
								
								<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />

								<input type="submit" value="<?php echo $button_login; ?>" class="button" />
								<?php if ($redirect) { ?>
								<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
								<?php } ?>
							</div>
						</form>
					</div>
				</div>
			</div>
			
			<?php echo $content_bottom; ?>
		</div>
		
	</div>
</div>

<?php echo $footer; ?>