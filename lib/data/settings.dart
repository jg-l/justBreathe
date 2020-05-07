import 'package:flutter/material.dart';
import 'package:just_breathe/constants/preset_timers.dart';

/// This class holds state that initializes values required in [MeditationScreen]
class MeditationModel extends ChangeNotifier {
  bool isZenMode;
  bool playSounds;
  Duration duration;

  List<Duration> get presets => kPresetTimers;

  MeditationModel() {
    isZenMode = false;
    playSounds = true;
    duration = presets[0];
  }
}
