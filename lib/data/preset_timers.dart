/// A simple class holding a string representation of a Duration
class PresetDuration {
  PresetDuration(this.name, this.duration);
  String name;
  Duration duration;

  @override
  String toString() {
    return name;
  }

  bool operator ==(dynamic other) =>
      other != null && other is PresetDuration && this.name == other.name;

  @override
  int get hashCode => super.hashCode;
}

/// This the preset timers presented in [MainScreen]
List<PresetDuration> kPresetTimers = <PresetDuration>[
  PresetDuration('5 Minutes', Duration(minutes: 5)),
  PresetDuration('10 Minutes', Duration(minutes: 10)),
  PresetDuration('20 Minutes', Duration(minutes: 20)),
  PresetDuration('30 Minutes', Duration(minutes: 30)),
  PresetDuration('45 Minutes', Duration(minutes: 45)),
  PresetDuration('1 Hour', Duration(minutes: 60)),
  PresetDuration('2 Hours', Duration(minutes: 120)),
];
