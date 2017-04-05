<form class="form-horizontal">
	<?php if ($addresses) { ?>
	<div class="radio">
	<label>
	  <input type="radio" name="shipping_address" value="existing" checked="checked" />
	  <?php echo $text_address_existing; ?></label>
	</div>
	<div id="shipping-existing">
	<select name="address_id" class="form-control">
	  <?php foreach ($addresses as $address) { ?>
	  <?php if ($address['address_id'] == $address_id) { ?>
	  <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
	  <?php } else { ?>
	  <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
	  <?php } ?>
	  <?php } ?>
	</select>
	</div>
	<div class="radio">
	<label>
	  <input type="radio" name="shipping_address" value="new" />
	  <?php echo $text_address_new; ?></label>
	</div>
	<?php } ?>
	<br />
	<div id="shipping-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
	<div class="form-group required">
	  <label class="col-sm-2 control-label" for="input-shipping-firstname"><?php echo $entry_firstname; ?></label>
	  <div class="col-sm-10">
		<input type="text" name="firstname" value="" placeholder="<?php echo $entry_firstname; ?>" id="input-shipping-firstname" class="form-control" />
	  </div>
	</div>
	<div class="form-group required">
	  <label class="col-sm-2 control-label" for="input-shipping-lastname"><?php echo $entry_lastname; ?></label>
	  <div class="col-sm-10">
		<input type="text" name="lastname" value="" placeholder="<?php echo $entry_lastname; ?>" id="input-shipping-lastname" class="form-control" />
	  </div>
	</div>
	<!--Скрытые поля для редактировани -->
	<input type="text" style="display:none" name="postcode" value="<?php echo $postcode; ?>" />
	<input type="text" style="display:none" name="city" value="" />
	<input type="text" style="display:none" name="company" value="" />
	<input type="text" style="display:none" name="address_2" value="" />
	<input type="text" style="display:none" name="address_1" value="" />
	<!--Скрытые поля для редактировани -->
	<div class="form-group required">
	  <label class="col-sm-2 control-label" for="input-shipping-country"><?php echo $entry_country; ?></label>
	  <div class="col-sm-10">
		<select name="country_id" id="input-shipping-country" class="form-control">
		  <option value=""><?php echo $text_select; ?></option>
		  <?php foreach ($countries as $country) { ?>
		  <?php if ($country['country_id'] == $country_id) { ?>
		  <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
		  <?php } else { ?>
		  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
		  <?php } ?>
		  <?php } ?>
		</select>
	  </div>
	</div>
	<div class="form-group required">
	  <label class="col-sm-2 control-label" for="input-shipping-zone"><?php echo $entry_zone; ?></label>
	  <div class="col-sm-10">
		<select name="zone_id" id="input-shipping-zone" class="form-control">
		</select>
	  </div>
	</div>
	</div>
	<div class="buttons clearfix">
	<div class="pull-right">
	  <input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
	</div>
	</div>
</form>
<script type="text/javascript"><!--
$('input[name=\'shipping_address\']').on('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
	}
});
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address .form-group[data-sort]').detach().each(function() {
	if ($(this).attr('data-sort') >= 0 && $(this).attr('data-sort') <= $('#collapse-shipping-address .form-group').length) {
		$('#collapse-shipping-address .form-group').eq($(this).attr('data-sort')).before(this);
	}

	if ($(this).attr('data-sort') > $('#collapse-shipping-address .form-group').length) {
		$('#collapse-shipping-address .form-group:last').after(this);
	}

	if ($(this).attr('data-sort') < -$('#collapse-shipping-address .form-group').length) {
		$('#collapse-shipping-address .form-group:first').before(this);
	}
});
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address button[id^=\'button-shipping-custom-field\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$(node).parent().find('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input[name^=\'custom_field\']').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input[name^=\'custom_field\']').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address select[name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#collapse-shipping-address select[name=\'country_id\']').after(' <i class="fa fa-circle-o-notch fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spin').remove();
		},
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().removeClass('required');
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

			$('#collapse-shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#collapse-shipping-address select[name=\'country_id\']').trigger('change');
//--></script>