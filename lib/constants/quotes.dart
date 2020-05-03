import 'package:flutter/material.dart';
import 'package:just_breathe/data/quote.dart';
import 'package:just_breathe/generated/l10n.dart';

/// These are the default quotes displayed in [CompletionScreen]
List<Quote> kDefaultQuotes(BuildContext context) {
  return [
    Quote(
      author: 'Aristotle',
      body: S.of(context).aristotleQuote,
    ),
    Quote(
      author: 'Paramahansa Yogananda',
      body: S.of(context).yogandaQuote,
    ),
    Quote(
      author: 'John Miller',
      body: S.of(context).millerQuote,
    ),
    Quote(
      author: 'Giovanni Papini',
      body: S.of(context).papiniQuote,
    ),
    Quote(
      author: 'Oprah Winfrey',
      body: S.of(context).oprahQuote,
    ),
    Quote(
      author: 'Thich Nhat Hanh',
      body: S.of(context).hanhQuote,
    ),
    Quote(
      author: 'Dr. Arthur C. Guyton',
      body: S.of(context).guytonQuote,
    ),
    Quote(
      author: 'Gregory Maguire',
      body: S.of(context).maguireQuote,
    ),
    Quote(
      author: 'Lana Parrilla',
      body: S.of(context).parillaQuote,
    ),
    Quote(
      author: 'Unknown',
      body: S.of(context).anonQuote,
    ),
    Quote(
      author: 'Proverb',
      body: S.of(context).proverbQuote,
    ),
    Quote(
      author: 'Elizabeth Barrett Browning',
      body: S.of(context).browningQuote,
    ),
    Quote(
      author: 'Peter Matthiessen',
      body: S.of(context).matthiessenQuote,
    ),
    Quote(
      author: 'Sylvia Plath',
      body: S.of(context).plathQuote,
    ),
  ];
}
