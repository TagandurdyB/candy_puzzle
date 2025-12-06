import 'package:candy_puzzle/gen/assets.gen.dart';
import 'package:candy_puzzle/notifiers/puzzle_provider.dart';
import 'package:candy_puzzle/services/exports.dart';

class PuzzleBoardWidget extends ConsumerStatefulWidget {
  const PuzzleBoardWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PuzzleBoardWidgetState();
}

class _PuzzleBoardWidgetState extends ConsumerState<PuzzleBoardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: context.colors.white),
            borderRadius: BorderRadius.circular(20),
            color: context.colors.bg2,
          ),
          margin: EdgeInsets.all(14),
          // padding: EdgeInsets.all(8),
          child: ref
              .watch(puzzleControllerProvider)
              .when(
                error: (e, s) => Text('Error'),
                loading: () => CircularProgressIndicator(),
                data: (puzzle) {
                  if (puzzle == null || puzzle.pieces.isEmpty) {
                    return SizedBox();
                  }
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      ...puzzle.pieces.map(
                        (e) => Positioned(
                          top: e.correctY,
                          left: e.correctX,
                          child: Offstage(
                            offstage: !e.isPlaced,
                            child: SizedBox(
                              width: e.width,
                              child: Image.asset(e.img),
                            ),
                          ),
                        ),
                      ),
                      for (final e in puzzle.pieces)
                        if (!e.isPlaced)
                          Positioned(
                            top: e.y,
                            left: e.x,
                            child: Draggable(
                              data: e.id,
                              onDragEnd: (details) {
                                // Get the Stack RenderBox
                                final box =
                                    context.findRenderObject() as RenderBox;

                                // Convert global offset (screen) to local offset (inside Stack)
                                final localOffset = box.globalToLocal(
                                  details.offset,
                                );

                                // Call your provider with the correct local offset
                                ref
                                    .read(puzzleControllerProvider.notifier)
                                    .onPieceDropped(e.id, localOffset);
                              },
                              feedback: SizedBox(
                                width: e.width,
                                child: Image.asset(e.img),
                              ),
                              childWhenDragging: const SizedBox.shrink(),
                              child: SizedBox(
                                width: e.width,
                                child: Image.asset(e.img),
                              ),
                            ),
                          ),
                    ],
                  );
                },
              ),
        ),
      ),
    );
  }
}
