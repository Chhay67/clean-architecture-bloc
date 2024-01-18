


import 'package:clean_architecture_bloc/core/route/router/path.dart';
import 'package:clean_architecture_bloc/src/on_boarding/presentation/page/on_boarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../default_page/default_page.dart';
import 'navigator_observer.dart';

class AppRouter {

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppPaths.ON_BOARDING_PAGE,
    observers: [AppNavigatorObserver()],
    redirect: (context,state){

    },
    routes: [
      GoRoute(
        path: AppPaths.ON_BOARDING_PAGE,
        name: PathsName.ON_BOARDING_PAGE,
        builder: (context, state) => const OnBoardingPage(),
      ),
      // GoRoute(
      //   path: PAGES.login.screenPath,
      //   name: PAGES.login.screenName,
      //   builder: (context, state) =>
      //       BlocProvider(
      //         create: (context) => injector<AuthBloc>(),
      //         child: const LoginScreen(),
      //       ),
      // ),
    ],
    errorBuilder: (context, state) => const NotFoundNavigationPage(),
  );

  static GoRouter get router => _router;

}


// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
//
//
// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey(debugLabel: 'root');
// final GlobalKey<NavigatorState> _sectionNavigatorKey =
//     GlobalKey(debugLabel: 'navbar');
//
// final appRouterProvider = Provider<GoRouter>((ref) {
//   final appService = ref.watch(appServiceProvider);
//   return GoRouter(
//     navigatorKey: _rootNavigatorKey,
//     observers: [AppNavigatorObserver()],
//     refreshListenable: appService,
//     initialLocation: AppPaths.HOME_PAGE,
//     debugLogDiagnostics: true,
//     redirect: (context, state) async {
//       final loginLocation = state.namedLocation(PathsName.LOGIN_PAGE);
//       final homeLocation = state.namedLocation(PathsName.HOME_PAGE);
//       final splashLocation = state.namedLocation(PathsName.SPLASH_PAGE);
//
//       final isLoggedIn = appService.loginState;
//       final isInitialized = appService.initialized;
//
//       final isGoingToLogin = state.matchedLocation == loginLocation;
//       final isGoingToInit = state.matchedLocation == splashLocation;
//
//       /// If not Initialized and not going to Initialized redirect to Splash
//       if (!isInitialized && !isGoingToInit) {
//         return splashLocation;
//         /// If not loggedIn and not going to login redirect to Login
//       }else if (isInitialized && !isLoggedIn && !isGoingToLogin) {
//         return loginLocation;
//         /// If all the scenarios are cleared but still going to any of that screen redirect to Home
//       }else if ((isLoggedIn && isGoingToLogin) || (isInitialized && isGoingToInit)) {
//         return homeLocation;
//       }else {
//         /// Else Don't do anything
//         return null;
//       }
//     },
//     routes: [
//       GoRoute(
//         path: AppPaths.HOME_PAGE,
//         name: PathsName.HOME_PAGE,
//         pageBuilder: (context, state) {
//           return const MaterialPage(
//             child: HomePage(),
//           );
//         },
//       ),
//       GoRoute(
//         path: AppPaths.SPLASH_PAGE,
//         name: PathsName.SPLASH_PAGE,
//         pageBuilder: (context, state) {
//           return const MaterialPage(
//             child: SplashPage(),
//           );
//         },
//       ),
//       GoRoute(
//         path: AppPaths.LOGIN_PAGE,
//         name: PathsName.LOGIN_PAGE,
//         pageBuilder: (context, state) {
//           return const MaterialPage(
//             child: LoginPage(),
//           );
//         },
//       ),
//       StatefulShellRoute.indexedStack(
//         builder: (context, state, navigationShell) {
//           return const HomePage();
//         },
//         branches: [
//           StatefulShellBranch(
//             navigatorKey: _sectionNavigatorKey,
//             routes: [
//               GoRoute(
//                 path: AppPaths.PROPERTY_PAGE,
//                 name: PathsName.PROPERTY_PAGE,
//                 pageBuilder: (context, state) {
//                   return const MaterialPage(
//                     child: PropertyPage(),
//                   );
//                 },
//               ),
//             ],
//           ),
//           StatefulShellBranch(
//             routes: [
//               GoRoute(
//                 path: AppPaths.CLIENT_PAGE,
//                 name: PathsName.CLIENT_PAGE,
//                 pageBuilder: (context, state) {
//                   return const MaterialPage(
//                     child: MyClientsPage(),
//                   );
//                 },
//               ),
//             ],
//           ),
//           StatefulShellBranch(
//             routes: [
//               GoRoute(
//                 path: AppPaths.SETTING_PAGE,
//                 name: PathsName.SETTING_PAGE,
//                 pageBuilder: (context, state) {
//                   return const MaterialPage(
//                     child: SettingsPage(),
//                   );
//                 },
//               )
//             ],
//           ),
//         ],
//       ),
//     ],
//     errorBuilder: (context, state) {
//       return const NotFoundNavigationPage();
//     },
//   );
// });



