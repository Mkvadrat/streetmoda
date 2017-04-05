<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
	
	<base href="<?php echo $base; ?>" />
	
	<!--Description and  Keywords and other meta--> 
	<?php if ($description) { ?>
	<meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
	<?php } ?>
	<?php if ($keywords) { ?>
	<meta name="keywords" content= "<?php echo $keywords; ?>" />
	<?php } ?>
	<meta property="og:type" content="website" />
	<meta property="og:url" content="<?php echo $og_url; ?>" />
	<?php if ($og_image) { ?>
	<meta property="og:image" content="<?php echo $og_image; ?>" />
	<?php } else { ?>
	<meta property="og:image" content="<?php echo $logo; ?>" />
	<?php } ?>
	<meta property="og:site_name" content="<?php echo $name; ?>" />
	<!--Description and  Keywords and other meta--> 

    <!-- Bootstrap -->
    <link href="catalog/view/theme/streetmoda/css/bootstrap.css" rel="stylesheet">
    <link rel="stylesheet" href="catalog/view/theme/streetmoda/css/reset.css">
    <link rel="stylesheet" href="catalog/view/theme/streetmoda/css/fonts.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/main.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/object.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/object-in.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/about-product.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/404.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/registration.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/log-in.css">
	<link rel="stylesheet" href="/catalog/view/theme/streetmoda/css/order.css">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="catalog/view/theme/streetmoda/js/jquery-3.1.0.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="catalog/view/theme/streetmoda/js/bootstrap.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- Fancyapps -->
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/catalog/view/javascript/fancyapps/lib/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="/catalog/view/javascript/fancyapps/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="/catalog/view/javascript/fancyapps/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/catalog/view/javascript/fancyapps/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="/catalog/view/javascript/fancyapps/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/catalog/view/javascript/fancyapps/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="/catalog/view/javascript/fancyapps/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="/catalog/view/javascript/fancyapps/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
	
	<!-- Gallery -->
	<script type="text/javascript" src="/catalog/view/theme/streetmoda/js/ezPlus.min.js"></script>

	<script type="text/javascript" src="/catalog/view/javascript/fancy+/src/jquery.fancybox-plus.js"></script>
	<link rel="stylesheet" type="text/css" href="/catalog/view/javascript/fancy+/css/jquery.fancybox-plus.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="/catalog/view/javascript/fancy+/css/style.css" media="screen" />
	<script type="text/javascript" src="/catalog/view/javascript/fancy+/js/web.js?m=20100203"></script>
	
	<!-- Button up -->
	<script type="text/javascript" src="/catalog/view/theme/streetmoda/js/scripts.js"></script>
	

	<!--Systems Styles and Scripts-->
	<?php foreach ($styles as $style) { ?>
	<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	<script src="catalog/view/javascript/streetmoda.js" type="text/javascript"></script>
	<?php foreach ($links as $link) { ?>
	<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
	<?php } ?>
	<?php foreach ($scripts as $script) { ?>
	<script src="<?php echo $script; ?>" type="text/javascript"></script>
	<?php } ?>
	<?php foreach ($analytics as $analytic) { ?>
	<?php echo $analytic; ?>
	<?php } ?>
	<!--Others Styles and Scripts-->
	  
  </head>
  <body>

    <div class="wrapper">

        <!-- start header -->

        <header>
		
		<?php if ($logged) { ?>	
		<!-- Верхнее меню для регистированных -->

            <div class="top-line-log-in">

                <ul class="enter-registr">
                    <li>
                        <p>Здравствуйте,  <span><?php echo $first_name; ?></span></p>
                    </li>
                    <li>
                        <a href="<?php echo $account; ?>">Мой кабинет</a>
                    </li>
                    <li>
                        <a href="<?php echo $wishlist; ?>">Закладки</a>
                    </li>
                    <li>
                        <a href="<?php echo $logout; ?>">Выйти</a>
                    </li>
                    <li>
						<?php echo $cart; ?>
                        
                        <a href="<?php echo $shopping_cart; ?>">Оформить заказ</a>
				
                    </li>
                </ul>

                <ul>
                    <li>
                        <a href="<?php echo $about_product; ?>">О товаре</a>
                    </li>
                    <li>
                        <a href="<?php echo $order_specifications; ?>">Условия заказа</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Доставка</a>
                    </li>
                    <li>
                        <a href="<?php echo $payment; ?>">Оплата</a>
                    </li>
                    <li>
                        <a href="<?php echo $contact; ?>">Контакты</a>
                    </li>
                    <li>
                        <a href="<?php echo $contact; ?>#contact-form">Обратная связь</a>
                    </li>
                </ul>
            </div>

        <!-- end Верхнее меню для нерегистированных -->
        

		<?php } else { ?>

        <!-- start Верхнее меню для нерегистированных -->
	
            <div class="top-line">
                <ul class="enter-registr">
                    <li>
                        <a href="<?php echo $login; ?>">Вход</a>
                    </li>
                    <li>
                        <a href="<?php echo $register?>">Регистрация</a>
                    </li>
                    <li>
                        <a href="#"></a>
                    </li>
                </ul>

                <ul>
                    <li>
                        <a href="<?php echo $about_product; ?>">О товаре</a>
                    </li>
                    <li>
                        <a href="<?php echo $order_specifications; ?>">Условия заказа</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Доставка</a>
                    </li>
                    <li>
                        <a href="<?php echo $payment; ?>">Оплата</a>
                    </li>
                    <li>
                        <a href="<?php echo $contact; ?>">Контакты</a>
                    </li>
                    <li>
                        <a href="<?php echo $contact; ?>#contact-form">Обратная связь</a>
                    </li>
                </ul>
            </div>

        <!-- end Верхнее меню для нерегистированных -->
		
		<?php } ?>
		


            <div class="middle-line">
               
				<?php if ($logo) { ?>
					<a class="logo" href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
				<?php } else { ?>
					<a class="logo" href="<?php echo $home; ?>"><?php echo $name; ?></a>
				<?php } ?>
				
                <ul class="delivery-menu">
                    <li>
                        <a href="<?php echo $delivery; ?>">Доставка</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Россия</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Украина</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Крым</a>
                    </li>
                    <li>
                        <a href="<?php echo $delivery; ?>">Донбасс</a>
                    </li>
                </ul>

                <ul class="phones">
                    <li><?php echo $telephone; ?></li>
                    <li><?php echo $whatsapp; ?></li>
                    <li><?php echo $viber; ?></li>
                </ul>
            </div>

            <div class="bottom-line">
                <ul>
                    <li>
                        <a href="<?php echo $home; ?>"></a>
                    </li>
                    <li>
                        <a href="<?php echo $man_clothes; ?>">Мужская одежда</a>
                    </li>
                    <li>
                        <a href="<?php echo $women_clothes; ?>">Женская одежда</a>
                    </li>
                    <li>
                        <a href="<?php echo $accessories; ?>">Аксессуары</a>
                    </li>
                    <li>
                        <div id="search" class="box-search">
						
                            <input type="search" value="" name="search" placeholder="Поиск">

                            <input class="but-search" type="submit" name="submit_value" value="">
							
							<button type="button" style="display:none;"></button>
                        </div>
<script>
        $(function(){
            $('.but-search').click(function(){
                $('.box-search').addClass('slide-left');
				$('.but-search').replaceWith('<input type="submit" onclick="submit();" value="">');	
            });
        });
		
		function submit(){
			url = $('base').attr('href') + 'index.php?route=product/search';

			var value = $('header input[name=\'search\']').val();

			if (value) {
				url += '&search=' + encodeURIComponent(value);
			}
			
			location = url;
		}
</script>	
                    </li>
                </ul>
            </div>
        </header>

        <!-- end header -->