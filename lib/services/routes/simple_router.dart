

import 'package:flutter/material.dart';

class SimpleRoute extends PageRoute {
  SimpleRoute({
    required String name,
    required this.title,
    required this.builder,
    required this.animated,
  }) : super(settings: RouteSettings(name: name));

  final String title;
  final WidgetBuilder builder;

  final bool animated;

  @override
  Color get barrierColor => Colors.transparent;

  @override
  String get barrierLabel => '';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return animated
        ? FadeTransition(
            opacity: animation,
            child: Title(
              title: title,
              color: Theme.of(context).primaryColor,
              child: builder(context),
            ),
          )
        : Title(
            title: title,
            color: Theme.of(context).primaryColor,
            child: builder(context),
          );
  }
}
