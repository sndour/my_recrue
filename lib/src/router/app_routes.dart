import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/authentication/authentication_screen.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/authentication/authentication_screen_four.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/authentication/authentication_screen_three.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/authentication/authentication_screen_two.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/registration/register_screen.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/registration/register_screen_step_four.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/registration/register_screen_step_two.dart';
import 'package:my_recrue/src/feature/authentication/presentation/pages/registration/register_screen_step_three.dart';
import 'package:my_recrue/src/feature/home/contact_list_screen.dart';
import 'package:my_recrue/src/feature/home/create_contact_screen.dart';
import 'package:my_recrue/src/feature/home/home_screen.dart';
import 'package:my_recrue/src/feature/onboarding/widgets/onboarding_layout.dart';
import 'package:my_recrue/src/feature/onboarding/widgets/onboarding_wrap_content_widget.dart';
import 'package:my_recrue/src/router/scaffold_with_nested_navigation.dart';
import 'package:my_recrue/src/splash_screen.dart';

import 'package:my_recrue/src/router/route_constants.dart';
import 'package:my_recrue/src/feature/counter/presentation/counter_screen.dart';
import 'package:my_recrue/src/feature/counter/presentation/empty_screen.dart';

import 'package:my_recrue/src/feature/home/bottom_navigation.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _emptyNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'empties');

List<RouteBase> appRoutes = [
  GoRoute(
    path: AppPage.splash.routePath,
    name: AppPage.splash.routeName,
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: AppPage.onboarding.routePath,
    name: AppPage.onboarding.routeName,
    builder: (context, state) => OnboardingLayout(child: OnboardingWrapContentWidget()),
  ),
  GoRoute(
    path: AppPage.authentication_screen.routePath,
    name: AppPage.authentication_screen.routeName,
    builder: (context, state) => const AuthenticationScreen(),
  ),
  GoRoute(
    path: AppPage.authentication_screen_two.routePath,
    name: AppPage.authentication_screen_two.routeName,
    builder: (context, state) => const AuthenticationScreenTwo(),
  ),
  GoRoute(
    path: AppPage.authentication_screen_three.routePath,
    name: AppPage.authentication_screen_three.routeName,
    builder: (context, state) => const AuthenticationScreenThree(),
  ),
  GoRoute(
    path: AppPage.authentication_screen_four.routePath,
    name: AppPage.authentication_screen_four.routeName,
    builder: (context, state) => const AuthenticationScreenFour(),
  ),
  GoRoute(
    path: AppPage.register.routePath,
    name: AppPage.register.routeName,
    builder: (context, state) => const RegisterScreen(),
  ),
  GoRoute(
    path: AppPage.accueil.routePath,
    name: AppPage.accueil.routeName,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: AppPage.register_step_two.routePath,
    name: AppPage.register_step_two.routeName,
    builder: (context, state) => const RegisterScreenStepTwo(),
  ),
  GoRoute(
    path: AppPage.register_step_three.routePath,
    name: AppPage.register_step_three.routeName,
    builder: (context, state) => const RegisterScreenStepThree(),
  ),
  GoRoute(
    path: AppPage.register_step_four.routePath,
    name: AppPage.register_step_four.routeName,
    builder: (context, state) => const RegisterScreenStepFour(),
  ),
  GoRoute(
    path: AppPage.contact_list.routePath,
    name: AppPage.contact_list.routeName,
    builder: (context, state) => const ContactListScreen(),
  ),
  GoRoute(
    path: AppPage.bottom_navigation.routePath,
    name: AppPage.bottom_navigation.routeName,
    builder: (context, state) => const BottomNavigation(),
  ),
  GoRoute(
    path: AppPage.create_account.routePath,
    name: AppPage.create_account.routeName,
    builder: (context, state) => const CreateContactScreen(),
  ),
  StatefulShellRoute.indexedStack(
    pageBuilder:
        (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) => NoTransitionPage(
          child: ScaffoldWithNestedNavigation(navigationShell: navigationShell),
        ),
    branches: [
      StatefulShellBranch(
        navigatorKey: _homeNavigatorKey,
        routes: [
          GoRoute(
            path: AppPage.home.routePath,
            name: AppPage.home.routeName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: CounterScreen()),
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: _emptyNavigatorKey,
        routes: [
          GoRoute(
            path: AppPage.empty.routePath,
            name: AppPage.empty.routeName,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: EmptyScreen()),
          ),
        ],
      ),
    ],
  ),
];
