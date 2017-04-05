<?php echo $header; ?>

	<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-log-in"><?php echo $content_top; ?>

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
		<?php if ($success) { ?>
		<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
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
					<div class="tab-pane wish-list">
						<h3><?php echo $heading_title; ?></h3>
						<?php if ($products) { ?>
						<table>
							<thead>
								<tr>
								<td><?php echo $column_image; ?></td>
								<td><?php echo $column_name; ?></td>
								<td><?php echo $column_model; ?></td>
								<td><?php echo $column_stock; ?></td>
								<td><?php echo $column_price; ?></td>
								<td><?php echo $column_action; ?></td>
								</tr>
							</thead>
							<tbody>
							<?php foreach ($products as $product) { ?>
								<tr>
									<td><?php if ($product['thumb']) { ?>
									  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
									  <?php } ?></td>
									<td><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
									<td><?php echo $product['model']; ?></td>
									<td><?php echo $product['stock']; ?></td>
									<td><?php if ($product['price']) { ?>
									  <div>
										<?php if (!$product['special']) { ?>
										<?php echo $product['price']; ?>
										<?php } else { ?>
										<b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
										<?php } ?>
									  </div>
									  <?php } ?></td>
									<td><button type="button" onclick="cart.wishlist_add('<?php echo $product['product_id']; ?>', '1');" data-toggle="tooltip" title="<?php echo $button_cart; ?>"><i class="fa fa-shopping-cart"></i></button>
									  <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>"><i class="fa fa-times"></i></a></td>
								</tr>
							<?php } ?>
							</tbody>
						</table>
						<?php } else { ?>
							<p class="text-empty"><?php echo $text_empty; ?></p>
						<?php } ?>
						<div>
						<div><a class="continue" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->

<?php echo $footer; ?>