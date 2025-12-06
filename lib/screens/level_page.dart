import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/notifiers/levels_provider.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:flutter_svg/svg.dart';

class LevelPage extends ConsumerWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              ref
                  .watch(levelDataProvider)
                  .when(
                    error: (e, s) => Text('Error'),
                    loading: () => CircularProgressIndicator(),
                    data: (lvls) {
                      final openedLvl = Boxes().openedLvl;
                      return SingleChildScrollView(
                        child: Stack(
                          children: [
                            Image.asset(
                              Assets.images.levelBg.keyName,
                              fit: BoxFit.fitWidth,
                            ),
                            ...lvls.map(
                              (e) => Positioned(
                                left: constraints.maxWidth * (e.x * 0.01),
                                top: constraints.maxHeight * (e.y * 0.01),
                                child: e.level > openedLvl
                                    ? SvgPicture.asset(Assets.svgs.levelLock)
                                    : GestureDetector(
                                        onTap: () {
                                          Go.to(
                                            Go.game,
                                            argument: {'level': e.level},
                                          );
                                        },
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              Assets.svgs.levelOpenBg,
                                            ),
                                            context.t.mediumText(
                                              '${e.level}',
                                              size: 40,
                                              strokeWidth: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
              Positioned(
                top: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () => Go.pop(),
                  child: SvgPicture.asset(Assets.svgs.back),
                ),
              ),
              Positioned(
                top: 16,
                child: context.t.mediumText(
                  'Level map',
                  size: 30,
                  strokeWidth: 2,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
