// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:async';
import 'dart:html' as html;

export 'src/tensorflow.dart';

Stream<bool> loadTfJsCore() {
  final controller = StreamController<bool>.broadcast();

  final script = html.document.createElement('script')
    ..setAttribute('id', 'tfjs_core')
    ..setAttribute(
      'src',
      'https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-core',
    )
    ..setAttribute('type', 'application/javascript')
    ..addEventListener('load', (event) {
      controller
        ..add(true)
        ..close();
    })
    ..addEventListener('error', (event) {
      controller
        ..addError(event)
        ..close();
    });

  html.document.body?.append(script);

  return controller.stream;
}

Stream<bool> loadTfJsBackendCpu() {
  final controller = StreamController<bool>.broadcast();

  final script = html.document.createElement('script')
    ..setAttribute('id', 'tfjs_backend_cpu')
    ..setAttribute(
      'src',
      'https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-backend-cpu',
    )
    ..setAttribute('type', 'application/javascript')
    ..addEventListener('load', (event) {
      controller
        ..add(true)
        ..close();
    })
    ..addEventListener('error', (event) {
      controller
        ..addError(event)
        ..close();
    });

  html.document.body?.append(script);

  return controller.stream;
}

Stream<bool> loadTfJsBackendWebGpu() {
  final controller = StreamController<bool>.broadcast();

  final script = html.document.createElement('script')
    ..setAttribute('id', 'tfjs_backend_webgpu')
    ..setAttribute(
      'src',
      'https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-backend-webgpu',
    )
    ..setAttribute('type', 'application/javascript')
    ..addEventListener('load', (event) {
      controller
        ..add(true)
        ..close();
    })
    ..addEventListener('error', (event) {
      controller
        ..addError(event)
        ..close();
    });

  html.document.body?.append(script);

  return controller.stream;
}

Stream<bool> loadTfJsLite() {
  final controller = StreamController<bool>.broadcast();

  final script = html.document.createElement('script')
    ..setAttribute('id', 'tfjs_lite')
    ..setAttribute(
      'src',
      'https://cdn.jsdelivr.net/npm/@tensorflow/tfjs-tflite/dist/tf-tflite.min.js',
    )
    ..setAttribute('type', 'application/javascript')
    ..addEventListener('load', (event) {
      controller
        ..add(true)
        ..close();
    })
    ..addEventListener('error', (event) {
      controller
        ..addError(event)
        ..close();
    });

  html.document.body?.append(script);

  return controller.stream;
}
