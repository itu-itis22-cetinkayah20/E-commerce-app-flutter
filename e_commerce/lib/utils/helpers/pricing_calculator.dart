 class TPricingCalculator {
  // -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  // -- Calculate shipping cost 
  static String calculateShippingCost(double productPrize, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }
  // -- Calculate tax 
  static String calculateTax(double productPrize, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrize * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    // Lookup the tax rate for the given location from a tax rate database or API
    // Return the appropriate tax rate
    return 0.1; // Example tax rate
  }

  static double getShippingCost(String location){
    // Lookup the shipping cost for the given location from a shipping cost database or API
    // Calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00; // Example shipping cost
  }
 }