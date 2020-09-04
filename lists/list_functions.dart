void main() {
  var mainList = [6,7,8,9,10, "bacon", "foo", "bar", 11, 12, 13];
  print('Original list: $mainList');
  
  //adding new element
  var mainList2 = [...mainList];
  mainList2.add(42);
  print('List with new element: $mainList2');
  
  
  //Checking size of list
  print('Elements in list: ${mainList.length}');
  
  
  //Checking if list is Empty
  print('Is list empty?: ${mainList.isEmpty}');
  
  
  //Checking if list contains some element:
  print('List contains any elements?: ${mainList.isNotEmpty}');
  
  
  //First element of list
  print('First Element: ${mainList.first}');
  
  
  //Last element of list
  print('Last Element: ${mainList.last}');
  
  
  //Clears all elements of list
  var clearList = [...mainList];
  clearList.clear();
  print('Erased list: $clearList');
  
  
  //reversing list!
  var reversedList = [...mainList].reversed.toList();
  print('Reversed list: $reversedList');
  
  
  //shuffling list!
  var shuffledList = [...mainList];
  shuffledList.shuffle();  
  print('Shuffled list: $shuffledList');
  
  
  //list as map
  var listAsMap =  [...mainList].asMap();
  print('List as map: $listAsMap');
  
  
  //filtering by type
  var onlyInt =  [...mainList].whereType<int>().toList();
  var onlyStr =  [...mainList].whereType<String>().toList();
  print('Only INT: $onlyInt');
  print('Only STRING: $onlyStr');
  
 
  //extracting range
  var startRange = 3; //inclusive
  var endRange = 6; //exclusive
  var slicedList = [...mainList].getRange(startRange, endRange);  
  print('Sliced List: $slicedList');
  
  
  //replacing range
  var startReplaceRange = 3; //inclusive
  var endReplaceRange = 6; //exclusive
  var sliceReplacedList = [...mainList];
  sliceReplacedList.replaceRange(startReplaceRange, endReplaceRange, ["X", "Y", "Z", "AA"]);    
  print('Slice replaced List: $sliceReplacedList');
  
  
  //first where
  var resultFirstWhere = [...onlyInt].firstWhere((el) => el % 2 == 0);
  print('First even number: $resultFirstWhere');
  
  
  //last where
  var resultLastWhere = [...onlyInt].lastWhere((el) => el % 2 == 0);
  print('Last even number: $resultLastWhere');
  
  
  //single where
  // will throw exception in case of duplicates.
  var resultSingleWhere = [...onlyInt].singleWhere((el) => el == 10);
  print('Element equals to 10: $resultSingleWhere');  
  
  
  //sum of all elements
  var initialValue = 0;
  var sumAllElements = [...onlyInt].fold(initialValue, (accumulated, element) => accumulated + element);
  print("Sum of all elements: $sumAllElements");
  
  
  //reduzing list...
  // just like fold, but don't have an initial value and list cannot be empty.
  var reducedList = [...onlyInt].reduce((accumulated, element) => accumulated + element);
  print("Another sum of all elements: $reducedList");
  
  
  //apend a list to another
  // both lists must be an iterable of the same type.
  var mergedList = [...onlyInt].followedBy([42, 43, 44, 45]).toList();
  print('Merged lists: $mergedList');
  
  
  //check if any element matches...
  var containsBacon = [...mainList].any((el) => el == 'bacon');
  print('List contain bacon? $containsBacon');
  
  
  //check if ALL element matches...
  var allElementsAreBacon = [...mainList].every((el) => el == 'bacon');
  print('List contains only bacon? $allElementsAreBacon');
  
  
  //take n first elements
  var took3 = [...mainList].take(3).toList();
  print('First 3 elements: $took3');
  
 
  //skip n first elements.
  var skipped2 = [...mainList].skip(2).toList();
  print('List without the first 2 elements: $skipped2');
  
  
  //transforming a list into another list of something else
  var mappedList = [...mainList].map((element) => 'El: $element').toList();
  print('Transformed list: $mappedList');
  
  
  //sorting list: ascending
  var ascSortedList = [...onlyInt.reversed];
  print('Unsorted list: $ascSortedList');
  ascSortedList.sort();
  print('Srted list: $ascSortedList');
  
  
  //sorting list: custom
  var sortedList = [...mainList];
  print('Unsorted list2: $sortedList');
  sortedList.sort((a, b) => a.runtimeType == int? -1 : 1);
  print('Sorted list2: $sortedList');
  
}

