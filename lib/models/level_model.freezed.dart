// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LevelModel {

 int get id; int get level; double get x; double get y; bool get isOpened;
/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelModelCopyWith<LevelModel> get copyWith => _$LevelModelCopyWithImpl<LevelModel>(this as LevelModel, _$identity);

  /// Serializes this LevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.isOpened, isOpened) || other.isOpened == isOpened));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,x,y,isOpened);

@override
String toString() {
  return 'LevelModel(id: $id, level: $level, x: $x, y: $y, isOpened: $isOpened)';
}


}

/// @nodoc
abstract mixin class $LevelModelCopyWith<$Res>  {
  factory $LevelModelCopyWith(LevelModel value, $Res Function(LevelModel) _then) = _$LevelModelCopyWithImpl;
@useResult
$Res call({
 int id, int level, double x, double y, bool isOpened
});




}
/// @nodoc
class _$LevelModelCopyWithImpl<$Res>
    implements $LevelModelCopyWith<$Res> {
  _$LevelModelCopyWithImpl(this._self, this._then);

  final LevelModel _self;
  final $Res Function(LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? level = null,Object? x = null,Object? y = null,Object? isOpened = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,isOpened: null == isOpened ? _self.isOpened : isOpened // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LevelModel].
extension LevelModelPatterns on LevelModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelModel value)  $default,){
final _that = this;
switch (_that) {
case _LevelModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int level,  double x,  double y,  bool isOpened)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.id,_that.level,_that.x,_that.y,_that.isOpened);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int level,  double x,  double y,  bool isOpened)  $default,) {final _that = this;
switch (_that) {
case _LevelModel():
return $default(_that.id,_that.level,_that.x,_that.y,_that.isOpened);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int level,  double x,  double y,  bool isOpened)?  $default,) {final _that = this;
switch (_that) {
case _LevelModel() when $default != null:
return $default(_that.id,_that.level,_that.x,_that.y,_that.isOpened);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelModel implements LevelModel {
  const _LevelModel({required this.id, required this.level, required this.x, required this.y, this.isOpened = false});
  factory _LevelModel.fromJson(Map<String, dynamic> json) => _$LevelModelFromJson(json);

@override final  int id;
@override final  int level;
@override final  double x;
@override final  double y;
@override@JsonKey() final  bool isOpened;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelModelCopyWith<_LevelModel> get copyWith => __$LevelModelCopyWithImpl<_LevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.isOpened, isOpened) || other.isOpened == isOpened));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level,x,y,isOpened);

@override
String toString() {
  return 'LevelModel(id: $id, level: $level, x: $x, y: $y, isOpened: $isOpened)';
}


}

/// @nodoc
abstract mixin class _$LevelModelCopyWith<$Res> implements $LevelModelCopyWith<$Res> {
  factory _$LevelModelCopyWith(_LevelModel value, $Res Function(_LevelModel) _then) = __$LevelModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int level, double x, double y, bool isOpened
});




}
/// @nodoc
class __$LevelModelCopyWithImpl<$Res>
    implements _$LevelModelCopyWith<$Res> {
  __$LevelModelCopyWithImpl(this._self, this._then);

  final _LevelModel _self;
  final $Res Function(_LevelModel) _then;

/// Create a copy of LevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,Object? x = null,Object? y = null,Object? isOpened = null,}) {
  return _then(_LevelModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,x: null == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double,y: null == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double,isOpened: null == isOpened ? _self.isOpened : isOpened // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
