/*
 In Dart, a Symbol object represents an operator or identifier declared within a Dart program. Symbols are compile-time constants and are immutable, meaning their value cannot be changed after creation.

 * Creating Symbols:
    >> Symbol Literal: Use a hash (#) followed by the identifier.
        Symbol mySymbol = #myIdentifier;
        print(mySymbol); // Output: Symbol("myIdentifier")
    >> Symbol Class Constructor: Explicitly construct a Symbol using its constructor with a string argument.
        Symbol anotherSymbol = Symbol('anotherIdentifier');
        print(anotherSymbol); // Output: Symbol("anotherIdentifier")
    Note that Symbol('myIdentifier') is equivalent to #myIdentifier.

 * Key characteristics and uses of Symbols in Dart:
    >>> Representation of Identifiers and Operators: Symbols provide a way to refer to names of variables, methods, classes, libraries, or operators within a Dart program. For example, #myMethod would represent the symbol for a method named myMethod.
     >>> Compile-time Constants: Symbol literals, created using the # prefix (e.g., #myMethod, #operator+), are compile-time constants. This ensures their immutability and allows for optimizations during compilation.
    >>> Reflection and Metaprogramming: While less commonly used in modern Dart development due to optimizations like tree shaking, Symbols were historically crucial for reflection and metaprogramming, particularly with the dart:mirrors library, although this library is largely deprecated for Flutter and web applications due to tree-shaking and size concerns). This allowed programs to inspect and manipulate their own structure at runtime, such as dynamically invoking methods by their symbolic name, retrieving information about a type's methods, constructors, or fields.
    >>> Minification Awareness: In scenarios where identifier names might be minified during compilation (to reduce file size), Symbols provide a stable, unchanging reference to those identifiers, as minification affects names but not their corresponding.
    >>> APIs Referring to Identifiers by Name: Symbols are valuable for APIs that need to refer to identifiers by their names, particularly in scenarios where code minification might alter the actual identifier names but not the corresponding symbol.
    >>> Opaque: While representing a string name, a Symbol object itself is opaque; you cannot directly extract the string name from a Symbol instance without using reflection (which, as noted, has limitations).
*/

import 'dart:core'; // Symbol is in dart:core

void main() {
  Symbol mySymbol = #myVariable;
  print(mySymbol); // Output: Symbol("myVariable")

  Symbol anotherSymbol = Symbol('anotherIdentifier');
  print(anotherSymbol); // Output: Symbol("anotherIdentifier")
}

// While symbols offer capabilities for dynamic programming and reflection, their direct use in modern Dart development, especially within Flutter, is less common due to the deprecation of dart:mirrors in many contexts and the emphasis on static analysis and tree-shaking for optimized application sizes.