// Place fonts/appIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: appIcon
//      fonts:
//       - asset: fonts/appIcon.ttf
import 'package:flutter/widgets.dart';

class AppIcon {
  AppIcon._();

  static const String _fontFamily = 'appIcon';

  static const IconData delete = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe903, fontFamily: _fontFamily);
}
