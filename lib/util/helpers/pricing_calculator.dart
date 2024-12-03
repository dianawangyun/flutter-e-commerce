class TPricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    if (location == 'US') {
      return 0.05;
    } else if (location == 'EU') {
      return 0.20;
    }
    return 0.0;
  }

  static double getShippingCost(String location) {
    if (location == 'US') {
      return 5.00;
    } else if (location == 'EU') {
      return 10.00;
    }
    return 10.0;
  }
}
