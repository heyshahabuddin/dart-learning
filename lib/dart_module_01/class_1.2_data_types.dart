/*
  * Dart is a statically typed language, meaning variables have a fixed type that cannot change. Dart offers several built-in data types to handle different kinds of information:
    >>> Numbers: Represent numeric values.
        # int: For whole numbers (integers), including positive, negative, and zero.
        # double: For numbers with decimal points (floating-point numbers).
        # num: A supertype for both int and double, used when a variable can hold either an integer or a double.
    >>> Strings: Represent sequences of characters, used for text. Enclosed in single or double quotes.
    >>> Booleans: Represent logical values, either true or false. Used for conditional logic.
    >>> Lists: Ordered collections of items, similar to arrays in other languages. Can store elements of various data types.
    >>> Maps: Collections of key-value pairs, where each key is unique and maps to a specific value. Keys and values can be of any data type.
    >>> Sets: Unordered collections of unique items.
    >>> Records: Immutable, fixed-size collections of heterogeneous values. Structurally typed, meaning their type is determined by the types of their fields.
    >>> Runes: Represent the Unicode code points of a string, used for handling characters beyond the basic multilingual plane.
    >>> Symbols: Represent an operator or identifier declared in a Dart library.
    >>> Null: Represents the absence of a value. Dart has a Null type for this.
    >>> Other types: Dart also includes var, dynamic, final, and const keywords are used for variable declaration with differing mutability characteristics. var infers the type, final allows a single assignment at runtime, and const requires a compile-time constant value.
    >>> var (type inference): The var keyword allows Dart to infer the variable's type based on the initial value assigned.
    >>> dynamic (flexible type): The dynamic keyword allows a variable to hold values of any type, and its type can change during runtime. While offering flexibility, it's generally recommended to use specific types or var for better type safety.
    >>> Null Safety: Dart enforces null safety, meaning variables are non-nullable by default. To declare a nullable variable, explicitly add a ? after the type.
        String? optionalName; // Can hold null
        int nonNullableAge = 25; // Cannot be null unless initialized
  * Types of Variables:
    >>> Mutable variables: Declared with var or an explicit type, their values can be changed after initialization.
    >>> Immutable variables:
        # final: A variable declared with final can only be assigned a value once. Its value is determined at runtime.
            final String userId = generateUserId(); // Value assigned at runtime
        # const: A compile-time constant. Its value must be known at compile time and cannot be changed.
            const double PI = 3.14159;
*/