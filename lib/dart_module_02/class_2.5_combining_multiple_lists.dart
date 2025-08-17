/*
  Combining lists and maps in Dart can refer to several scenarios:
  * Combining Multiple Lists into One:
    # Spread Operator (...): This is a concise and modern way to combine lists.
        List<String> list1 = ['apple', 'banana'];
        List<String> list2 = ['orange', 'grape'];
        List<String> combinedList = [...list1, ...list2];
        // combinedList will be ['apple', 'banana', 'orange', 'grape']
    # addAll() method: Adds all elements of one list to an existing list.
        List<String> list1 = ['apple', 'banana'];
        List<String> list2 = ['orange', 'grape'];
        list1.addAll(list2);
        // list1 will be ['apple', 'banana', 'orange', 'grape']
  *
  *
*/