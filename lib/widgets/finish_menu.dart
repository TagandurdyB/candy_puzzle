// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:candy_puzzle/widgets/ribbon_header.dart';
import 'package:flutter_svg/svg.dart';

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/services/exports.dart';

class FinishMenu extends ConsumerStatefulWidget {
  final bool isWin;
  const FinishMenu({super.key, required this.isWin});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FinishMenuState();
}

class _FinishMenuState extends ConsumerState<FinishMenu> {
  @override
  void initState() {
    if (widget.isWin) {
      final newLevel = Boxes().openedLvl + 1;
      Boxes().putOpenedLvl(newLevel);
    }
    super.initState();
  }

  late final level = ref.read(puzzleDataValuesProvider).level;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: AspectRatio(
          aspectRatio: 390 / 618,
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(Assets.svgs.pauseBoard),

              Padding(
                padding: const EdgeInsets.only(bottom: 280),
                child: RibbonHeader(
                  text: widget.isWin ? "You win!" : "Opps...Lose",
                  textSize: 32,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 60),
                    if (widget.isWin)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 50,
                              child: SvgPicture.asset(Assets.svgs.star),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                              child: SvgPicture.asset(Assets.svgs.star),
                            ),
                            SizedBox(
                              width: 50,
                              child: SvgPicture.asset(Assets.svgs.star),
                            ),
                          ],
                        ),
                      ),
                    if (widget.isWin)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: buildTime(
                          'Your time',
                          ref.read(puzzleDurationProvider),
                        ),
                      ),
                    if (Boxes().bestTime(level) != null)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: buildTime('Best time', Boxes().bestTime(level)!),
                      ),
                    if (!widget.isWin)
                      context.t.semiboldText(
                        'Maybe try again?',
                        size: 24,
                        strokeWidth: 1,
                        maxLines: 2,
                        align: TextAlign.center,
                      ),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: () => Go.popUntil((route) => route.isFirst),
                          child: SvgPicture.asset(Assets.svgs.home),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: widget.isWin
                            ? GestureDetector(
                                onTap: () {
                                  Go.pop();
                                  Go.toReplace(
                                    Go.game,
                                    argument: {'level': Boxes().openedLvl},
                                  );
                                },
                                child: SvgPicture.asset(
                                  Assets.svgs.continueEnable,
                                ),
                              )
                            : Image.asset(
                                Assets.svgs.continueDisablePng.keyName,
                                width: 95,
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: () => Go.pop(args: [true]),
                          child: SvgPicture.asset(Assets.svgs.refresh),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTime(String text, Duration duration) {
    return Row(
      children: [
        Expanded(child: context.t.mediumText("$text:", size: 22)),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5, top: 2),
              width: 100,
              height: 25,
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
            Positioned(
              left: 0,
              child: SizedBox(
                width: 25,
                height: 25,
                child: SvgPicture.asset(Assets.svgs.clock),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: context.t.mediumText(duration.clockFormat(), size: 18),
            ),
          ],
        ),
      ],
    );
  }
}
