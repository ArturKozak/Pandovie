class AppIcons {
  const AppIcons._();

  static const _base = 'assets/icons/';

  static String _fullIconPath(String name) => '$_base$name.svg';

  static final popcorn = _fullIconPath('popcorn');
  static final chevronRight = _fullIconPath('chevron-right');
  static final search = _fullIconPath('search');
  static final menu = _fullIconPath('settings');
  static final collection = _fullIconPath('collection');
}
