/**
 * Ref: https://dart.dev/codelabs/async-await
 */

/**
  Part 1: reportUserRole()
  Add code to the reportUserRole() function so that it does the following:

  Returns a future that completes with the following string: "User role: <user role>"
  Note: You must use the actual value returned by fetchRole(); copying and pasting the example return value won’t make the test pass.
  Example return value: "User role: tester"
  Gets the user role by calling the provided function fetchRole().
  Part 2: reportLogins()
  Implement an async function reportLogins() so that it does the following:

  Returns the string "Total number of logins: <# of logins>".
  Note: You must use the actual value returned by fetchLoginAmount(); copying and pasting the example return value won’t make the test pass.
  Example return value from reportLogins(): "Total number of logins: 57"
  Gets the number of logins by calling the provided function fetchLoginAmount().
 */

final TAG = "Furture Asynchronous";

void learnFuture() {
  print('🚩 [$TAG] Learn Future, Async, Await ');
  reportUserRole();
  reportLogins();
}

Future<void> reportUserRole() async {
  var role = await fetchRole();
  print("User role: " + role);
}

// Part 2
// Implement reportLogins here
// You can call the provided async function fetchLoginAmount()
// to return the number of times that the user has logged in.
Future<void> reportLogins() async {
  var total = await fetchLoginAmount();
  print("Total number of logins: $total");
}

Future<String> fetchRole() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Tester');
}

Future<int> fetchLoginAmount() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 10);
}
