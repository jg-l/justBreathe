import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SunAndMoonSwitcher extends StatelessWidget {
  const SunAndMoonSwitcher({
    Key key,
    this.isDarkMode,
  }) : super(key: key);
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isDarkMode ? FlutterIcons.ios_moon_ion : FlutterIcons.ios_sunny_ion,
      color: Theme.of(context).accentColor,
      size: 28.0,
    );
  }
}
