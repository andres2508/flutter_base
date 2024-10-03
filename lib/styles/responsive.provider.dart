import 'package:base_project/styles/responsive/text_responsive.provider.dart';
import 'package:base_project/utils/responsive.utils.dart';
import 'package:flutter/src/rendering/box.dart';

class ResponsiveProvider {
  static final ResponsiveProvider instance = ResponsiveProvider._intern();
  bool _isBigScreen = true;

  ResponsiveProvider._intern();

  bool get isTablet => _isBigScreen;

  bool get isPhone => !_isBigScreen;

  void validate(BoxConstraints constraints) {
    _isBigScreen = ResponsiveUtils.isTablet(constraints);
    if (_isBigScreen) {
      TextStyleProvider.instance.changeToTablet();
    } else {
      TextStyleProvider.instance.changeToMobile();
    }
  }
}
