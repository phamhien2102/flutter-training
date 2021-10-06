/**
 * Ref: https://dart.dev/codelabs/dart-cheatsheet
 */

final TAG = "Cheatsheet";

void cheatsheet() {
  stringify(5, 10);

  nullVariable();

  nullOperator();

  learnCollectionLiterals();

  learnArrowSyntax();

  learnCascades();

  learnGetterAndSetter();

  learnOptionalPositionalParameters();

  learnOptionalNamedParameters();
}

void stringify(int x, int y) {
  print('🚩 [$TAG] String interpolation');

  print('$x $y');
}

void nullVariable() {
  print('🚩 [$TAG] Nullable variables');

  String? name = 'Jane';

  String? address;

  print(name);

  print(address);
}

void nullOperator() {
  print('🚩 [$TAG] Null-aware operators');

  String? foo = 'a string 1';

  String? bar; // = null

  // Substitute an operator that makes 'a string 1' be assigned to baz.
  String? baz = bar ?? foo;
  print(baz);

  // Substitute an operator that makes 'a string 2' be assigned to bar.
  bar ??= 'a string 2';
  print(bar);
}

void learnCollectionLiterals() {
  print('🚩 [$TAG] Collection literals');

  // Assign this a list containing 'a', 'b', and 'c' in that order:
  final aListOfStrings = ['a', 'b', 'c'];

  // Assign this a set containing 3, 4, and 5:
  final aSetOfInts = {3, 4, 5};

  // Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
  final aMapOfStringsToInts = {'myKey': 12};

  // Assign this an empty List<double>:
  final anEmptyListOfDouble = <double>[];

  // Assign this an empty Set<String>:
  final anEmptySetOfString = <String>{};

  // Assign this an empty Map of double to int:
  final anEmptyMapOfDoublesToInts = <double, int>{};
}

void learnArrowSyntax() {
  print('🚩 [$TAG] Arrow syntax');
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int result() => value1 * value2 * value3;

  print(result());

  // Adds 1 to value1:
  int incrementValue1() => value1++;
  print(incrementValue1());

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
  print(joinWithCommas(['h', 'i', 'e', 'n']));
}

void learnCascades() {
  print('🚩 [$TAG] Cascades');

  /**
   * Use cascades to create a single statement that sets the anInt, aString, 
   * and aList properties of a BigObject to 1, 'String!', 
   * and [3.0] (respectively) and then calls allDone().
   */
  BigObject obj = new BigObject();
  obj
    ..anInt = 2
    ..aList.add(3)
    ..aString = 'Test'
    ..allDone();
}

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];

  void allDone() {
    print(aString);
  }
}

void learnGetterAndSetter() {
  print('🚩 [$TAG] Getters and setters');
}

void learnOptionalPositionalParameters() {
  print('🚩 [$TAG] Optional positional parameterss');
  int sumUpToFive1(int a, [int? b, int? c, int? d, int? e]) {
    int sum = a;
    if (b != null) sum += b;
    if (c != null) sum += c;
    if (d != null) sum += d;
    if (e != null) sum += e;
    return sum;
  }

  int sumUpToFive2(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
    int sum = a;
    sum += b;
    sum += c;
    sum += d;
    sum += e;
    return sum;
  }

  print(sumUpToFive1(1, 4));
  print(sumUpToFive2(1));
}

void learnOptionalNamedParameters() {
  print('🚩 [$TAG] Optional named parameters');

  int sumUpToFive1(int a, {int? b, int? c, int? d, int? e}) {
    int sum = a;
    if (b != null) sum += b;
    if (c != null) sum += c;
    if (d != null) sum += d;
    if (e != null) sum += e;
    return sum;
  }

  int sumUpToFive2(int a, {int b = 2, int c = 3, int d = 4, int e = 5}) {
    int sum = a;
    sum += b;
    sum += c;
    sum += d;
    sum += e;
    return sum;
  }

  print(sumUpToFive1(1, b: 5));
  print(sumUpToFive2(1));
}
