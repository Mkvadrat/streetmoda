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
	
		<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
				<div class="tab-content-edit return-form-block">
					<div class="tab-pane">
						<h3><?php echo $heading_title; ?></h3>
						<p><?php echo $text_description; ?></p>
						
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<legend><?php echo $text_order; ?></legend>
							<label for="input-firstname"><?php echo $entry_firstname; ?></label>
							<input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" />
							<?php if ($error_firstname) { ?>
							<div class="text-danger"><?php echo $error_firstname; ?></div>
							<?php } ?>

							<label for="input-lastname"><?php echo $entry_lastname; ?></label>
							<input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" />
							<?php if ($error_lastname) { ?>
							<div class="text-danger"><?php echo $error_lastname; ?></div>
							<?php } ?>

							<label for="input-email"><?php echo $entry_email; ?></label>
							<input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
							<?php if ($error_email) { ?>
							<div class="text-danger"><?php echo $error_email; ?></div>
							<?php } ?>

							<label for="input-telephone"><?php echo $entry_telephone; ?></label>
							<input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" />
							<?php if ($error_telephone) { ?>
							<div class="text-danger"><?php echo $error_telephone; ?></div>
							<?php } ?>

							<label for="input-order-id"><?php echo $entry_order_id; ?></label>
							<input type="text" name="order_id" value="<?php echo $order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" />
							<?php if ($error_order_id) { ?>
							<div class="text-danger"><?php echo $error_order_id; ?></div>
							<?php } ?>

							<label for="input-date-ordered"><?php echo $entry_date_ordered; ?></label>
							<input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" placeholder="<?php echo $entry_date_ordered; ?>" id="input-date-ordered" />

							<legend><?php echo $text_product; ?></legend>					
							<label for="input-product"><?php echo $entry_product; ?></label>
							<input type="text" name="product" value="<?php echo $product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" />
							<?php if ($error_product) { ?>
							<div class="text-danger"><?php echo $error_product; ?></div>
							<?php } ?>

							<label for="input-model"><?php echo $entry_model; ?></label>
							<input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" />
							<?php if ($error_model) { ?>
							<div class="text-danger"><?php echo $error_model; ?></div>
							<?php } ?>

							<label for="input-quantity"><?php echo $entry_quantity; ?></label>
							<input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" />
							
							<label class="unpacked-tittle"><?php echo $entry_opened; ?></label>
							
							<?php if ($opened) { ?>
							<div class="option_checked">
							<input type="radio" name="opened" value="1" checked="checked" />
							</div>
							<?php } else { ?>
							<div class="option_checked">
							<?php echo $text_yes; ?>
							<input type="radio" name="opened" value="1" />
							</div>
							<?php } ?>
							
							
							<?php if (!$opened) { ?>
							<div class="option_checked">
							<?php echo $text_no; ?>
							<input type="radio" name="opened" value="0" checked="checked" />
							</div>
							<?php } else { ?>
							<input type="radio" name="opened" value="0" />
							<?php } ?>
							
							<label class="reason-tittle"><?php echo $entry_reason; ?></label>
							<?php foreach ($return_reasons as $return_reason) { ?>
							<?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
							<div class="option_checked">
							<p>
							<?php echo $return_reason['name']; ?>
							<input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" checked="checked" />
							</p>
							</div>
							<?php } else { ?>
							<div class="option_checked">
							<p>
							<?php echo $return_reason['name']; ?>
							<input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" />
							</p>
							</div>
							<?php  } ?>
							<?php  } ?>
							<?php if ($error_reason) { ?>
							<div class="text-danger"><?php echo $error_reason; ?></div>
							<?php } ?>

							<label for="input-comment"><?php echo $entry_fault_detail; ?></label>
							<textarea name="comment" rows="10" placeholder="<?php echo $entry_fault_detail; ?>" id="input-comment"><?php echo $comment; ?></textarea>
							
							<?php echo $captcha; ?>
							<?php if ($text_agree) { ?>
							<a href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
							<?php echo $text_agree; ?>
							<?php if ($agree) { ?>
							<input type="checkbox" name="agree" value="1" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="agree" value="1" />
							<?php } ?>
							<input type="submit" value="<?php echo $button_submit; ?>" />
					
							<?php } else { ?>
							<a href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
							<input class="return-form-submit" type="submit" value="<?php echo $button_submit; ?>" />
							<?php } ?>
						</form>
					</div>
				</div>
			</div>
		</div>


	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
	
<script type="text/javascript"><!--
$('#input-date-ordered').datetimepicker({
	pickTime: false
});
//--></script>

<?php echo $footer; ?>
