

const String cartPath = '/cart';
const String checkoutPath = '/checkout';
const String homePath = '/home';
const String profilePath = '/profile';
const String loginPath = '/login';

enum Pages {
  cart,
  checkout,
  home,
  profile,
  login,
}

class CustomPagesConfig {
  final String key;
  final String path;
  final Pages page;

  CustomPagesConfig({required this.key, required this.path, required this.page});
}

CustomPagesConfig cartConfig =
    CustomPagesConfig(key: 'Cart', path: cartPath, page: Pages.cart);
CustomPagesConfig checkOutConfig =
    CustomPagesConfig(key: 'Checkout', path: checkoutPath, page: Pages.checkout);
CustomPagesConfig homeConfig =
    CustomPagesConfig(key: 'Home', path: homePath, page: Pages.home);
CustomPagesConfig profileConfig =
    CustomPagesConfig(key: 'Profile', path: profilePath, page: Pages.profile);
CustomPagesConfig loginConfig =
    CustomPagesConfig(key: 'Login', path: loginPath, page: Pages.login);
