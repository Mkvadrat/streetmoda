<?php echo $header; ?>

  <?php echo $column_left; ?>
    <div class="content objects"><?php echo $content_top; ?>
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
	<?php if ($categories) { ?>
				<!-- start content -->
				<div class="content">
					<ul>
					<?php foreach ($categories as $category) { ?>
						<li>
							<a href="<?php echo $category['href']?>">
								<img src="<?php echo $category['image']?>" alt="">
								<h6><?php echo $category['name']?></h6>
							</a>
						</li>
					<?php } ?>
					</ul>
				</div>
				<!-- end content -->
	<?php } ?>

			<?php if ($products) { ?>
            <ul>
			<?php foreach ($products as $product) { ?>
                <li class="box-object">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                    <h6><?php echo $product['name']; ?></h6>
                    <p class="price">Цена:
					<?php if($islogged){?>
						<?php echo $product['packing_price']; ?>
					<?php }else{ ?>
						<a href="<?php echo $register; ?>">Узнать цену</a>
					<?php } ?></p>
                    <p class="price">Цена упаковки:
					<?php if($islogged){?>
						<?php if ($product['price']) { ?>
						<?php if (!$product['special']) { ?>
						<?php echo $product['price']; ?>
						<?php } else { ?>
						<?php echo $product['special']; ?><sup><strike><?php echo $product['price']; ?></strike></sup>
						<?php } ?>
						<?php } ?>
					<?php }else{ ?>
					<a href="<?php echo $register; ?>">Узнать цену</a>
					<?php } ?></p>
					<?php foreach ($product['option'] as $options) { ?>
					<?php if($options['option_id'] == 14){?>
                    <ul class="packed-measurements">
                        <li><?php echo $options['name'] .': '. $options['value'] ; ?></li>
                    </ul>
					<?php } ?>
					<?php if($options['option_id'] == 15){?>
                    <ul class="color option">
                        <li><?php echo $options['name'] .': '; ?></li>
					<?php foreach($product['option_image'] as $image){ ?>
						<li><a href="<?php echo $image['link_product_id']; ?>"><img src="<?php echo $image['image']; ?>"></a></li>
					<?php } ?>
                    </ul>
					<?php } ?>
					<?php } ?>
					<?php if($islogged){?>
                    <p class="more-buy"><a href="<?php echo $product['href']; ?>">Подробнее</a>
					<?php if(array_search('1', $product['req'])){ ?>
					<a class="in-bascet" href="<?php echo $product['href']; ?>"><i class="fa fa-shopping-cart" aria-hidden="true"></i>В корзину</a>
					<?php }else{ ?>
					<a class="in-bascet" id="cart_category" onclick="cart.category('<?php echo $product['product_id']; ?>', '1');"><i class="fa fa-shopping-cart" aria-hidden="true"></i>В корзину</a>
					<?php } ?></p>
                    <a class="add-to-bookmarks" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">Добавить в закладки</a>
					<?php }else{ ?>
					<p class="more-buy"><a href="<?php echo $product['href']; ?>">Подробнее</a>
					<a href="<?php echo $login; ?>"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Войти</a></p>
                    <a class="add-to-bookmarks" onclick="wishlist.add('<?php echo $product['product_id']; ?>');">Добавить в закладки</a>
					<?php } ?>
                </li>
			<?php } ?>
            </ul>

            <p class="bread-crumbs-numbers-bottom">
                <?php echo $pagination; ?>
            </p>
			<?php } ?>
	        <?php if (!$categories && !$products) { ?>
				<p class="no-product"><?php echo $text_empty; ?></p>
				<div class="buttons">
					<div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
				</div>
			<?php } ?>

      <?php echo $content_bottom; ?>
    <?php echo $column_right; ?></div>

<?php echo $footer; ?>
