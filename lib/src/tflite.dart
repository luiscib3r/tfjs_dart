// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:js/js.dart';
import 'package:tfjs_dart/tfjs_dart.dart';

@JS()
external TFLite get tflite;

@JS()
class TFLite {
  external Promise<TFLiteModel> loadTFLiteModel(String modelUrl);
}

@JS()
class TFLiteModel {
  external dynamic predict(dynamic input);
}
