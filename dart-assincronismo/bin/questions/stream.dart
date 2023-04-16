import 'dart:async';

void main(){
  Stream myStream(int interval, [int? maxCount]) async*{
    int i = 1;
    while(i != maxCount){
      print("Counting: $i");
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print("Stream finished");
  }

  StreamSubscription mySubscriber = myStream(1,10).listen((event) {
    if(event.isEven){
      print("This number is even");
    }
  });
  print("Main finished");
}

