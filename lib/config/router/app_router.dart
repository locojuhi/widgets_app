import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentations/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentations/screens/home/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen()
    ),
    GoRoute(
        path: '/buttons',
        builder: (context, state) => const ButtonsScreen()
    ),
    GoRoute(
        path: '/cards',
        builder: (context, state) => const CardsScreen()
    ),
  ]
);