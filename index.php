<?php
require_once('php/pdo.php');
require_once('php/queries.php');
require_once('php/functions.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title><?php echo title($params) . ' | ' . title($params, 'global'); ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="<?php echo $params['settings']['description']; ?>">
  <meta name="keywords" content="<?php echo $params['settings']['keywords']; ?>">
  <meta name="author" content="<?php echo $params['settings']['author']; ?>">
  <title>Herat Shop</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- bootrap for shopping card-->
  <link rel="stylesheet" href="./asset/css/bootstrap.min.css">
  <!--Google fonts  -->
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <!-- Icomoon Link -->
  <link rel="stylesheet" href="./asset/icomoon/style.css">
  <!-- faveicon -->
  <link rel="shortcut icon" type="image/png" href="./asset/image/panda.png" />
  <!-- css style sheet -->
  <link rel="stylesheet" href="./asset/css/index.css">
</head>
<!--------------------------------BODY START-------------------------------------------->

<body>

  <div class="grid-container">

    <!-- HEADER START -->
    <header class="header">

      <!-- TOP ROW -->
      <section class="top-row">
        <!-- The form -->
        <figure class="logo">
          <img src="./asset/image/panda.png" alt="logo">
        </figure>

        <form class="search">
          <input class="search-frame" id="myInput" onkeyup="searchFunction()" type="text" placeholder=" Search.."
            name="search">
        </form>

        <nav class="list-container">
          <ul>
            <li class="list"><span class="glyphicon glyphicon-shopping-cart my-cart-icon">My list
                <span class="badge badge-notify my-cart-badge"></span></span></li>
            <li class="log" <a href=""><span class="icon-profile"> Login</span></a></li>
            <!-- show active selected language, not both -->
            <?php //echo lang_links(); ?>
          </ul>
        </nav>
        <!-- for icon which is hiden in normal (medai query) -->
        <!-- <span id="menu-products" class="icon-menu"></span> -->
      </section>

      <!-- Bottom ROW -->
      <section class="bottom-row">
        <span id="menu-page" class="icon-menu"></span>

        <!-- dynamic Nav -->
        <?php echo menu_items($params); ?>

      </section>

    </header><!-- HEADER END -->


    <!-- SIDE NAV -->
    <aside id="aside" class="menu ex3">
      <h3 id="pro-head">All products</h3>
      <?php echo side_nav($params); ?>
    </aside><!-- SIDE NAV END -->


    <!-- MAIN CONTENT -->
    <!-- <h1 class="main-title"></h1> -->
    <main class="main-content">


      <!-- BANNER-1 -->
      <section class="banner-1">
        <div class="padding">
          <figure><img class="meat-banner" src="./asset/image/meat55.jpg" alt=""></figure>
        </div>
      </section>


      <!-- PRODUCTS START -->
      <section class="products">
        <h1 class="text-head">All Products and Special offers</h1>
        <div class="containers" id="myUL">
          <?php echo products($params);?>
        </div>
      </section><!-- PRODUCTS END -->

      
      <!-- BANNER-2 START-->
      <section class="banner-2">
        <div class="padding">
          <figure><img class="meat-banner" src="./asset/image/Lebensmittel.jpg" alt=""></figure>
        </div>
      </section>
      <!-- BANNER-2 END-->


      <!-- ASIAN START -->
      <section class="asian padding">

        <div>
          <h1>Asian Materials</h1>
        </div>

        <div class="cont">
          <figure><a href=""><img class="asian-img" src="./asset/image/spices3-.jpg" alt=""></a>Beriani spices</figure>
          <figure><a href=""><img class="asian-img" src="./asset/image/sdf.jpg" alt=""></a>Dry fruits</figure>
          <figure><a href=""><img class="asian-img" src="./asset/image/spices2.jpg" alt=""></a>Qurma spices</figure>
        </div>

      </section>


    </main>

    <!-- Main Title -->

    <!-- <h1 class="main-title"><?php //echo title($params); ?></h1> -->

    <!-- HTML content -->
    <!-- <p>This will be the dynamic page content...</p> -->
    <?php

    // if(router() == 'herat-shop') {
    //   echo image(1);
    //   echo products_html();
    //   echo image(2);
    //   echo materials();
    // } else {
    //   echo content($params);
    // }
    
    ?>

    <!-- MAIN CONTENT IN OTHER PAGES END-->


    <!-- FOOTER START -->
    <footer class="footer">

      <section>
        <ul class="media-icon">
          <li><a href="https://www.facebook.com/" class="icon-facebook1"></a></li>
          <li><a href="https://www.instagram.com/" class="icon-instagram"></a></li>
          <li><a href="https://twitter.com/login?lang=en" class="icon-twitter"></a></li>
          <li><a href="https://www.whatsapp.com/" class="icon-whatsapp1"></a></li>
          <li><a href="https://accounts.google.com" class="icon-gmail"></a></li>
        </ul>
      </section>

      <section class="ft-text">
        <h4>Thanks for visiting our website! For positive idea we will be glad</h4>
        <p>&copy;2010 - <?php echo date('Y'); ?> - HERAT SHOP</p>
      </section>
    </footer>

  </div><!--GRID CONTAINER END-->


  <!----------------------- --------JAVASCRIPT START--------------------------------->
  <script src="./asset/js/jquery-3.4.1.slim.min.js"></script>
  <script src="./asset/js/index.js"></script>

  <!-- ------------------------bootrap for shopping card ----------------->
  <script src="./asset/js/jquery-2.2.3.min.js"></script>
  <script type='text/javascript' src="./asset/js/bootstrap.min.js"></script>
  <script type='text/javascript' src="./asset/js/jquery.mycart.min.js"></script>
  <!-------------------------------JAVASRICPT END----------------------------------->

</body>
    
    </html>