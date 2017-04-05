<div class="sidebar">

  <h5>Витрина</h5>

  <?php foreach ($categories as $category) { ?>

  <?php if ($category['category_id'] == $category_id) { ?>

  <a class="items-sidebar" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

  <?php if ($category['children']) { ?>

  <?php foreach ($category['children'] as $child) { ?>

  <?php if ($child['category_id'] == $child_id) { ?>

  <a class="sub-items-sidebar" href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>

  <?php } else { ?>

  <a class="sub-items-sidebar" href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a>

  <?php } ?>

  <?php } ?>

  <?php } ?>

  <?php } else { ?>

  <a class="items-sidebar" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

  <?php } ?>

  <?php } ?>

</div>

       