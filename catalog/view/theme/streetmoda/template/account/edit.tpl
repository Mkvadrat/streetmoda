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
						<h3>Мои персональные данные</h3>
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
						
						<label for="input-firstname"><?php echo $entry_firstname; ?> </label>
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
						<input type="email" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" />
						<?php if ($error_email) { ?>
						<div class="text-danger"><?php echo $error_email; ?></div>
						<?php } ?>
						
						<label for="input-telephone"><?php echo $entry_telephone; ?></label>
          
						<input type="tel" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" />
						<?php if ($error_telephone) { ?>
						<div class="text-danger"><?php echo $error_telephone; ?></div>
						<?php } ?>
						
						<label for="input-fax"><?php echo $entry_fax; ?></label>
						<input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-fax" />
						
						<label for="input-fax">WhatsApp</label>
						<input type="text" name="whatsapp" value="<?php echo $whatsapp; ?>" placeholder="WhatsApp" id="input-fax" />

						<label for="input-fax">Viber</label>
						<input type="text" name="viber" value="<?php echo $viber; ?>" placeholder="Viber" id="input-fax" />
						
						<label for="input-fax">Skype</label>
						<input type="text" name="skype" value="<?php echo $skype; ?>" placeholder="Skype" id="input-fax" />
						
						<a href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
						<input class="btn-continue" type="submit" value="<?php echo $button_continue; ?>" />
						</form>

					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->

<?php echo $footer; ?>