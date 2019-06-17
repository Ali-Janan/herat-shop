<?php
require_once('php/pdo.php');
require_once('php/queries.php');
require_once('php/functions.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title><?php echo title('head', $params); ?></title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="<?php echo $params['settings']['description']; ?>">
  <!-- keywords in search by others -->
  <meta name="keywords" content="<?php echo $params['settings']['keywords']; ?>">
  <meta name="author" content="<?php echo $params['settings']['author']; ?>">
  <!-- shopping card plugin css-->
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

<!-- BODY START -->
<body>

  <div class="grid-container">

    <!-- HEADER START -->
    <header class="header">

      <!-- TOP ROW -->
      <section class="top-row">

        <!-- logo -->
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
    <main class="main-content">
      <!-- if it is the home page this will be displayed -->
      <?php if($params['home']['slug'] === $params['active_page']['slug']) { ?>


      <!-- BANNER-1 -->
      <section class="banner-1">
        <div class="padding">
          <figure><img class="meat-banner" src="<?php echo $params['banners']['first_banner'];?>" alt=""></figure>
        </div>
      </section>


      <!-- PRODUCTS START -->
      <section class="products">
        <h1 class="text-head">All Products and Special offers</h1>
        <div class="containers" id="myUL">
          <?php echo products($params);?>
        </div>
      </section>

      
      <!-- BANNER-2 START-->
      <section class="banner-2">
        <div class="padding">
          <figure><img class="meat-banner" src="<?php echo $params['banners']['second_banner'];?>" alt=""></figure>
        </div>
      </section>


      <!-- ASIAN START -->
      <section class="asian padding">

        <div>
          <h1>Asian Materials</h1>
        </div>

        <div class="cont">
          <figure><a href=""><img class="asian-img" src="<?php echo $params['banners']['first_image'];?>" alt=""></a>Beriani spices</figure>
          <figure><a href=""><img class="asian-img" src="<?php echo $params['banners']['second_image'];?>" alt=""></a>Dry fruits</figure>
          <figure><a href=""><img class="asian-img" src="<?php echo $params['banners']['third_image'];?>" alt=""></a>Qurma spices</figure>
        </div>

      </section>
      <?php } else {
        //otherwise print content from databas like branches ... 
      echo content($params);
      } ?>

    </main> <!-- MAIN CONTENT END -->


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


  <!-- JAVASCRIPT START -->
  /*#region*/
    <script src="./asset/js/jquery-3.4.1.slim.min.js"></script>
    <script src="./asset/js/index.js"></script>
    <!-- shopping card plugin -->
    <script src="./asset/js/jquery-2.2.3.min.js"></script>
    <script type='text/javascript' src="./asset/js/bootstrap.min.js"></script>
    <script type='text/javascript' src="./asset/js/jquery.mycart.min.js"></script>
  /*#end region */
  <!-- JAVASCRIPT END -->

</body><!-- BODY END -->
    
    </html>