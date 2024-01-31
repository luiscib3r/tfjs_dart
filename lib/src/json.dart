import 'package:js/js.dart';

@JS()
// ignore: non_constant_identifier_names, library_private_types_in_public_api
external _JSON get JSON;

@JS('JSON')
class _JSON {
  external String stringify(dynamic object);
}
