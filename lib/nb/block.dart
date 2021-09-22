import 'dart:async';
class counterBloc{
  int value=0;
  StreamController<int> _streamController=new StreamController<int>();

  void increment(){
    value++;
    _streamController.sink.add(value);
  }
  Stream<int> getStream(){
    return _streamController.stream;
  }
  void dispose(){
    _streamController.close();
  }
}