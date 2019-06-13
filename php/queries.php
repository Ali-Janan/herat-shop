<?php


function query($zone, $params = []) {
  
  //START SWITCH
  switch($zone) {
    
    //QUERY THE pages TABLE
    case 'menus' :
    $sql = "SELECT menu, slug FROM pages WHERE visible = ?";
    
    $params = [1];
    
    //CLEAN UP YOUR SQL STRING
    $sth = db()->prepare($sql);
    
    //EXECUTE THE QUERY - With the real values
    $sth->execute($params);
    
    //Get the results
    $results = $sth->fetchAll();
    break;
    

    // SIDE NAV - category
    case 'category' :
    $sql = "SELECT category_name, link, icon FROM category";
    //CLEAN UP YOUR SQL STRING
    $sth = db()->prepare($sql);
    //EXECUTE THE QUERY - With the real values
    $sth->execute();
    //Get the results
    $results = $sth->fetchAll();
    
    break;
    
    
    //QUERY PAGE
    case 'page' :
    $sql = "SELECT page_key, title, content FROM pages WHERE slug = ? LIMIT 1";
    
    $sth = db()->prepare($sql);
    $sth->execute($params);
    $results = $sth->fetch();
    break;
    
    
    //QUERY FOR THE DEFAULT SLUG
    case 'home_slug' :
    $sql = "SELECT slug FROM pages WHERE is_home = ? LIMIT 1";
    
    $sth = db()->prepare($sql);
    $sth->execute([1]);
    $results = $sth->fetch();
    break;
    
    
    //QUERY THE settings TABLE
    case 'settings' :
    $sql = "SELECT settings_key, settings_value FROM settings";
    
    $sth = db()->prepare($sql);
    $sth->execute();
    $results = $sth->fetchAll(PDO::FETCH_KEY_PAIR);
    
    break;

    // PRODUCTS
    case 'products' :
    $sql = "SELECT discount, pic_link, new_price, old_price, product_name, unit FROM products ORDER BY products_id";
    
    $sth = db()->prepare($sql);
    $sth->execute();
    $results = $sth->fetchAll();
    break;
    
    
    //BY DEFAULT (if a case is not defined) DO THIS
    default : 
    
    break;
    
  } //END SWITCH
  
  
  return $results;
  
  
}

//var_dump( query('home_slug') );