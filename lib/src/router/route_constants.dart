enum AppPage {
  home,
  splash,
  empty,
  authentication_screen,
  authentication_screen_two,
  authentication_screen_three,
  authentication_screen_four,
  onboarding,
  register,
  register_step_two,
  register_step_three,
  register_step_four,
  bottom_navigation,
  create_account,
  accueil,
  contact_list,
}

extension AppPageExtension on AppPage {
  String get routePath {
    return switch (this) {
      AppPage.home => '/',
      AppPage.splash => '/splash',
      AppPage.empty => '/empty',
      AppPage.authentication_screen => '/authentication_screen',
      AppPage.onboarding => '/onboarding',
      AppPage.register => '/register',
      AppPage.accueil => '/accueil',
      AppPage.register_step_two => '/register_step_two',
      AppPage.register_step_three => '/register_step_three',
      AppPage.register_step_four => '/register_step_four',
      AppPage.authentication_screen_two => '/authentication_screen_two',
      AppPage.authentication_screen_three => '/authentication_screen_three',
      AppPage.authentication_screen_four => '/authentication_screen_four',
      AppPage.contact_list => '/contact_list',
      AppPage.bottom_navigation => '/bottom_navigation',
      AppPage.create_account => '/create_account',
    };
  }

  String get routeName {
    return switch (this) {
      AppPage.home => 'HOME',
      AppPage.splash => 'SPLASH',
      AppPage.empty => 'EMPTY',
      AppPage.authentication_screen => 'AUTHENTICATION_SCREEN',
      AppPage.onboarding => 'ONBOARDING',
      AppPage.register => 'REGISTER',
      AppPage.accueil => 'ACCUEIL',
      AppPage.register_step_two => 'REGISTER_STEP_TWO',
      AppPage.register_step_three => 'REGISTER_STEP_THREE',
      AppPage.register_step_four => 'REGISTER_STEP_FOUR',
      AppPage.authentication_screen_two => 'AUTHENTICATION_SCREEN_TWO',
      AppPage.authentication_screen_four => 'AUTHENTICATION_SCREEN_FOUR',
      AppPage.authentication_screen_three => 'AUTHENTICATION_SCREEN_THREE',
      AppPage.contact_list => 'CONTACT_LIST',
      AppPage.bottom_navigation => 'BOTTOM_NAVIGATION',
      AppPage.create_account => 'CREATE_ACCOUNT',
    };
  }
}
