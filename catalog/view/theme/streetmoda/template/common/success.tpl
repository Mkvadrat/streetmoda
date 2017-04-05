<?php echo $header; ?>
<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-log-in shadow success-block"><?php echo $content_top; ?>

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
	
	<div class="content-exit">
		<h1><?php echo $heading_title; ?></h1>
			<?php echo $text_message; ?>
	    <div class="buttons">
	        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
	    </div>
	</div>
	
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
	
<?php echo $footer; ?>