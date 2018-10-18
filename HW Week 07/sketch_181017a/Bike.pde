class Bike{
  String brand; 
  String purpose;
  int gears;
  
  Bike(String whatBrand, String whatPurpose, int howManyGears){
    println("This is a " + whatBrand + "for " + whatPurpose + "with " + howManyGears + " gears.");
    brand = whatBrand;
    purpose = whatPurpose;
    gears = howManyGears;
    
    
  }
  
}
