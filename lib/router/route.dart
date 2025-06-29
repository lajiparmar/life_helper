// import 'dart:developer';
//
// import 'package:go_router/go_router.dart';
//
// import '../app_import.dart';
//
//
// class RouteConstant {
//   static const String initial = '/';
//   static const String startChatPage = '/startChatPage';
//   static const String chatScreenPage = '/chatScreenPage';
//   static const String aiAssistance = '/aiAssistancePage';
//   static const String historyPage = '/historyPage';
//   static const String historySearchPage = '/historySearchPage';
// }
//
// class GoRouterObserver extends NavigatorObserver {
//   @override
//   void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     log('MyTest didPush: $route');
//   }
//
//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     log('MyTest didPop: $route');
//   }
//
//   @override
//   void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     log('MyTest didRemove: $route');
//   }
//
//   @override
//   void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
//     log('MyTest didReplace: $newRoute');
//   }
// }
//
// mixin AppRouter {
//   static final GoRouter router = GoRouter(
//     initialLocation: RouteConstant.initial,
//     observers: [GoRouterObserver()],
//     routes: [
//       GoRoute(
//         path: RouteConstant.initial,
//         builder: (BuildContext context, GoRouterState state) =>
//             const SplashScreen(),
//       ),
//       StatefulShellRoute.indexedStack(
//         builder: (BuildContext context, GoRouterState state,
//             StatefulNavigationShell navigationShell) {
//           return DashBoardScreen(navigationShell: navigationShell);
//         },
//         branches: <StatefulShellBranch>[
//           StatefulShellBranch(
//             routes: <RouteBase>[
//               GoRoute(
//                 path: RouteConstant.startChatPage,
//                 builder: (
//                   BuildContext context,
//                   GoRouterState state,
//                 ) {
//                   return const StartChatScreen();
//                 },
//               ),
//             ],
//           ),
//
//           //     ]),
//           StatefulShellBranch(routes: [
//             GoRoute(
//               path: RouteConstant.aiAssistance,
//               builder: (
//                 context,
//                 state,
//               ) {
//                 return const AiAssistanceScreen();
//               },
//             )
//           ]),
//           StatefulShellBranch(routes: [
//             GoRoute(
//               path: RouteConstant.historyPage,
//               builder: (
//                 context,
//                 state,
//               ) {
//                 return const HistoryPage();
//               },
//             )
//           ]),
//           //     StatefulShellBranch(routes: [
//           //       GoRoute(
//           //         path: RouteConstant.focusModePage,
//           //         builder: (
//           //           context,
//           //           state,
//           //         ) {
//           //           return FocusScreen();
//           //         },
//           //       )
//           //     ]),
//           //     StatefulShellBranch(routes: [
//           //       GoRoute(
//           //         path: RouteConstant.profilePage,
//           //         builder: (
//           //           context,
//           //           state,
//           //         ) {
//           //           return ProfileScreen();
//           //         },
//           //       )
//           //     ]),
//           //   ],
//           // ),
//         ],
//       ),
//       GoRoute(
//         path: RouteConstant.chatScreenPage,
//         builder: (
//           BuildContext context,
//           GoRouterState state,
//         ) {
//           return const ChatPage();
//         },
//       ),
//       GoRoute(
//         path: RouteConstant.historySearchPage,
//         builder: (
//           BuildContext context,
//           GoRouterState state,
//         ) {
//           return const SearchScreen();
//         },
//       ),
//     ],
//   );
// }
