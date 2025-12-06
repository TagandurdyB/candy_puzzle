import 'package:candy_puzzle/notifiers/levels_provider.dart';
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Injector extends StatelessWidget {
  final Widget child;
  const Injector(this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    ProviderContainer container = ProviderContainer();
    container.read(levelDataProvider.future);
    return /* DevicePreview(
      enabled: true,
      builder: (context) => */ UncontrolledProviderScope(
      container: container,
      child: child,
      /* ), */
    );
  }
}
