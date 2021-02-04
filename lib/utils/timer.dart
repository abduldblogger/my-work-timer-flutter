import 'dart:async';

import 'package:my_work_timer/model/timer-model.dart';

class CountDownTimer {
  double _radius = 1;
  bool _isActive = true;
  Timer timer;
  Duration _remainingTime;
  Duration _fullTime;
  int _work = 1;

  String getTime(Duration time) {
    String minutes = (time.inMinutes < 10)
        ? '0' + time.inMinutes.toString()
        : time.inMinutes.toString();
    int numSeconds = time.inSeconds - (time.inMinutes * 60);
    String seconds =
        (numSeconds < 10) ? '0' + numSeconds.toString() : numSeconds.toString();
    String formattedTime = '$minutes : $seconds';
    return formattedTime;
  }

  Stream<TimerModel> stream() async* {
    yield* Stream.periodic(Duration(seconds: 1), (int a) {
      String time;
      if (this._isActive) {
        _remainingTime = _remainingTime - Duration(seconds: 1);
        _radius = _remainingTime.inSeconds / _fullTime.inSeconds;
        if (_remainingTime.inSeconds <= 0) {
          _isActive = false;
        }
      }
      time = getTime(_remainingTime);
      return TimerModel(time, _radius);
    });
  }

  void startWork() {
    _radius = 1;
    _remainingTime = Duration(minutes: this._work, seconds: 0);
    _fullTime = _remainingTime;
  }
}
