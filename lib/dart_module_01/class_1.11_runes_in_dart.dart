/*
  * In Dart, a rune is an integer representing a Unicode code point. Dart strings are sequences of UTF-16 code units, but some Unicode characters (like emojis or less common scripts) require more than one UTF-16 code unit to represent a single character. Runes provide a way to work with these characters as single entities, representing their full 32-bit Unicode code point.
  * The String.runes property provides an Iterable<int> of the Unicode code points (runes) within a string.
*/

void main() {
  // A string with a character outside the Basic Multilingual Plane (BMP)
  // The smiling face emoji requires two UTF-16 code units.
  var text = 'Hello 😀';

  // Accessing runes to iterate over Unicode code points
  print('Iterating through runes:');
  for (var rune in text.runes) {
    print('Rune: $rune (hex: ${rune.toRadixString(16)})');
  }

  // Converting runes back to a string
  var runesList = text.runes.toList();
  var newString = String.fromCharCodes(runesList);
  print('String from runes: $newString');

  // Demonstrating the difference between code units and runes
  print('\nCode units vs. Runes:');
  print('String: "$text"');
  print('Code units: ${text.codeUnits}'); // Shows individual UTF-16 code units
  print('Runes: ${text.runes.toList()}'); // Shows full Unicode code points

  final int codeUnitAt = text.codeUnitAt(0);
  print('codeUnitAt: $codeUnitAt'); // Output: 72 (for 'H')
}

/*
  * Explanation:
    >> text.runes: This property returns an Iterable<int> of the Unicode code points (runes) in a string. This is the most common way to iterate through the actual Unicode characters of a string.
    >> for (var rune in text.runes): This loop iterates through each complete Unicode character, even if it's composed of multiple UTF-16 code units.
    >> String.fromCharCodes(runesList): This static method allows you to construct a string from a list of integer code points (runes).
    >> text.codeUnits: This property returns an List<int> of the 16-bit UTF-16 code units that make up the string. This is useful for low-level string manipulation, but it does not directly represent Unicode code points for characters outside the BMP.
    >> text.runes.toList(): This converts the Runes iterable into a List<int>, showing the distinct Unicode code points.
    >> String.codeUnitAt(int index) method: This method returns the 16-bit UTF-16 code unit at a specific index within the string.

  This example demonstrates how runes allow for correct handling and manipulation of Unicode characters, especially those outside the BMP, ensuring that operations are performed on complete characters rather than just their underlying code units.

  Key Difference: While codeUnits and codeUnitAt work with the underlying UTF-16 representation, runes provides access to the actual Unicode code points, correctly handling characters that might span multiple UTF-16 code units (like emojis). This is crucial for accurate character manipulation and display in a globalized context.
*/