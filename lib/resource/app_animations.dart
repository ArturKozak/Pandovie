class AppAnimations {
  const AppAnimations._();

  static const _base = 'assets/animations/';

  static String _fullAnimationPath(String name) => '$_base$name.json';

  static final searching = _fullAnimationPath('searching');

  static final home = _fullAnimationPath('home');
}
