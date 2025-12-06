import 'package:candy_puzzle/screens/game_page.dart';
import 'package:candy_puzzle/screens/level_page.dart';
import 'package:candy_puzzle/screens/loading_page.dart';
import 'package:candy_puzzle/screens/main_menu_page.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:flutter/cupertino.dart';

import 'simple_router.dart';

class AppRoute {
  static final GlobalKey<NavigatorState> mainNavKey = GlobalKey();
  static final context = mainNavKey.currentContext!;
  //====================================
  static Route _pageRout(
    Widget page, {
    required String name,
    bool animated = true,
  }) {
    return DeviceService().platform.isIOS
        ? CupertinoPageRoute(
            builder: (_) => page,
            title: 'Candy Puzzle',
            settings: RouteSettings(name: name),
            fullscreenDialog: false,
          )
        : SimpleRoute(
            name: name,
            title: 'Candy Puzzle',
            builder: (_) => page,
            animated: animated,
          );
  }
  //====================================

  static Route onGenerateRoute(RouteSettings routeSettings) {
    String name = routeSettings.name ?? '/';
    Map? args = routeSettings.arguments as Map?;
    try {
      switch (name) {
        case Go.loading:
          return _pageRout(name: name, const LoadingPage());
        case Go.mainMenu:
          return _pageRout(name: name, const MainManuPage());
        case Go.level:
          return _pageRout(name: name, const LevelPage());
        case Go.game:
          return _pageRout(name: name, GamePage(level: args!['level']));
        default:
          return _pageRout(name: name, LoadingPage());
      }
    } catch (e) {
      print('++++Route Error:=$e');
      return _pageRout(name: name, const LoadingPage());
    }
  }
}
