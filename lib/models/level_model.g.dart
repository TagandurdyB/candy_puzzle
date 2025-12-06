// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LevelModel _$LevelModelFromJson(Map<String, dynamic> json) => _LevelModel(
  id: (json['id'] as num).toInt(),
  level: (json['level'] as num).toInt(),
  x: (json['x'] as num).toDouble(),
  y: (json['y'] as num).toDouble(),
  isOpened: json['isOpened'] as bool? ?? false,
);

Map<String, dynamic> _$LevelModelToJson(_LevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'x': instance.x,
      'y': instance.y,
      'isOpened': instance.isOpened,
    };
