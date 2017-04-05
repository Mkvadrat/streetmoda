<?php echo $header; ?>

	<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-returns"><?php echo $content_top; ?>
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

		<div class="not-found">
			<h3>товар или страница не найдены </h3>

			<p>
				<span>404</span><br>
				товар или страница не найдены
			</p>

		</div>
	  <?php echo $content_bottom; ?>
    <?php echo $column_right; ?></div>
    <!-- end content -->
	
<?php echo $footer; ?>