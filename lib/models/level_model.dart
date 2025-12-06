import 'package:freezed_annotation/freezed_annotation.dart';

part 'level_model.freezed.dart';
part 'level_model.g.dart';

@freezed
abstract class LevelModel with _$LevelModel {
  const factory LevelModel({
    required int id,
    required int level,
    required double x,
    required double y,
    @Default(false) bool isOpened,
  }) = _LevelModel;

  factory LevelModel.fromJson(Map<String, dynamic> json) =>
      _$LevelModelFromJson(json);
}
