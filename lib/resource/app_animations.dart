class AppAnimations {
  const AppAnimations._();

  static const _base = 'assets/animations/';

  static String _fullAnimationPath(String name) => '$_base$name.json';
  static String _fullGifPath(String name) => '$_base$name.gif';

  static final searching = _fullAnimationPath('searching');

  static final home = _fullAnimationPath('home');

  static final slasher = _fullGifPath('slasher');

  static final angry = _fullGifPath('angry');

  static final romantic = _fullGifPath('romantic');

  static final smile = _fullGifPath('smile');

  static final horor = _fullGifPath('horor');

  static final action = _fullGifPath('action');
}
