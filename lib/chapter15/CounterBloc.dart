import 'dart:async';

class CounterBloc {
  int _total = 0;
  final _actionController = StreamController<int>();
  StreamSink<int> get counter => _actionController.sink;

  final _counterController = StreamController<int>();

  Stream<int> get total => _counterController.stream;
  CounterBloc() {
    _actionController.stream.listen(onData);
  }

  void onData(data) {
    _total = data + _total;
    _counterController.add(_total);
  }

  void disponse() {
    print('销毁');
    _actionController.close();
    _counterController.close();
  }

  void log() {
    print('BloC');
  }
}
