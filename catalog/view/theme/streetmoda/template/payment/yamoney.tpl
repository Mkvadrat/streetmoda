<div class="iframe_yandex">
	<iframe frameborder="0" allowtransparency="true" scrolling="no" src="https://money.yandex.ru/quickpay/shop-widget?account=410012193547639&quickpay=shop&payment-type-choice=on&writer=seller&targets=%D0%9E%D0%BF%D0%BB%D0%B0%D1%82%D0%B0+%D0%B2+%D0%B8%D0%BD%D1%82%D0%B5%D1%80%D0%BD%D0%B5%D1%82-%D0%BC%D0%B0%D0%B3%D0%B0%D0%B7%D0%B8%D0%BD%D0%B5+STREETMODA-OPT.COM&default-sum=<?php echo $total; ?>&button-text=01&comment=on&hint=&fio=on&mail=on&phone=on&address=on&successURL=http%3A%2F%2Fstreetmoda-opt.com%2F" width="450" height="273"></iframe>
</div>
<br/>
<br/>
<div class="text_payment">*В случае оплаты "онлайн" нажмите кнопку "Оплатить", после завершения процесса оплаты вернитесь на эту страницу и нажмите "Подтверждение заказа".</div>
<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary confirmation" data-loading-text="<?php echo $text_loading; ?>" />
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=payment/yamoney/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},
		success: function() {
			location = '<?php echo $continue; ?>';
		}
	});
});
//--></script>
