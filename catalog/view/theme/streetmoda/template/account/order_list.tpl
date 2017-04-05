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
						<h3><?php echo $heading_title; ?></h3>
						<?php if ($orders) { ?>
						<div>
						<table>
						  <thead>
							<tr>
							  <td><?php echo $column_order_id; ?></td>
							  <td><?php echo $column_status; ?></td>
							  <td><?php echo $column_date_added; ?></td>
							  <td><?php echo $column_product; ?></td>
							  <td><?php echo $column_customer; ?></td>
							  <td><?php echo $column_total; ?></td>
							  <td></td>
							</tr>
						  </thead>
						  <tbody>
							<?php foreach ($orders as $order) { ?>
							<tr>
							  <td>#<?php echo $order['order_id']; ?></td>
							  <td><?php echo $order['status']; ?></td>
							  <td><?php echo $order['date_added']; ?></td>
							  <td><?php echo $order['products']; ?></td>
							  <td><?php echo $order['name']; ?></td>
							  <td><?php echo $order['total']; ?></td>
							  <td><a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>"><i class="fa fa-eye"></i></a></td>
							</tr>
							<?php } ?>
						  </tbody>
						</table>
						</div>
						<div><?php echo $pagination; ?></div>
						<?php } else { ?>
						<p><?php echo $text_empty; ?></p>
						<?php } ?>
						<div>
						<div><a class="order-list-continue" href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
	
<?php echo $footer; ?>