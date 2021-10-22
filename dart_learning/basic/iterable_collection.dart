/**
 * Ref: https://dart.dev/codelabs/iterables
 */

final TAG = "Iterable Element";
void learnIterableCollection() {
  learnReadElement();
  learnFilteringElements();
}

void learnReadElement() {
  print('🚩 [$TAG] Read Element');

  const iterable = ['Salad', 'Popcorn', 'Toast'];
  for (var element in iterable) {
    print(element);
  }

  print('The first element is ${iterable.first}');
  print('The last element is ${iterable.last}');

  if (iterable.any((item) => item.contains('a'))) {
    print('At least one item contains "a"');
  }

  if (iterable.every((item) => item.length >= 5)) {
    print('All items have length >= 5');
  }
}

String singleWhere(Iterable<String> items) {
  // Implement the predicate of singleWhere
  // with the following conditions
  // * The element contains the character `'a'`
  // * The element starts with the character `'M'`

  return items
      .singleWhere((item) => item.startsWith('M') && item.contains('a'));
}

void learnFilteringElements() {
  print('🚩 [$TAG] Filtering Elements');
  const numbers = [1, 3, -2, 0, 4, 5];

  var numbersUntilZero = numbers.takeWhile((number) => number != 0);
  print('Numbers until 0: $numbersUntilZero');

  var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
  print('Numbers starting at 0: $numbersStartingAtZero');
}
