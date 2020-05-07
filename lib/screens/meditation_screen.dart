import 'package:flutter/material.dart';
import 'package:just_breathe/data/settings.dart';
import 'package:just_breathe/widgets/timer_countdown.dart';
import 'package:provider/provider.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TimerCountdown(
          Provider.of<MeditationModel>(context, listen: false).duration,
          zenMode:
              Provider.of<MeditationModel>(context, listen: false).isZenMode,
          playSounds:
              Provider.of<MeditationModel>(context, listen: false).playSounds,
        ),
      ),
    );
  }
}
