// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'puzzle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PuzzleModel _$PuzzleModelFromJson(Map<String, dynamic> json) => _PuzzleModel(
  id: (json['id'] as num).toInt(),
  width: (json['width'] as num).toDouble(),
  height: (json['height'] as num).toDouble(),
  duration: Duration(microseconds: (json['duration'] as num).toInt()),
  pieces: (json['pieces'] as List<dynamic>)
      .map((e) => PuzzlePieceModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PuzzleModelToJson(_PuzzleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration.inMicroseconds,
      'pieces': instance.pieces,
    };

_PuzzlePieceModel _$PuzzlePieceModelFromJson(Map<String, dynamic> json) =>
    _PuzzlePieceModel(
      id: (json['id'] as num).toInt(),
      img: json['img'] as String,
      correctX: (json['correctX'] as num).toDouble(),
      correctY: (json['correctY'] as num).toDouble(),
      width: (json['width'] as num).toDouble(),
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      isPlaced: json['isPlaced'] as bool? ?? false,
    );

Map<String, dynamic> _$PuzzlePieceModelToJson(_PuzzlePieceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'img': instance.img,
      'correctX': instance.correctX,
      'correctY': instance.correctY,
      'width': instance.width,
      'x': instance.x,
      'y': instance.y,
      'isPlaced': instance.isPlaced,
    };
