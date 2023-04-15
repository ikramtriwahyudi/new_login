import 'package:go_router/go_router.dart';
import 'package:new_login/src/features/auth/login/presentation/login_screen.dart';
import 'package:new_login/src/features/notification/detail/presentation/detail_screen.dart';
import 'package:new_login/src/features/notification/home/presentation/home_screen.dart';

class Routes {
  static const login = 'login';
  static const detail = 'detail';
  static const home = 'home';
  static const profile = "profileUser";
}

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: true,
  routerNeglect: true,
  routes: [
    GoRoute(
      path: '/',
      name: Routes.login,
      builder: (context, state) => const LoginScreen(),
      routes: [
        GoRoute(
          path: 'home',
          name: Routes.home,
          builder: (context, state) => const HomeScreen(),
          routes: [
            GoRoute(
              path: 'detail',
              name: Routes.detail,
              builder: (context, state) => const DetailScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
