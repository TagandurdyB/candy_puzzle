// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:candy_puzzle/models/puzzle_data.dart';
import 'package:candy_puzzle/models/puzzle_model.dart';
import 'package:candy_puzzle/services/exports.dart';
import 'package:candy_puzzle/widgets/finish_menu.dart';

part 'puzzle_provider.g.dart';

class PuzzleDataState {
  final int level;
  final double maxWidth;

  const PuzzleDataState({required this.level, required this.maxWidth});

  PuzzleDataState copyWith({int? level, double? maxWidth}) {
    return PuzzleDataState(
      level: level ?? this.level,
      maxWidth: maxWidth ?? this.maxWidth,
    );
  }
}

@Riverpod(keepAlive: true)
class PuzzleDuration extends _$PuzzleDuration {
  @override
  MapEntry<Duration, Duration> build() {
    return MapEntry(Duration.zero, Duration.zero);
  }

  void setDuration(Duration duration) {
    state = MapEntry(duration, duration);
  }

  void decrimentDuration() {
    state = MapEntry(state.key, state.value - Duration(seconds: 1));
  }

  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      decrimentDuration();
      if (state.value <= Duration.zero) {
        timer.cancel();
        finish();
      }
    });
  }

  void reset() {
    try {
      timer!.cancel();
    } catch (_) {}

    ref.read(puzzleDurationProvider.notifier).setDuration(state.key);
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
}

@Riverpod(keepAlive: true)
class PuzzleDataValues extends _$PuzzleDataValues {
  @override
  PuzzleDataState build() {
    return const PuzzleDataState(level: 1, maxWidth: 0);
  }

  void setLevel(int level) {
    state = state.copyWith(level: level);
  }

  void setMaxWidth(double maxWidth) {
    state = state.copyWith(maxWidth: maxWidth);
  }
}

@Riverpod(keepAlive: true)
class PuzzleController extends _$PuzzleController {
  @override
  Future<PuzzleModel?> build() async {
    final data = ref.watch(puzzleDataValuesProvider);

    if (data.maxWidth <= 0) return null;

    final puzzle = PuzzleLocalData.values[data.level];
    if (puzzle == null) return null;
    final arentir = max(puzzle.width, puzzle.height);
    final scale = ((data.maxWidth - 48).clamp(1.0, double.infinity)) / arentir;

    final widthPad = ((data.maxWidth - 17 * 2) - puzzle.width * scale) / 2;
    final heightPad = ((data.maxWidth - 17 * 2) - puzzle.height * scale) / 2;

    final pieces = puzzle.pieces.map((p) {
      return p.copyWith(
        width: p.width * scale,
        correctX: p.correctX * scale + widthPad,
        correctY: p.correctY * scale + heightPad,
        x: p.x ?? Random().nextDouble() * 200,
        y: p.y ?? Random().nextDouble() * 200,
      );
    }).toList();

    return puzzle.copyWith(pieces: pieces);
  }

  void onPieceDropped(int pieceId, Offset dropPosition) {
    state.whenData((current) {
      if (current == null) return null;
      List<PuzzlePieceModel> pieces = [];
      PuzzlePieceModel? piece;
      int corrcetCount = 0;

      for (var p in current.pieces) {
        if (p.id != pieceId) {
          pieces.add(p);
        } else {
          piece = p;
        }
        if (p.isPlaced) {
          corrcetCount++;
        }
      }

      if (piece != null) {
        final distance =
            (Offset(piece.correctX, piece.correctY) - dropPosition).distance;
        if (distance < 50) {
          piece = piece.copyWith(
            isPlaced: true,
            x: piece.correctX,
            y: piece.correctY,
          );
          corrcetCount++;
        } else {
          final data = ref.watch(puzzleDataValuesProvider);
          if (data.maxWidth <= 0) return null;
          piece = piece.copyWith(
            x: (dropPosition.dx - 17).clamp(0, data.maxWidth * 0.7),
            y: (dropPosition.dy - 17).clamp(0, data.maxWidth * 0.7),
          );
        }
        pieces.add(piece);
      }

      if (corrcetCount == pieces.length) {
        final data = ref.read(puzzleDataValuesProvider);
        final duration = ref.read(puzzleDurationProvider).value;
        ref.read(puzzleDurationProvider.notifier).pause();
        if (data.level == Boxes().openedLvl) {
          Boxes().putOpenedLvl(data.level + 1);
        }
        Boxes().putBestTime(data.level, duration);
        PopUpService()
            .show(FinishMenu(isWin: true), barrierDismissible: false)
            .then((val) {});
      }

      state = AsyncData(current.copyWith(pieces: pieces));
    });
  }
}
