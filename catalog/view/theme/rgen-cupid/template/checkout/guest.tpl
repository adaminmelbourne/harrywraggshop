<div class="checkout-form">
	<div class="box-form left">
		<h2 class="header-3"><?php echo $text_your_details; ?></h2>
		<table class="form">
			<tr>
				<td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
				<td><input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
				<td><input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_email; ?></td>
				<td><input type="text" name="email" value="<?php echo $email; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
				<td><input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><?php echo $entry_fax; ?></td>
				<td><input type="text" name="fax" value="<?php echo $fax; ?>" class="large-field" /><br /></td>
			</tr>
		</table>
	</div>
	<div class="box-form left">
		<h2 class="header-3"><?php echo $text_your_address; ?></h2>
	
		<table class="form">
			<tr>
				<td><?php echo $entry_company; ?></td>
				<td><input type="text" name="company" value="<?php echo $company; ?>" class="large-field" /><br /></td>
			</tr>
			
			<tr style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
				<td><?php echo $entry_customer_group; ?></td>
				<td>
					<?php foreach ($customer_groups as $customer_group) { ?>
					<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
					<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
					<label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
					<br />
					<?php } else { ?>
					<input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
					<label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
					<br />
					<?php } ?>
					<?php } ?><br />
				</td>
			</tr>
			
			<tr id="company-id-display">
				<td><span id="company-id-required" class="required">*</span> <?php echo $entry_company_id; ?></td>
				<td><input type="text" name="company_id" value="<?php echo $company_id; ?>" class="large-field" /><br /></td>
			</tr>
			<tr id="tax-id-display">
				<td><span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?></td>
				<td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="large-field" /><br /></td>
			</tr>
			
			<tr>
				<td><span class="required">*</span> <?php echo $entry_address_1; ?></td>
				<td><input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><?php echo $entry_address_2; ?></td>
				<td><input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_city; ?></td>
				<td><input type="text" name="city" value="<?php echo $city; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span id="payment-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></td>
				<td><input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" /><br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_country; ?></td>
				<td>
					<select name="country_id" class="large-field">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($countries as $country) { ?>
						<?php if ($country['country_id'] == $country_id) { ?>
						<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
						<?php } ?>
						<?php } ?>
					</select>
				<br /></td>
			</tr>
			<tr>
				<td><span class="required">*</span> <?php echo $entry_zone; ?></td>
				<td><select name="zone_id" class="large-field"></select><br /></td>
			</tr>
		</table>
	</div>
</div>
<div class="buttons">
	<?php if ($shipping_required) { ?>
		<?php if ($shipping_address) { ?>
		<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
		<?php } else { ?>
		<input type="checkbox" name="shipping_address" value="1" id="shipping" />
		<?php } ?>
		<label for="shipping"><?php echo $entry_shipping; ?></label>
	<?php } ?>
	
	<div class="right">
		<input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button" />
	</div>
</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>  
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script> 