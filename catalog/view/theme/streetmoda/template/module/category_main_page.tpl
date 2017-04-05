        <!-- start content -->

        <div class="content">
            <ul>
				<?php foreach($categories as $category){ ?>
					<li>
						<a href="<?php echo $category['href']; ?>">
							<img src="<?php echo $category['image']; ?>" alt="">
							<h6><?php echo $category['name']; ?></h6>
						</a>
					</li>
				<?php } ?>
				
                <!--<li>
                    <a href="<?php echo $women_clothes; ?>">
                        <img src="catalog/view/theme/streetmoda/images/woomans-clothing.jpg" alt="">
                        <h6>Женская</h6>
                        </a>
                </li>
                <li>
                    <a href="<?php echo $accessories; ?>">
                        <img src="catalog/view/theme/streetmoda/images/accessories.jpg" alt="">
                        <h6>Аксессуары</h6>
                    </a>
                </li>-->
            </ul>
        </div>

        <!-- end content -->