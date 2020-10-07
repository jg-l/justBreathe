import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:just_breathe/providers/settings_provider.dart';
import 'package:just_breathe/widgets/dark_mode_switcher.dart';
import 'package:just_breathe/widgets/timer_countdown.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        actions: [
          DarkModeSwitcher(),
        ],
      ),
      body: Center(
        child: TimerCountdown(
          context.read(appStateProvider.state).duration,
          zenMode: context.read(appStateProvider.state).isZenMode,
          playSounds: context.read(appStateProvider.state).playSounds,
        ),
      ),
    );
  }
}
