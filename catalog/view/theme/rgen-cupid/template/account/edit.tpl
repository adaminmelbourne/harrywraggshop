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
		?><?php echo $column_left; ?>
		<?php echo $column_right; ?><?php
		
		
		/* PAGE CONTENT
		***************/
		?><div id="content-body">
			<?php echo $content_top; ?>
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				<div class="box-form">
					<h2 class="header-3"><?php echo $text_your_details; ?></h2>
					<div class="content">
						<table class="form">
							<tr>
								<td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
								<td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
									<?php if ($error_firstname) { ?>
									<span class="error"><?php echo $error_firstname; ?></span>
									<?php } ?></td>
							</tr>
							<tr>
								<td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
								<td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
									<?php if ($error_lastname) { ?>
									<span class="error"><?php echo $error_lastname; ?></span>
									<?php } ?></td>
							</tr>
							<tr>
								<td><span class="required">*</span> <?php echo $entry_email; ?></td>
								<td><input type="text" name="email" value="<?php echo $email; ?>" />
									<?php if ($error_email) { ?>
									<span class="error"><?php echo $error_email; ?></span>
									<?php } ?></td>
							</tr>
							<tr>
								<td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
								<td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
									<?php if ($error_telephone) { ?>
									<span class="error"><?php echo $error_telephone; ?></span>
									<?php } ?></td>
							</tr>
							<tr>
								<td><?php echo $entry_fax; ?></td>
								<td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
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
