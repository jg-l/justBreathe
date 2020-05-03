import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_breathe/constants/quotes.dart';
import 'package:just_breathe/data/quote.dart';

/// Loads the licenses and attributions used by this project
void loadLicenses() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/v_OFL.txt');
    yield LicenseEntryWithLineBreaks(['Varela Round Font'], license);

    final license2 = await rootBundle.loadString('google_fonts/m_OFL.txt');
    yield LicenseEntryWithLineBreaks(['Montserrat'], license2);

    final license3 = 'https://icons8.com';
    yield LicenseEntryWithLineBreaks(['Illustration by Ouch.pics'], license3);
  });
}

/// Determine if its currently dark or light mode
bool isDark(BuildContext context) {
  var brightness = MediaQuery.of(context).platformBrightness;
  return brightness == Brightness.dark;
}

/// A function that returns a random quote from [kDefaultQuotes]
Quote getQuote(BuildContext context) {
  var r = Random(DateTime.now().millisecondsSinceEpoch);
  final quotes = kDefaultQuotes(context);
  var randInt = r.nextInt(quotes.length);
  return quotes[randInt];
}
