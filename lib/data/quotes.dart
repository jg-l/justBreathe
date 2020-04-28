/// Quote is a structure that holds two strings, the quote and the author of that quoute
class Quote {
  String body;
  String author;

  Quote({this.body, this.author});
}

/// These are the default quotes displayed in [CompletionScreen]
final List<Quote> kDefaultQuotes = [
  Quote(
    author: 'Aristotle',
    body: 'Whosoever is delighted in solitude is either a wild beast or a god.',
  ),
  Quote(
    author: 'Paramahansa Yogananda',
    body: 'Seclusion is the price of greatness.” ~ Paramahansa Yogananda',
  ),
  Quote(
    author: 'John Miller',
    body:
        'People who take the time to be alone usually have depth, originality, and quiet reserve.',
  ),
  Quote(
    author: 'Giovanni Papini',
    body: 'Breathing is the greatest pleasure in life',
  ),
  Quote(
    author: 'Oprah Winfrey',
    body:
        'Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.',
  ),
  Quote(
    author: 'Thich Nhat Hanh',
    body: 'Breathe in deeply to bring your mind home to your body.',
  ),
  Quote(
    author: 'Dr. Arthur C. Guyton',
    body:
        'All chronic pain, suffering, and diseases are caused by a lack of oxygen at the cell level.',
  ),
  Quote(
    body: 'Remember to breathe. It is after all, the secret of life.',
    author: 'Gregory Maguire',
  ),
  Quote(
    author: 'Lana Parrilla',
    body: 'You are where you need to be. Just take a deep breath.',
  ),
  Quote(
    author: 'Unknown',
    body: 'A healthy mind has an easy breath.',
  ),
  Quote(
    author: 'Proverb',
    body: 'The nose is for breathing, the mouth is for eating.',
  ),
  Quote(
    author: 'Elizabeth Barrett Browning',
    body: 'He lives most life whoever breathes most air.',
  ),
  Quote(
    author: 'Peter Matthiessen',
    body:
        'In this very breath that we now take lies the secret that all great teachers try to tell us.',
  ),
  Quote(
    author: 'Sylvia Plath',
    body:
        'I took a deep breath and listened to the old bray of my heart: I am, I am, I am.',
  ),
];
