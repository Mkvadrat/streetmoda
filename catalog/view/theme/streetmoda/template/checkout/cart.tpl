<?php echo $header; ?>
	
	<?php echo $column_left; ?>
	<div class="content content-drawing-up-order"><?php echo $content_top; ?>

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
	
			<?php if ($attention) { ?>
			<div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
			<?php } ?>
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
  
            <div class="drawing-up-order cart-block">
                <a class="continue-shopping" href="<?php echo $continue; ?>">Продолжить покупки</a>
                <h3>Корзина покупок</h3>

				<form action="<?php echo $action; ?>" class="your-order" method="post" enctype="multipart/form-data">
                    <h4>Ваш заказ</h4>
					
					<?php foreach ($products as $product) { ?>
                    <div class="about-order">

                        <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['cart_id']; ?>');">x</button>
						
						<?php if ($product['thumb']) { ?>
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"/>
						<?php } ?>
                        <!--<img src="images/about-order.jpg" alt="">-->

                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						<?php if (!$product['stock']) { ?>
							<span class="text-danger">***</span>
						<?php } ?>
						
                        <ul>
                            <li><?php echo $product['price']; ?></li>
                            <li>
                                <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" /> <span>шт</span> <input type="submit" value="">
                            </li>
                            <li><span><?php echo $product['total']; ?></span></li>
                        </ul>
                        <div class="clearer"></div>
                    </div>
					<?php } ?>
                </form>

				<?php if ($coupon || $voucher || $reward || $shipping) { ?>
				<h3><?php echo $text_next; ?></h3>
				<p><?php echo $text_next_choice; ?></p>
				<div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
				<?php } ?>
				<br />

				<?php foreach ($totals as $total) { ?>

				<p><?php echo $total['title']; ?>:
				<?php echo $total['text']; ?><br/>

				<?php } ?></p>

				<p class="agreement-user"><a class="confirm-order" href="<?php echo $checkout; ?>">Заказ подтверждаю</a></p>
            </div>
    
	<?php echo $content_bottom; ?>
    <?php echo $column_right; ?></div>

    <!-- end content -->
<?php echo $footer; ?>
