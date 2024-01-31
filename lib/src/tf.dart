// ignore_for_file: avoid_positional_boolean_parameters

import 'package:js/js.dart';
import 'package:tfjs_dart/tfjs_dart.dart';

@JS()
external TF get tf;

@JS()
class TF {
  external Tensor scalar(num value, [String dtype]);
  external Tensor tensor(List<dynamic> values, [List<int> shape, String dtype]);
  external Tensor add(Tensor a, Tensor b);
  external Tensor sub(Tensor a, Tensor b);
  external Tensor mul(Tensor a, Tensor b);
  external Tensor div(Tensor a, Tensor b);
  external Tensor matMul(
    Tensor a,
    Tensor b, [
    bool transposeA,
    bool transposeB,
  ]);
  external Tensor transpose(Tensor a);
  external Tensor rand(List<num> shape, num Function() randFunction);
  external Tensor pad(Tensor x, List<dynamic> paddings, [num constantValue]);
  external Tensor expandDims(Tensor x, num axis);
  external Tensor reshape(Tensor x, List<num> shape);
  external Tensor squeeze(Tensor x, [num axis]);
  external Tensor cast(Tensor x, String dtype);
  external Promise<Tensor> booleanMaskAsync(
    Tensor x,
    Tensor mask, [
    num axis,
  ]);

  external TFBrowser get browser;
  external TFImage get image;
}

@JS()
class TFBrowser {
  external Tensor fromPixels(dynamic pixels, [num numChannels]);
  external Promise<Tensor> fromPixelsAsync(dynamic pixels, [num numChannels]);
}

@JS()
class TFImage {
  external Tensor resizeBilinear(
    Tensor image,
    List<num> size, [
    bool alignCorners,
    bool halfPixelCenters,
  ]);

  external Tensor resizeNearestNeighbor(
    Tensor image,
    List<num> size, [
    bool alignCorners,
    bool halfPixelCenters,
  ]);

  external Tensor cropAndResize(
    Tensor images,
    List<dynamic> boxes,
    List<int> boxInd,
    List<int> cropSize, [
    String method,
    num extrapolationValue,
  ]);
}
