import 'package:js/js.dart';
import 'package:tfjs_dart/tfjs_dart.dart';

@JS()
class Tensor {
  external int id;
  external String get dtype;
  external List<int> shape;
  external dynamic arraySync();
  external Promise<dynamic> array();
  external List<num> dataSync();
  external Promise<List<num>> data();
}
