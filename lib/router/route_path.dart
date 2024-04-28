import 'package:flutter/material.dart';

class RoutePath {
  final String? _path;
  final String _pathEnd;
  final String? _parameter;
  Key _key = UniqueKey();

  RoutePath({
    String? path,
    required String pathEnd,
    String? parameter,
  })  : _path = path,
        _pathEnd = pathEnd,
        _parameter = parameter;

  String path({String? parameter}) {
    String path = (_path ?? "") + "/" + _pathEnd;
    path = _parameter == null
        ? path
        : path + "/" + (parameter ?? _parameter);
    return path;
  }

  String pathEnd() {
    String pathEnd = (_path ?? "").isEmpty
        ? "/" + _pathEnd
        : _pathEnd;
    pathEnd = _parameter == null
        ? pathEnd
        : pathEnd + "/" + ":" + _parameter;
    return pathEnd;
  }

  String parameter() {
    return _parameter ?? "";
  }

  Key key({String? fullPath}) {
    if (fullPath?.replaceAll(":", "") == path())
      _key = UniqueKey();
    return _key;
  }
}
