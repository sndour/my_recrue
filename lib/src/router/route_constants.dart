enum AppPage { home, splash, empty, authentication, onboarding, register, accueil }

extension AppPageExtension on AppPage {
  String get routePath {
    return switch (this) {
      AppPage.home => '/',
      AppPage.splash => '/splash',
      AppPage.empty => '/empty',
      AppPage.authentication => '/authentication',
      AppPage.onboarding => '/onboarding',
      AppPage.register => '/register',
      AppPage.accueil => '/accueil',
    };
  }

  String get routeName {
    return switch (this) {
      AppPage.home => 'HOME',
      AppPage.splash => 'SPLASH',
      AppPage.empty => 'EMPTY',
      AppPage.authentication => 'AUTHENTICATION',
      AppPage.onboarding => 'ONBOARDING',
      AppPage.register => 'REGISTER',
      AppPage.accueil => 'ACCUEIL',
    };
  }
}
