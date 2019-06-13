/**
 * SHOW MORE AND SHOW LESS FUNTION
 */
function myFunction() {
  var jan = document.getElementById("jan");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("readMoreBtn");

  if (jan.style.display === "none") {
    jan.style.display = "inline";
    btnText.innerHTML = "Show more"; 
    moreText.style.display = "none";
  } else {
    jan.style.display = "none";
    btnText.innerHTML = "Show less"; 
    moreText.style.display = "flex";
  }
}
//----------------------------------------------------
/**
 * SEARCH FUNCTION
 */
function searchFunction() {
  // Declare variables
  var input, filter, ul, li, a, i, txtValue;
  input = document.getElementById('myInput');
  filter = input.value.toUpperCase();
  ul = document.getElementById("myUL");
  li = ul.getElementsByTagName('div');
  
  // Loop through all list items, and hide those who don't match the search query
  for (i = 0; i < li.length; i++) {
    a = li[i].getElementsByClassName("name")[0];
    txtValue =  a.innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
    
  }
}
//------------------------------------------------------------------
/**
 * ADDTOBASKET FUNCTION
 */
function addToBasket (event) {
  console.log("hello", event);
}


const button = document.querySelector('button');

button.addEventListener('click', function (event) {
  addToBasket(event);
});

/*
const menuElement = document.querySelector('.menu-icon');
const topNavElement = document.querySelector('.top-nav');
menuElement.addEventListener('click', function(e) {
  console.log("menu click", e);
  menuElement.classList.toggle('opened');
  topNavElement.classList.toggle('opened');
});
*/


//------------------------------------------------------
/**
 * JQUERY 
 * OPEN AND CLOSE NAV WHEN CLICK
 */
  $(".icon-menu").on('click', function() {
    
    $(".nav").toggleClass('nav-open');
    
});
$('#menu-products').on('click', function() {
  
  $('#aside').toggleClass('aside-open');
});
//------------------------------------------------------
/**
 * JQUERY 
 * ADD TO BASKET
 */
$(document).ready(function () {
  2
    $('#cart').simpleCart();
  3
  });

// -----------------------bootstrap function------------------------------
$(function () {

  var goToCartIcon = function($addTocartBtn){
    var $cartIcon = $(".my-cart-icon");
    var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"});
    $addTocartBtn.prepend($image);
    var position = $cartIcon.position();
    $image.animate({
      // i changed (top: position.top) to buttom so it does not show animation 
      top: position.button,
      left: position.left
    }, 500 , "linear", function() {
      $image.remove();
    });
  }

  $('.my-cart-btn').myCart({
    currencySymbol: '$',
    classCartIcon: 'my-cart-icon',
    classCartBadge: 'my-cart-badge',
    classProductQuantity: 'my-product-quantity',
    classProductRemove: 'my-product-remove',
    classCheckoutCart: 'my-cart-checkout',
    affixCartIcon: true,
    showCheckoutModal: true,
    numberOfDecimals: 2,
    cartItems: [
      {id: 1, name: 'product 1', summary: 'summary 1', price: 10, quantity: 1, image: 'images/img_1.png'},
      {id: 2, name: 'product 2', summary: 'summary 2', price: 20, quantity: 2, image: 'images/img_2.png'},
      {id: 3, name: 'product 3', summary: 'summary 3', price: 30, quantity: 1, image: 'images/img_3.png'}
    ],
    clickOnAddToCart: function($addTocart){
      goToCartIcon($addTocart);
    },
    afterAddOnCart: function(products, totalPrice, totalQuantity) {
      console.log("afterAddOnCart", products, totalPrice, totalQuantity);
    },
    clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) {
      console.log("cart icon clicked", $cartIcon, products, totalPrice, totalQuantity);
    },
    checkoutCart: function(products, totalPrice, totalQuantity) {
      var checkoutString = "Total Price: " + totalPrice + "\nTotal Quantity: " + totalQuantity;
      checkoutString += "\n\n id \t name \t summary \t price \t quantity \t image path";
      $.each(products, function(){
        checkoutString += ("\n " + this.id + " \t " + this.name + " \t " + this.summary + " \t " + this.price + " \t " + this.quantity + " \t " + this.image);
      });
      alert(checkoutString)
      console.log("checking out", products, totalPrice, totalQuantity);
    },
    getDiscountPrice: function(products, totalPrice, totalQuantity) {
      console.log("calculating discount", products, totalPrice, totalQuantity);
      return totalPrice * 0.5;
    }
  });

  $("#addNewProduct").click(function(event) {
    var currentElementNo = $(".row").children().length + 1;
    $(".row").append('<div class="col-md-3 text-center"><img src="images/img_empty.png" width="150px" height="150px"><br>product ' + currentElementNo + ' - <strong>$' + currentElementNo + '</strong><br><button class="btn btn-danger my-cart-btn" data-id="' + currentElementNo + '" data-name="product ' + currentElementNo + '" data-summary="summary ' + currentElementNo + '" data-price="' + currentElementNo + '" data-quantity="1" data-image="images/img_empty.png">Add to Cart</button><a href="#" class="btn btn-info">Details</a></div>')
  });
});