class AppIcons {
  const AppIcons._();

  static const _base = 'assets/icons/';

  static String _fullIconPath(String name) => '$_base$name.svg';

  static final popcorn = _fullIconPath('popcorn');
  static final chevronRight = _fullIconPath('chevron-right');
  static final search = _fullIconPath('search');
  static final menu = _fullIconPath('settings');
  static final collection = _fullIconPath('collection');
  static final dollar = _fullIconPath('dollar');
  static final time = _fullIconPath('time');
  static final avarage = _fullIconPath('avarage');
  static final genred = _fullIconPath('genred');
  static final popular = _fullIconPath('popular');
  static final release = _fullIconPath('release');
}
