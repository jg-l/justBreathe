// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class S {
  S();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final String name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return S();
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get tagline {
    return Intl.message(
      'Take time to breathe',
      name: 'tagline',
      desc: '',
      args: [],
    );
  }

  String get durationSettingLabel {
    return Intl.message(
      'Duration',
      name: 'durationSettingLabel',
      desc: '',
      args: [],
    );
  }

  String get playSoundSettingLabel {
    return Intl.message(
      'Play Sounds',
      name: 'playSoundSettingLabel',
      desc: '',
      args: [],
    );
  }

  String get zenModeSettingLabel {
    return Intl.message(
      'Zen Mode',
      name: 'zenModeSettingLabel',
      desc: '',
      args: [],
    );
  }

  String get beginButton {
    return Intl.message(
      'Begin',
      name: 'beginButton',
      desc: '',
      args: [],
    );
  }

  String get endButton {
    return Intl.message(
      'End',
      name: 'endButton',
      desc: '',
      args: [],
    );
  }

  String get homeButton {
    return Intl.message(
      'Home',
      name: 'homeButton',
      desc: '',
      args: [],
    );
  }

  String get aboutBlurb {
    return Intl.message(
      'A minimal meditation app. \nThere\'s no paid courses and no subscriptions.\nIt\'s just you, the mind, and the breath.',
      name: 'aboutBlurb',
      desc: '',
      args: [],
    );
  }

  String get attributonButton {
    return Intl.message(
      'Attributions',
      name: 'attributonButton',
      desc: '',
      args: [],
    );
  }

  String get contactButton {
    return Intl.message(
      'Contact',
      name: 'contactButton',
      desc: '',
      args: [],
    );
  }

  String get websiteButton {
    return Intl.message(
      'Website',
      name: 'websiteButton',
      desc: '',
      args: [],
    );
  }

  String get aristotleQuote {
    return Intl.message(
      'Whosoever is delighted in solitude is either a wild beast or a god.',
      name: 'aristotleQuote',
      desc: '',
      args: [],
    );
  }

  String get yogandaQuote {
    return Intl.message(
      'Seclusion is the price of greatness.',
      name: 'yogandaQuote',
      desc: '',
      args: [],
    );
  }

  String get millerQuote {
    return Intl.message(
      'People who take the time to be alone usually have depth, originality, and quiet reserve.',
      name: 'millerQuote',
      desc: '',
      args: [],
    );
  }

  String get papiniQuote {
    return Intl.message(
      'Breathing is the greatest pleasure in life',
      name: 'papiniQuote',
      desc: '',
      args: [],
    );
  }

  String get oprahQuote {
    return Intl.message(
      'Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.',
      name: 'oprahQuote',
      desc: '',
      args: [],
    );
  }

  String get hanhQuote {
    return Intl.message(
      'Breathe in deeply to bring your mind home to your body.',
      name: 'hanhQuote',
      desc: '',
      args: [],
    );
  }

  String get guytonQuote {
    return Intl.message(
      'All chronic pain, suffering, and diseases are caused by a lack of oxygen at the cell level.',
      name: 'guytonQuote',
      desc: '',
      args: [],
    );
  }

  String get maguireQuote {
    return Intl.message(
      'Remember to breathe. It is after all, the secret of life.',
      name: 'maguireQuote',
      desc: '',
      args: [],
    );
  }

  String get parillaQuote {
    return Intl.message(
      'You are where you need to be. Just take a deep breath.',
      name: 'parillaQuote',
      desc: '',
      args: [],
    );
  }

  String get anonQuote {
    return Intl.message(
      'A healthy miind has an easy breath.',
      name: 'anonQuote',
      desc: '',
      args: [],
    );
  }

  String get proverbQuote {
    return Intl.message(
      'The nose is for breathing, the mouth is for eating.',
      name: 'proverbQuote',
      desc: '',
      args: [],
    );
  }

  String get browningQuote {
    return Intl.message(
      'He lives most life whoever breathes most air.',
      name: 'browningQuote',
      desc: '',
      args: [],
    );
  }

  String get matthiessenQuote {
    return Intl.message(
      'In this very breath that we now take lies the secret that all great teachers try to tell us.',
      name: 'matthiessenQuote',
      desc: '',
      args: [],
    );
  }

  String get plathQuote {
    return Intl.message(
      'I took a deep breath and listened to the old bray of my heart: I am, I am, I am.',
      name: 'plathQuote',
      desc: '',
      args: [],
    );
  }

  String presetDuration(Object minute) {
    return Intl.message(
      '$minute minutes',
      name: 'presetDuration',
      desc: '',
      args: [minute],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr', countryCode: 'CA'),
      Locale.fromSubtags(languageCode: 'fr', countryCode: 'FR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (Locale supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}