void stackStart(){
//   // double amount = double.parse("25,23"); //Type error
//   recursiveFunc(1); //stackoverflow
// }
//
// recursiveFunc(int count){
//   print(count);
//   recursiveFunc(count + 1);

  print("started Main");
  functionOne();
  print("Finished Main");

  //throw FormatException();

}

void functionOne(){
  print("Started F01");
  try{
    functionTwo();
  }catch(exception, stackTrace){
    print(stackTrace);
    //print(exception.runtimeType);
    //rethrow; // vai para o proxima na pilha (main)
  } finally {
    print("chegou finally");
  }
  print("Finished F01");

}

void functionTwo(){
  print("Started F02");
  for(int i = 1; i<=5; i++){
    print(i);
    // try{
    double amount = double.parse("Not number");
    // } on FormatException catch(e){
    //   print("A conversão falhou");
    //   print(e.toString());
    // }

  }
  print("Finished F02");

}


