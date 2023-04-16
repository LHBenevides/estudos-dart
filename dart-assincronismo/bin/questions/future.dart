void main() {
  // Future myFuture = Future(() {
  //   print("Going back to the future");
  //   return 22;
  // }).then((value) => print("The value is: $value"));

  Future<int> myFutureFunc() async {
    print("Function in the future");
    await Future.delayed(Duration(seconds: 3));
    throw Exception();
    return 11;
  }

  // myFutureFunc()
  //     .then((value) => print("Function future $value"))
  //     .onError((error, stackTrace) => print("Error"))
  //     .whenComplete(() => print("Future is over"));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print("Function work!");
      await Future.delayed(Duration(seconds: 3));
      return 42;
    } catch (e) {
      print(e);
      return 42;
    } finally {
      print("Function Finally");
    }
  }

  myFutureErrorFunc(2, 1);
  print('Done with main');
}
