<?php
/* ERROR MESSAGE
--------------------------------------*/
ini_set('display_errors', 1);
error_reporting(E_ALL & ~E_NOTICE);


/** GLOBALS VARIABLE (active page)
 * --------------------------------------*/
$get_page   = router();


/* PARAMETERS (store the data)
--------------------------------------*/
$params = [
  'get_page'        => $get_page,
  'settings'        => query('settings'),
  'active_page'     => query('page', [$get_page]), 
  'products'        => query('products'),
  'banners'         => query('banners'),
  'home'            => query('home_slug')
];


/* ROUTER (manage what to take from URL)
--------------------------------------*/
function router() {
//  delete the page name from URL
  $self = str_replace('index.php', '', $_SERVER['PHP_SELF']); 
  // take the last part of URL
  $slug = str_replace($self, '', $_SERVER['REQUEST_URI']);
  
  // it slug was empty display index = home
  if( empty($slug) ) {
     $slug = query('home_slug')['slug'];
  }
    return $slug;
}
  
  
  /* MENU FUNCTION
  --------------------------------------*/
  function menu_items($params = []) {
    
    $pages = query('menus'); 
    $get_page = $params['get_page'];
    
    $menu_items = '';
    
    $menu_items .= '<ul class="my-nav">'.PHP_EOL;
    
    if(!$pages) {
      return 'You have no page!';
    }
    
    //START LOOP
    foreach($pages as $page) {
      
      $menu = $page['menu'];
      $slug = $page['slug'];
      
      $active = ($get_page === $slug) ? ' active' : '';
      
      $menu_items .= '<li class="menu-item'.$active.'"><a href="'.$slug.'">'.$menu.'</a></li>'.PHP_EOL;
      
    }
    
    $menu_items .= '</ul>'.PHP_EOL; //endline character
    
    return $menu_items;
    
  }
  
  
  /* ACTIVE PAGE
  --------------------------------------*/
  function content($params = []) {
    
    $content = $params['active_page']['content'];
    
    return $content;
    
  }

  
  /* TITLE
  --------------------------------------*/
  function title($zone = 'content', $params = []) {
    
    $title = $params['active_page']['title'];
    
    // 
    if($zone === 'content') {
      // this will display the page title only
      return $title;
    } elseif ($zone === 'head') {
      // this will display the page title plus the global title of the page.
      return $title .' | '. $params['settings']['global_title'];
    }
    
  }
  
  
  /* SIDE NAV
  --------------------------------------*/
  function side_nav($params = []) {
    $categories = query('category'); 
    $menu_items = '';
    $menu_items .= '<nav class="category"><ul>'.PHP_EOL;

    if(!$categories) {
      return 'You have no categories !';
    }
    
    //START LOOP
    foreach($categories as $category) {
      $menu_items .= '<li class="space"><a href="'.$category['pic_link'].'" class=" space icon-'.$category['icon'].'">'.$category['category_name'].'</a></li>'.PHP_EOL;
    }
    $menu_items .= '</ul></nav>'.PHP_EOL;
    return $menu_items;
  }
  
  
  /* PRODUCTS HTML
  --------------------------------------*/
  function products($params = []) {
    
    $result = ''; //this will return all products by looping in each record
    
    $products = $params['products'];
    
    
    foreach($products as $record) {
      $result .= '<div class="itmes">';
      
      //calculate discount
      $new_price = $record['new_price'];
      $old_price = $record['old_price'];
      $discount = cal_discount($new_price, $old_price);
      $result .= '<span class="discount">Discount '.$discount.'%</span>';
      
      $result .= '<a href="#"><figure data-name="product 1"><img src="'.$record['pic_link'].'" alt=""></figure></a>';
      $result .= '<span class="new-price">'.$record['new_price'].' CH</span>';
      $result .= '<span class="old-price">'.$record['old_price'].'</span>';
      $result .= '<span class="name">'.$record['product_name'].'</span>';
      $result .= '<span class="number">'.$record['unit'].'</span>';
      $result .= '<button class="icon-add-to-basket my-cart-btn" data-id="1" data-name="product 1" data-summary="summary 1" data-price="1" data-quantity="1" data-image="./asset/image/8.jpg"></button>';
      $result .= '</div>';
    }
    return $result;              
  }
  
    /* DISCOUNT CALCULATE FUNCTION
  --------------------------------------*/
  function cal_discount($new_price, $old_price){
    $discount = ($old_price - $new_price)/$old_price;
    return floor($discount*100);
  }


  /* SHOW FUNCTION
  --------------------------------------*/
  function show($data = '') {
    echo '<pre>';
    print_r($data);
    echo '</pre>';
  } 