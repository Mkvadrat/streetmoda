<?php echo $header; ?>

	<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-log-in"><?php echo $content_top; ?>

	<div class="bread-crumbs">
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
		<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
		<?php } ?>

		<div class="log-in">
			<h3>Мой кабинет</h3>

			<p class="change-personal-data">Изменить персональные данные</p>

			<div class="description-of-the-personal-account">
				<h6>Добро пожаловать!</h6>

				<p>Это ваш личный кабинет. Здесь вы можете просмотреть ваши текущие заказы,  а также изменить персональные данные.</p>
			</div>

			<!-- Вкладки (tabs) -->
			<div>
				<ul class="nav nav-tabs tabs">
					<li class="sale-tab">
						<a href="<?php echo $edit; ?>">Мои персональные данные</a>
					</li>
					<li class="sale-tab">
						<a href="<?php echo $password; ?>">Изменить свой пароль</a>
					</li>
					<li class="sale-tab">
						<a href="<?php echo $address; ?>">Изменить мои адреса</a>
					</li>
					<li class="sale-tab">
						<a href="<?php echo $wishlist; ?>">Изменить закладки</a>
					</li>
					<li class="metal-processing-tab">
						<a href="<?php echo $order; ?>">Мои заказы</a>
					</li>
					<li class="cutting-tab">
						<a href="<?php echo $return; ?>">Возврат товара</a>
					</li>
					<li class="cutting-tab">
						<a href="<?php echo $newsletter; ?>">Редактировать подписку</a>
					</li>
				</ul>

				<!-- Содержимое вкладок -->
				<div class="tab-content-edit">
					<div class="tab-pane">				
						<h3><?php echo $heading_title; ?></h3>
						<table>
						<thead>
						  <tr>
							<td colspan="2"><?php echo $text_order_detail; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><?php if ($invoice_no) { ?>
							  <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
							  <?php } ?>
							  <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
							  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
							<td><?php if ($payment_method) { ?>
							  <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />
							  <?php } ?>
							  <?php if ($shipping_method) { ?>
							  <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
							  <?php } ?></td>
						  </tr>
						</tbody>
						</table>
						<table>
						<thead>
						  <tr>
							<td><?php echo $text_payment_address; ?></td>
							<?php if ($shipping_address) { ?>
							<td><?php echo $text_shipping_address; ?></td>
							<?php } ?>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><?php echo $payment_address; ?></td>
							<?php if ($shipping_address) { ?>
							<td><?php echo $shipping_address; ?></td>
							<?php } ?>
						  </tr>
						</tbody>
						</table>
						<div>
						<table>
						  <thead>
							<tr>
							  <td><?php echo $column_name; ?></td>
							  <td><?php echo $column_model; ?></td>
							  <td><?php echo $column_quantity; ?></td>
							  <td><?php echo $column_price; ?></td>
							  <td><?php echo $column_total; ?></td>
							  <?php if ($products) { ?>
							  <td></td>
							  <?php } ?>
							</tr>
						  </thead>
						  <tbody>
							<?php foreach ($products as $product) { ?>
							<tr>
							  <td><?php echo $product['name']; ?>
								<?php foreach ($product['option'] as $option) { ?>
								<br />
								&nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
								<?php } ?></td>
							  <td><?php echo $product['model']; ?></td>
							  <td><?php echo $product['quantity']; ?></td>
							  <td><?php echo $product['price']; ?></td>
							  <td><?php echo $product['total']; ?></td>
							  <td><?php if ($product['reorder']) { ?>
								<a href="<?php echo $product['reorder']; ?>" data-toggle="tooltip" title="<?php echo $button_reorder; ?>"><i class="fa fa-shopping-cart"></i></a>
								<?php } ?>
								<a href="<?php echo $product['return']; ?>" data-toggle="tooltip" title="<?php echo $button_return; ?>"><i class="fa fa-reply"></i></a></td>
							</tr>
							<?php } ?>
							<?php foreach ($vouchers as $voucher) { ?>
							<tr>
							  <td class="text-left"><?php echo $voucher['description']; ?></td>
							  <td class="text-left"></td>
							  <td class="text-right">1</td>
							  <td class="text-right"><?php echo $voucher['amount']; ?></td>
							  <td class="text-right"><?php echo $voucher['amount']; ?></td>
							  <?php if ($products) { ?>
							  <td></td>
							  <?php } ?>
							</tr>
							<?php } ?>
						  </tbody>
						  <tfoot>
							<?php foreach ($totals as $total) { ?>
							<tr>
							  <td colspan="3"></td>
							  <td><b><?php echo $total['title']; ?></b></td>
							  <td><?php echo $total['text']; ?></td>
							  <?php if ($products) { ?>
							  <td></td>
							  <?php } ?>
							</tr>
							<?php } ?>
						  </tfoot>
						</table>
						</div>
						<?php if ($comment) { ?>
						<table>
						<thead>
						  <tr>
							<td><?php echo $text_comment; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><?php echo $comment; ?></td>
						  </tr>
						</tbody>
						</table>
						<?php } ?>
						<?php if ($histories) { ?>
						<h3><?php echo $text_history; ?></h3>
						<table>
						<thead>
						  <tr>
							<td><?php echo $column_date_added; ?></td>
							<td><?php echo $column_status; ?></td>
							<td><?php echo $column_comment; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <?php foreach ($histories as $history) { ?>
						  <tr>
							<td><?php echo $history['date_added']; ?></td>
							<td><?php echo $history['status']; ?></td>
							<td><?php echo $history['comment']; ?></td>
						  </tr>
						  <?php } ?>
						</tbody>
						</table>
						<?php } ?>
						<div>
						<div><a class="order-info-continue" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a></div>
						</div>	
					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
<?php echo $footer; ?>