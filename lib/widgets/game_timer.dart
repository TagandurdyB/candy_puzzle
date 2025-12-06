// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/finish_menu.dart';

class GameTimer extends ConsumerStatefulWidget {
  final Duration duration;
  const GameTimer({super.key, required this.duration});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => GameTimerState();
}

class GameTimerState extends ConsumerState<GameTimer> {
  Timer? timer;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(puzzleDurationProvider.notifier).setDuration(widget.duration);
      startTimer();
    });

    super.initState();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (!mounted) return;
      ref.read(puzzleDurationProvider.notifier).decrimentDuration();
      if (ref.read(puzzleDurationProvider) <= Duration.zero) {
        timer.cancel();
        finish();
      }
    });
  }

  void reset() {
    try {
      timer!.cancel();
    } catch (_) {}

    ref.read(puzzleDurationProvider.notifier).setDuration(widget.duration);
    startTimer();
  }

  void pause() {
    if (timer?.isActive ?? false) {
      timer!.cancel();
    }
  }

  void finish() {
    PopUpService()
        .show(FinishMenu(isWin: false), barrierDismissible: false)
        .then((val) {});
  }

  @override
  void dispose() {
    if (timer?.isActive ?? false) {
      timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5, top: 2),
          width: 120,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: [
                context.colors.darkBrown,
                context.colors.brown,
                context.colors.lightBrown,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.05, 0.9, 1],
            ),
          ),
        ),
        Positioned(left: 0, child: SvgPicture.asset(Assets.svgs.clock)),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: context.t.mediumText(
            ref.watch(puzzleDurationProvider).clockFormat(),
            size: 23,
          ),
        ),
      ],
    );
  }
}
