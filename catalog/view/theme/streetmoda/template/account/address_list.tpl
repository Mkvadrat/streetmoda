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
			<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
		<?php } ?>
		<?php if ($error_warning) { ?>
			<div class="alert alert-warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
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
						<div class="list-address">
							<h2><?php echo $text_address_book; ?></h2>
							<?php if ($addresses) { ?>
							<table>
							<?php foreach ($addresses as $result) { ?>
							<tr>
							<td><?php echo $result['address']; ?></td>
							<td><a href="<?php echo $result['update']; ?>"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>"><?php echo $button_delete; ?></a></td>
							</tr>
							<?php } ?>
							</table>
							<?php } else { ?>
							<p><?php echo $text_empty; ?></p>
							<?php } ?>

							<a href="<?php echo $back; ?>"><?php echo $button_back; ?></a>
							<a href="<?php echo $add; ?>"><?php echo $button_new_address; ?></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->

<?php echo $footer; ?>