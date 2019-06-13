<?php 

class Car {
  public $color = "";
  public $doors = 0;
  public $brand = ""; 
  public $wheels = 0;

  public function __construct($color, $doors, $brand, $wheels){
    $this->color = $color;
    $this->doors = $doors;
    $this->brand = $brand;
    $this->wheels = $wheels;
  }
  public function __
}

$ferrari = new Car("red", 2, "Ferrari", 4); 
echo $ferrari->color;



?>
