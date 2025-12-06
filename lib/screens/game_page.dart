// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/game_bar.dart';
import 'package:candy_puzzle/widgets/puzzle_board_widget.dart';

import 'package:flutter_svg/svg.dart';

class GamePage extends ConsumerStatefulWidget {
  final int level;
  const GamePage({super.key, required this.level});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GamePageState();
}

class _GamePageState extends ConsumerState<GamePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fill();
    });
    super.initState();
  }

  Future fill() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            final notifier = ref.read(puzzleDataValuesProvider.notifier);
            notifier.setLevel(widget.level);
            notifier.setMaxWidth(constraints.maxWidth);
          });

          return Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Image.asset(Assets.images.bg4.keyName, fit: BoxFit.fitWidth),
              Positioned.fill(
                bottom: 16,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 190,
                    width: 230,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        SvgPicture.asset(Assets.svgs.board),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 20),
                          child: Image.asset(
                            Assets
                                .puzzles
                                .tips
                                .values[widget.level - 1]
                                .keyName,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(child: PuzzleBoardWidget()),
              GameBar(),
            ],
          );
        },
      ),
    );
  }
}
