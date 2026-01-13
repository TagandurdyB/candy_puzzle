// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:candy_puzzle/widgets/ask_menu.dart';
import 'package:candy_puzzle/widgets/finish_menu.dart';
import 'package:candy_puzzle/widgets/pause_menu.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/game_timer.dart';

class GameBar extends ConsumerStatefulWidget {
  const GameBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GameTimerState();
}

class _GameTimerState extends ConsumerState<GameBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ref
          .watch(puzzleControllerProvider)
          .when(
            error: (e, s) => Text('Error'),
            loading: () => CircularProgressIndicator(),
            data: (puzzle) {
              if (puzzle == null || puzzle.pieces.isEmpty) {
                return SizedBox();
              }
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      ref.read(puzzleDurationProvider.notifier).pause();
                      PopUpService().show(AskMenu()).then((val) {
                        if (mounted) {
                          ref
                              .read(puzzleDurationProvider.notifier)
                              .startTimer();
                        }
                      });
                    },
                    child: SvgPicture.asset(Assets.svgs.logOut),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: GameTimer(duration: puzzle.duration),
                  ),
                  GestureDetector(
                    onTap: () {
                      ref.read(puzzleDurationProvider.notifier).pause();

                      PopUpService().show(PauseMenu()).then((val) {
                        // PopUpService().show(FinishMenu(isWin: false)).then((val) {
                        if (mounted) {
                          if (val is List) {
                            ref.read(puzzleDurationProvider.notifier).reset();
                            ref.refresh(puzzleControllerProvider.notifier);
                          } else {
                            ref
                                .read(puzzleDurationProvider.notifier)
                                .startTimer();
                          }
                        }
                      });
                    },
                    child: SvgPicture.asset(Assets.svgs.pause),
                  ),
                ],
              );
            },
          ),
    );
  }
}
