class AppRegex {
  static final RegExp email =
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  static final RegExp password = RegExp(r'.{6,}');
}
