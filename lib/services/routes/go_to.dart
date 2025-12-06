import 'package:flutter/material.dart';

import 'app_routes.dart';

class Go {
  static const loading = '/';
  static const mainMenu = '/main_menu';
  static const level = '/level';
  static const game = '/game';
  //================================================================================================
  static Future to(String routName, {Map? argument}) {
    // current = name;
    // HapticFeedback.mediumImpact();
    return AppRoute.mainNavKey.currentState!.pushNamed(
      routName,
      arguments: argument,
    );
    // .then((value) => true);
  }

  static Future toReplace(String routName, {Map? argument}) {
    return AppRoute.mainNavKey.currentState!
        .pushReplacementNamed(routName, arguments: argument)
        .then((value) => true);
  }

  static Future toRemoveUntil(
    String routName,
    bool Function(Route<dynamic> route) predicate, {
    Map? argument,
  }) {
    return AppRoute.mainNavKey.currentState!
        .pushNamedAndRemoveUntil(routName, predicate, arguments: argument)
        .then((value) => true);
  }

  static bool canPop() {
    final NavigatorState? navigator = Navigator.maybeOf(AppRoute.context);

    return navigator != null && navigator.canPop();
  }

  static void pop({List? args}) {
    if (canPop()) {
      return AppRoute.mainNavKey.currentState!.pop(args);
    }
  }

  static void popUntil(bool Function(Route<dynamic> route) predicate) {
    return AppRoute.mainNavKey.currentState!.popUntil(predicate);
  }

  static Future popAndPush(String routName, {Map? argument}) {
    return AppRoute.mainNavKey.currentState!
        .popAndPushNamed(routName, arguments: argument)
        .then((value) => true);
  }

  static String? routeName(BuildContext context) {
    String? route = "";
    route = ModalRoute.of(context)?.settings.name;
    // AppRoute.mainNavKey.currentState!.popUntil((currentRoute) {
    //   route = currentRoute.settings.name;
    //   return true;
    // });
    return route;
  }
}
