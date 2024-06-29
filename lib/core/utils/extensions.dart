import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension Navigation on BuildContext {
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamedRemoveUntil(
      String newRoute, bool Function(Route<dynamic>) predicate,
      {Object? arguments}) {
    Navigator.of(this)
        .pushNamedAndRemoveUntil(newRoute, predicate, arguments: arguments);
  }

  void removeRoute(Route<dynamic> route) {
    Navigator.of(this).removeRoute(route);
  }

  void pop() {
    Navigator.of(this).pop();
  }
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  double get blockSizeHorizontal => screenWidth / 100;
  double get blockSizeVertical => screenHeight / 100;

//  double get textScaleFactor => mediaQuery.;
}

extension DateTimeConversionExtension on DateTime {
  int get secondsSinceEpoch => (millisecondsSinceEpoch / 1000).round();
}

extension DateTimeComparisonOperators on DateTime {
  bool operator <(DateTime other) => isBefore(other);
  bool operator >(DateTime other) => isAfter(other);
  bool operator <=(DateTime other) => this < other || isAtSameMomentAs(other);
  bool operator >=(DateTime other) => this > other || isAtSameMomentAs(other);
}


extension ListFilterExt<T> on Iterable<T?> {
  List<T> get withoutNulls => where((s) => s != null).map((e) => e!).toList();
}

extension ListDivideExt<T extends Widget> on Iterable<T> {
  Iterable<MapEntry<int, Widget>> get enumerate => toList().asMap().entries;

  List<Widget> divide(Widget t) => isEmpty
      ? []
      : (enumerate.map((e) => [e.value, t]).expand((i) => i).toList()
    ..removeLast());

  List<Widget> around(Widget t) => addToStart(t).addToEnd(t);

  List<Widget> addToStart(Widget t) =>
      enumerate.map((e) => e.value).toList()..insert(0, t);

  List<Widget> addToEnd(Widget t) =>
      enumerate.map((e) => e.value).toList()..add(t);

  List<Padding> paddingTopEach(double val) =>
      map((w) => Padding(padding: EdgeInsets.only(top: val), child: w))
          .toList();
}

extension StatefulWidgetExtensions on State<StatefulWidget> {
  /// Check if the widget exist before safely setting state.
  void safeSetState(VoidCallback fn) {
    if (mounted) {
      // ignore: invalid_use_of_protected_member
      setState(fn);
    }
  }
}

Brightness? _lastBrightness;
void fixStatusBarOniOS16AndBelow(BuildContext context) {
  if (!Platform.isIOS) {
    return;
  }
  final brightness = Theme.of(context).brightness;
  if (_lastBrightness != brightness) {
    _lastBrightness = brightness;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: brightness,
        systemStatusBarContrastEnforced: true,
      ),
    );
  }
}

extension ListUniqueExt<T> on Iterable<T> {
  List<T> unique(dynamic Function(T) getKey) {
    var distinctSet = <T>{};
    var distinctList = <T>[];
    for (var item in this) {
      if (distinctSet.add(getKey(item))) {
        distinctList.add(getKey(item));
      }
    }
    return distinctList;
  }
}
