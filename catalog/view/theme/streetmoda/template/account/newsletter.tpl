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
					<div class="tab-pane newsletter-block">				
						<h3><?php echo $heading_title; ?></h3>
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<label><?php echo $entry_newsletter; ?></label>
							<?php if ($newsletter) { ?>
							
							<p><?php echo $text_yes; ?> <input type="radio" name="newsletter" value="1" checked="checked" /></p>
							
							<p><?php echo $text_no; ?> <input type="radio" name="newsletter" value="0" /></p>
							<?php } else { ?>
							<input type="radio" name="newsletter" value="1" />
							<p><?php echo $text_yes; ?></p>
							<input type="radio" name="newsletter" value="0" checked="checked" />
							<?php echo $text_no; ?>
							<?php } ?>

							<a href="<?php echo $back; ?>" ><?php echo $button_back; ?></a></div>
							<input class="newsletter-continue" type="submit" value="<?php echo $button_continue; ?>" />
						</form>
						
						
						
					</div>
				</div>
			</div>
		</div>
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->

<?php echo $footer; ?>