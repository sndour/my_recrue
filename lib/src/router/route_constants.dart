import 'package:my_recrue/src/feature/home/widgets/arrow_widget.dart';

enum AppPage { home, splash, empty, authentication, onboarding, register, register_step_two, register_step_three, register_step_four, accueil }

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
      AppPage.register_step_two => '/register_step_two',
      AppPage.register_step_three => '/register_step_three',
      AppPage.register_step_four => '/register_step_four',
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
      AppPage.register_step_two => 'REGISTER_STEP_TWO',
      AppPage.register_step_three => 'REGISTER_STEP_THREE',
      AppPage.register_step_four => 'REGISTER_STEP_FOUR',
    };
  }
}
