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
					<div class="tab-pane return-block">
						<h3><?php echo $heading_title; ?></h3>
						<table>
						<thead>
						  <tr>
							<td colspan="2"><?php echo $text_return_detail; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
							  <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
							<td><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
							  <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
						  </tr>
						</tbody>
						</table>
						<h3><?php echo $text_product; ?></h3>
						<table>
						<thead>
						  <tr>
							<td><?php echo $column_product; ?></td>
							<td><?php echo $column_model; ?></td>
							<td><?php echo $column_quantity; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><?php echo $product; ?></td>
							<td><?php echo $model; ?></td>
							<td><?php echo $quantity; ?></td>
						  </tr>
						</tbody>
						</table>
						<table>
						<thead>
						  <tr>
							<td><?php echo $column_reason; ?></td>
							<td><?php echo $column_opened; ?></td>
							<td><?php echo $column_action; ?></td>
						  </tr>
						</thead>
						<tbody>
						  <tr>
							<td><?php echo $reason; ?></td>
							<td><?php echo $opened; ?></td>
							<td><?php echo $action; ?></td>
						  </tr>
						</tbody>
						</table>
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
						<h2><?php echo $text_history; ?></h2>
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
						<div><a href="<?php echo $continue; ?>"><?php echo $button_continue; ?></a></div>
						</div>
				
					
					
					

					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
<?php echo $footer; ?>