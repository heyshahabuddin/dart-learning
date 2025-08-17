class Shop{
  late final String _name;
  late final String _location;
  List<String> _productsList = [];

  // Named parameters can't start with an underscore.
  Shop({required String name, required String location, required List<String> productsList}) {
    // 'final' variable can't be used as a setter.
    _name = name; // Assigning the name to the private field
    _location = location; // Assigning the location to the private field
    // Note: 'final' variables must be initialized in the constructor. They cannot be assigned later, so we initialize them directly in the constructor.
    // Using 'final' ensures that these fields cannot be reassigned after the object is created or initialization. This is a common practice in Dart to ensure immutability of certain fields. This is useful for ensuring that the state of the object remains consistent.
    // The constructor initializes the private fields with the provided values.
    _productsList = productsList;
  }

  void displayInfo() {
    print('Shop Name: $_name');
    print('Location: $_location');
    print('Products: ${_productsList.join(', ')}');
  }
}