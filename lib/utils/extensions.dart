extension DurationFormats on Duration {
  /// Converts duration into H:MM:SS format
  String clockFmt() {
    final hours = this.inHours.toString().padLeft(2, '0');
    final minutes = this.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = (this.inSeconds).remainder(60).toString().padLeft(2, '0');

    if (inHours >= 1) {
      return ('$hours:$minutes:$seconds');
    }
    return ('$minutes:$seconds');
  }
}
