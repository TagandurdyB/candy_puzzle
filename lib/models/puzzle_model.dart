import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle_model.freezed.dart';
part 'puzzle_model.g.dart';

@freezed
abstract class PuzzleModel with _$PuzzleModel {
  const factory PuzzleModel({
    required int id,
    required double width,
    required double height,
    required Duration duration,
    required List<PuzzlePieceModel> pieces,
  }) = _PuzzleModel;

  factory PuzzleModel.fromJson(Map<String, dynamic> json) =>
      _$PuzzleModelFromJson(json);
}

@freezed
abstract class PuzzlePieceModel with _$PuzzlePieceModel {
  const factory PuzzlePieceModel({
    required int id,
    required String img,
    required double correctX,
    required double correctY,
    required double width,
    double? x,
    double? y,
    @Default(false) bool isPlaced,
  }) = _PuzzlePieceModel;

  factory PuzzlePieceModel.fromJson(Map<String, dynamic> json) =>
      _$PuzzlePieceModelFromJson(json);
}
