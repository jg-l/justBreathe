import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:just_breathe/providers/settings_provider.dart';
import 'package:just_breathe/widgets/sun_and_moon_switcher.dart';

class DarkModeSwitcher extends StatelessWidget {
  const DarkModeSwitcher({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          T Function<T>(ProviderBase<Object, T>) watch, Widget child) {
        final _appState = watch(appStateProvider.state);
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            context.read(appStateProvider).toggleDarkMode();
          },
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(24.0),
              child: SunAndMoonSwitcher(
                isDarkMode: _appState.isDarkMode,
              ),
            ),
          ),
        );
      },
    );
  }
}
