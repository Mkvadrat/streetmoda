<?php echo $header; ?>

	<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-returns"><?php echo $content_top; ?>
	
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
		
		<div class="not-found">
			<h3><?php echo $heading_title; ?></h3>

			<div class="text-style">
				<?php echo $description; ?>
			</div>

			<a href="javascript:void(0)" class="back">Назад</a>
		</div>
	  <?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
	
<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('.back').click(function(){
		parent.history.back();
		return false;
	});
});
</script>

<?php echo $footer; ?>