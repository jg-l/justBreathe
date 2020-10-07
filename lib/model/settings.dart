import 'package:copy_with_extension/copy_with_extension.dart';

part 'settings.g.dart';

/// This class holds the current state of the entire app
@CopyWith()
class AppState {
  bool isZenMode;
  bool playSounds;
  Duration duration;
  bool isDarkMode;

  AppState({
    this.isZenMode = false,
    this.playSounds = false,
    this.isDarkMode = false,
    this.duration = const Duration(minutes: 5),
  });
}

extension toggleBool on bool {
  bool toggle() {
    return !this;
  }
}
