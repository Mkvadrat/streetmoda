<?php echo $header; ?>

<!-- start content -->
	<?php echo $column_left; ?>
	<div class="content content-log-in content-contacts"><?php echo $content_top; ?>

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
	
	<div class="block-contact">

		<h3>Контакты</h3>

		<?php if ($image) { ?>
			<img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" />
		<?php } ?>
		
		<br/>
		
		<?php if ($comment) { ?>
		<?php echo $comment; ?>
		<br/><br/>
	    <?php } ?>
		
		<!--Название магазина: <?php echo $store; ?>
		
		<br/><br/>
		
		Адрес магазина: <?php echo $address; ?>-->
		
		<?php echo $address; ?>
		
		<br/><br/>
		
		<?php if ($telephone) { ?>
		<?php echo $telephone; ?>
		<br/><br/>
		<?php } ?>
				
		<?php if ($fax) { ?>
		Факс: <?php echo $fax; ?>
		<br/><br/>
		<?php } ?>

		<?php if ($whatsapp) { ?>
		WhatsApp: <?php echo $whatsapp; ?>
		<br/><br/>
		<?php } ?>
		
		<?php if ($viber) { ?>
		Viber: <?php echo $viber; ?>
		<br/><br/>
		<?php } ?>
		
		<?php if ($vk_links) { ?>
		Мы в Vkontakte: <?php echo $vk_links; ?>
		<br/><br/>
		<?php } ?>
		
		<?php if ($open) { ?>
		Время работы: <?php echo $open; ?>
		<br /><br/>
		<?php } ?>
		
	<form id="contact-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
		<fieldset>
		  <legend><?php echo $text_contact; ?></legend>
		  <div class="form-group required">
			<label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?>: <span>*</span></label>
			<div class="col-sm-10">
			  <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
			  <?php if ($error_name) { ?>
			  <div class="text-danger"><?php echo $error_name; ?></div>
			  <?php } ?>
			</div>
		  </div>
		  <div class="form-group required">
			<label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?>: <span>*</span></label>
			<div class="col-sm-10">
			  <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
			  <?php if ($error_email) { ?>
			  <div class="text-danger"><?php echo $error_email; ?></div>
			  <?php } ?>
			</div>
		  </div>
		  <div class="form-group required">
			<label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?>: <span>*</span></label>
			<div class="col-sm-10">
			  <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
			  <?php if ($error_enquiry) { ?>
			  <div class="text-danger"><?php echo $error_enquiry; ?></div>
			  <?php } ?>
			</div>
		  </div>
		
		  <div class="capcha-in-contacts">
		  	<?php echo $captcha; ?>
		  </div>

		  <div class="buttons">
		  <div class="pull-right">
			<input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
		  </div>
		</div>

		<p class="necessarily"><span>*</span> - поля, обязательные для заполнения </p>
		</fieldset>
		
    </form>
	</div>
		
	<?php echo $content_bottom; ?>
	<?php echo $column_right; ?></div>
	<!-- end content -->
	
<?php echo $footer; ?>
