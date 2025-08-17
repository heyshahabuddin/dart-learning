void main() {
  // Creating a list of fruits using maps
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);


  print("\nUpdated Fruit Details After Applying 10% Discount:");
  // 10% discount applied to each fruit
  applyPriceDiscount(fruits, 10);
  // Display the updated fruit details after discount
  displayFruitDetails(fruits);
}

// Define a function to display fruit details
void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

// Define a function to apply discount for prices
void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercent) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountedPrice = originalPrice - (originalPrice * discountPercent / 100);
    fruit['price'] = double.parse(discountedPrice.toStringAsFixed(2));
    //print("Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}
