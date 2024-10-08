import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/screens/animated/animated_screen.dart';
import 'package:widgets_app/presentations/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widgets_app/presentations/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentations/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentations/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentations/screens/home/home_screen.dart';
import 'package:widgets_app/presentations/screens/infinite_scroll/infinite_scroll_screen.dart';
import 'package:widgets_app/presentations/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentations/screens/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentations/screens/theme_changer/theme_changer.dart';
import 'package:widgets_app/presentations/screens/ui_controls/ui_controls_screen.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/buttons',
      name: ButtonsScreen.routeName,
      builder: (context, state) => const ButtonsScreen()),
  GoRoute(
      path: '/cards',
      name: CardsScreen.routeName,
      builder: (context, state) => const CardsScreen()),
  GoRoute(
      path: '/progress',
      name: ProgressScreen.routeName,
      builder: (context, state) => const ProgressScreen()),
  GoRoute(
      path: '/snackbars',
      name: SnackbarScreen.routeName,
      builder: (context, state) => const SnackbarScreen()),
  GoRoute(
      path: '/animated',
      name: AnimatedScreen.routeName,
      builder: (context, state) => const AnimatedScreen()),
  GoRoute(
      path: '/ui-controls',
      name: UiControlsScreen.routeName,
      builder: (context, state) => const UiControlsScreen()),
  GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.routeName,
      builder: (context, state) => const AppTutorialScreen()),
  GoRoute(
      path: '/infinite',
      name: InfiniteScrollScreen.routeName,
      builder: (context, state) => const InfiniteScrollScreen()),
  GoRoute(
      path: '/counter_screen',
      name: CounterScreen.routeName,
      builder: (context, state) => const CounterScreen()),
  GoRoute(
      path: '/theme_changer',
      name: ThemeChanger.routeName,
      builder: (context, state) => const ThemeChanger()),
]);
