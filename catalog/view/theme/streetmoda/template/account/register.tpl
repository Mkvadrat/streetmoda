<?php echo $header; ?>

	<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-returns"><?php echo $content_top; ?>

    <div id="content" class="bread-crumbs">
                <p>
<?php			
				$count = count($breadcrumbs);
				$i=1;
			foreach ($breadcrumbs as $breadcrumb) {
				if($i!=$count){

?>
                <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a><?php echo ' ' . $breadcrumb['separator']; ?>
<?php
				}else{
					echo '<i class="active"> '.$breadcrumb['text'] . '</i>'; 
				}		
				$i++;
			} 
?>
                </p>
    </div>
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
		<?php } ?>
		
		<div class="registration">
			<h3>РЕГИСТРАЦИЯ НОВОГО ПОЛЬЗОВАТЕЛЯ</h3>

			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
				<div style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
				<label><?php echo $entry_customer_group; ?></label>
				  <?php foreach ($customer_groups as $customer_group) { ?>
				  <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
				  <div class="radio">
					<label>
					  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
					  <?php echo $customer_group['name']; ?></label>
				  </div>
				  <?php } else { ?>
				  <div class="radio">
					<label>
					  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
					  <?php echo $customer_group['name']; ?></label>
				  </div>
				  <?php } ?>
				  <?php } ?>
				</div>
			
				<p>Ваше имя:<span>*</span></p>
				<input type="text" name="firstname" value="<?php echo $firstname; ?>" />
				<?php if ($error_firstname) { ?>
				<div class="text-danger"><?php echo $error_firstname; ?></div>
				<?php } ?>
				
				<p>Ваша фамилия:<span>*</span></p>
				<input type="text" name="lastname" value="<?php echo $lastname; ?>" />
				<?php if ($error_lastname) { ?>
				<div class="text-danger"><?php echo $error_lastname; ?></div>
				<?php } ?>

				<p>Мобильный телефон:<span>*</span></p>
				<input type="tel" name="telephone" value="<?php echo $telephone; ?>" />
				<?php if ($error_telephone) { ?>
				<div class="text-danger"><?php echo $error_telephone; ?></div>
				<?php } ?>

				<p>WhatsApp:</p>
				<input type="text" name="whatsapp" value="<?php echo $whatsapp; ?>" />

				<p>Viber:</p>
				<input type="text" name="viber" value="<?php echo $viber; ?>" />

				<p>Skype:</p>
				<input type="text" name="skype" value="<?php echo $skype; ?>" />

				<p>Страна: <span>*</span></p>
				<select name="country_id" id="input-country">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($countries as $country) { ?>
                <?php if ($country['country_id'] == $country_id) { ?>
                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                <?php } ?>
                <?php } ?>
				</select>
				<?php if ($error_country) { ?>
				<div class="text-danger"><?php echo $error_country; ?></div>
				<?php } ?><br>
				
				<p>Город: <span>*</span></p>
				<select name="zone_id" id="input-zone">
				</select>
				<?php if ($error_zone) { ?>
				<div class="text-danger"><?php echo $error_zone; ?></div>
				<?php } ?>
					
				<p>E-mail <span>*</span></p>
				<input type="email" name="email" value="<?php echo $email; ?>" />
				<?php if ($error_email) { ?>
				<div class="text-danger"><?php echo $error_email; ?></div>
				<?php } ?>

				<p>Пароль: <span>*</span></p>
				<input type="password" name="password" value="<?php echo $password; ?>" />
				<?php if ($error_password) { ?>
				<div class="text-danger"><?php echo $error_password; ?></div>
				<?php } ?>

				<p>Подтверждение пароля: <span>*</span></p>
				<input type="password" name="confirm" value="<?php echo $confirm; ?>" />
				<?php if ($error_confirm) { ?>
				<div class="text-danger"><?php echo $error_confirm; ?></div>
				<?php } ?>
				
				<p>Дополнительная информация:</p>
				<textarea name="more_information" value="<?php echo $more_information; ?>"></textarea><br>
				
				<!--Скрытые поля для редактировани -->
				<input type="hidden" name="fax" value="<?php echo $fax; ?>" />
				<input type="hidden" name="company" value="<?php echo $company; ?>" />
				<input type="hidden" name="address_1" value="<?php echo $address_1; ?>" />
				<input type="hidden" name="address_2" value="<?php echo $address_2; ?>" />
				<input type="hidden" name="city" value="<?php echo $city; ?>" />
				<input type="hidden" name="postcode" value="<?php echo $postcode; ?>" />
				<!--Скрытые поля для редактировани -->
				
				<?php if ($newsletter) { ?>
				<p>Получать новости магазина: <input type="checkbox" name="newsletter" value="1" checked="checked" /></p>
				<?php } else { ?>
				<p>Получать новости магазина: <input type="checkbox" name="newsletter" value="0" checked="checked" /></p>
				<?php } ?>
				
				<?php echo $captcha; ?>
				<div class="agree-block"><?php if ($text_agree) { ?>
				<?php echo $text_agree; ?>
				<?php if ($agree) { ?>
				<input type="checkbox" name="agree" value="1" checked="checked" />
				<?php } else { ?>
				<input type="checkbox" name="agree" value="1" />
				<?php } ?><br/>
				<input class="submit" type="submit" value="Продолжить">
				<?php } else { ?>
				<input class="submit" type="submit" value="Продолжить">
				<?php } ?></div>
				
				<p class="necessarily"><span>*</span> - поля, обязательные для заполнения </p>
			</form>
		</div>
	 <?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
<script type="text/javascript"><!--
// Sort the custom fields
$('#account .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#account .form-group').length) {
		$('#account .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#account .form-group').length) {
		$('#account .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#account .form-group').length) {
		$('#account .form-group:first').before(this);
	}
});

$('#address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#address .form-group').length) {
		$('#address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#address .form-group').length) {
		$('#address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#address .form-group').length) {
		$('#address .form-group:first').before(this);
	}
});

$('input[name=\'customer_group_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/customfield&customer_group_id=' + this.value,
		dataType: 'json',
		success: function(json) {
			$('.custom-field').hide();
			$('.custom-field').removeClass('required');

			for (i = 0; i < json.length; i++) {
				custom_field = json[i];

				$('#custom-field' + custom_field['custom_field_id']).show();

				if (custom_field['required']) {
					$('#custom-field' + custom_field['custom_field_id']).addClass('required');
				}
			}


		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>

<script type="text/javascript"><!--
$('select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=account/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('input[name=\'postcode\']').parent().parent().removeClass('required');
			}

			html = '<option value=""><?php echo $text_select; ?></option>';

			if (json['zone'] && json['zone'] != '') {
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

			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>

<?php echo $footer; ?>
