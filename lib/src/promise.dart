// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js_util';

import 'package:js/js.dart';

@JS()
abstract class Promise<T> {
  external factory Promise(
    void Function(void Function(T result) resolve, Function reject) executor,
  );
  external Promise<T> then(
    void Function(T result) onFulfilled, [
    Function onRejected,
  ]);
}

extension PromiseX<T> on Promise<T> {
  Future<T> get future => promiseToFuture(this);
}
