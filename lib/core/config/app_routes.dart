import 'package:go_router/go_router.dart';
import 'package:quizzy/core/config/route_name.dart';
import 'package:quizzy/presentation/home/home_ui.dart';
import 'package:quizzy/presentation/splash/splash_ui.dart';
import 'package:quizzy/presentation/start/start_ui.dart';

final GoRouter appRoutes = GoRouter(routes: [
  GoRoute(
    path: RouteName.splash,
    builder: (context, state) => const SplashUi(),
  ),
  GoRoute(
    path: RouteName.home,
    builder: (context, state) => const HomeUi(),
  ),
  GoRoute(
    path: RouteName.start,
    builder: (context, state) => const StartUi(),
  )
]);
