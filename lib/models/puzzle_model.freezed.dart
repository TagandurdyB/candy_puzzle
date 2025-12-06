// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puzzle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PuzzleModel {

 int get id; double get width; double get height; Duration get duration; List<PuzzlePieceModel> get pieces;
/// Create a copy of PuzzleModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PuzzleModelCopyWith<PuzzleModel> get copyWith => _$PuzzleModelCopyWithImpl<PuzzleModel>(this as PuzzleModel, _$identity);

  /// Serializes this PuzzleModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PuzzleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other.pieces, pieces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,width,height,duration,const DeepCollectionEquality().hash(pieces));

@override
String toString() {
  return 'PuzzleModel(id: $id, width: $width, height: $height, duration: $duration, pieces: $pieces)';
}


}

/// @nodoc
abstract mixin class $PuzzleModelCopyWith<$Res>  {
  factory $PuzzleModelCopyWith(PuzzleModel value, $Res Function(PuzzleModel) _then) = _$PuzzleModelCopyWithImpl;
@useResult
$Res call({
 int id, double width, double height, Duration duration, List<PuzzlePieceModel> pieces
});




}
/// @nodoc
class _$PuzzleModelCopyWithImpl<$Res>
    implements $PuzzleModelCopyWith<$Res> {
  _$PuzzleModelCopyWithImpl(this._self, this._then);

  final PuzzleModel _self;
  final $Res Function(PuzzleModel) _then;

/// Create a copy of PuzzleModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? width = null,Object? height = null,Object? duration = null,Object? pieces = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,pieces: null == pieces ? _self.pieces : pieces // ignore: cast_nullable_to_non_nullable
as List<PuzzlePieceModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PuzzleModel].
extension PuzzleModelPatterns on PuzzleModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PuzzleModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PuzzleModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PuzzleModel value)  $default,){
final _that = this;
switch (_that) {
case _PuzzleModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PuzzleModel value)?  $default,){
final _that = this;
switch (_that) {
case _PuzzleModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  double width,  double height,  Duration duration,  List<PuzzlePieceModel> pieces)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PuzzleModel() when $default != null:
return $default(_that.id,_that.width,_that.height,_that.duration,_that.pieces);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  double width,  double height,  Duration duration,  List<PuzzlePieceModel> pieces)  $default,) {final _that = this;
switch (_that) {
case _PuzzleModel():
return $default(_that.id,_that.width,_that.height,_that.duration,_that.pieces);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  double width,  double height,  Duration duration,  List<PuzzlePieceModel> pieces)?  $default,) {final _that = this;
switch (_that) {
case _PuzzleModel() when $default != null:
return $default(_that.id,_that.width,_that.height,_that.duration,_that.pieces);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PuzzleModel implements PuzzleModel {
  const _PuzzleModel({required this.id, required this.width, required this.height, required this.duration, required final  List<PuzzlePieceModel> pieces}): _pieces = pieces;
  factory _PuzzleModel.fromJson(Map<String, dynamic> json) => _$PuzzleModelFromJson(json);

@override final  int id;
@override final  double width;
@override final  double height;
@override final  Duration duration;
 final  List<PuzzlePieceModel> _pieces;
@override List<PuzzlePieceModel> get pieces {
  if (_pieces is EqualUnmodifiableListView) return _pieces;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pieces);
}


/// Create a copy of PuzzleModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PuzzleModelCopyWith<_PuzzleModel> get copyWith => __$PuzzleModelCopyWithImpl<_PuzzleModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PuzzleModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PuzzleModel&&(identical(other.id, id) || other.id == id)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration)&&const DeepCollectionEquality().equals(other._pieces, _pieces));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,width,height,duration,const DeepCollectionEquality().hash(_pieces));

@override
String toString() {
  return 'PuzzleModel(id: $id, width: $width, height: $height, duration: $duration, pieces: $pieces)';
}


}

/// @nodoc
abstract mixin class _$PuzzleModelCopyWith<$Res> implements $PuzzleModelCopyWith<$Res> {
  factory _$PuzzleModelCopyWith(_PuzzleModel value, $Res Function(_PuzzleModel) _then) = __$PuzzleModelCopyWithImpl;
@override @useResult
$Res call({
 int id, double width, double height, Duration duration, List<PuzzlePieceModel> pieces
});




}
/// @nodoc
class __$PuzzleModelCopyWithImpl<$Res>
    implements _$PuzzleModelCopyWith<$Res> {
  __$PuzzleModelCopyWithImpl(this._self, this._then);

  final _PuzzleModel _self;
  final $Res Function(_PuzzleModel) _then;

/// Create a copy of PuzzleModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? width = null,Object? height = null,Object? duration = null,Object? pieces = null,}) {
  return _then(_PuzzleModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,pieces: null == pieces ? _self._pieces : pieces // ignore: cast_nullable_to_non_nullable
as List<PuzzlePieceModel>,
  ));
}


}


/// @nodoc
mixin _$PuzzlePieceModel {

 int get id; String get img; double get correctX; double get correctY; double get width; double? get x; double? get y; bool get isPlaced;
/// Create a copy of PuzzlePieceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PuzzlePieceModelCopyWith<PuzzlePieceModel> get copyWith => _$PuzzlePieceModelCopyWithImpl<PuzzlePieceModel>(this as PuzzlePieceModel, _$identity);

  /// Serializes this PuzzlePieceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PuzzlePieceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.img, img) || other.img == img)&&(identical(other.correctX, correctX) || other.correctX == correctX)&&(identical(other.correctY, correctY) || other.correctY == correctY)&&(identical(other.width, width) || other.width == width)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.isPlaced, isPlaced) || other.isPlaced == isPlaced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,img,correctX,correctY,width,x,y,isPlaced);

@override
String toString() {
  return 'PuzzlePieceModel(id: $id, img: $img, correctX: $correctX, correctY: $correctY, width: $width, x: $x, y: $y, isPlaced: $isPlaced)';
}


}

/// @nodoc
abstract mixin class $PuzzlePieceModelCopyWith<$Res>  {
  factory $PuzzlePieceModelCopyWith(PuzzlePieceModel value, $Res Function(PuzzlePieceModel) _then) = _$PuzzlePieceModelCopyWithImpl;
@useResult
$Res call({
 int id, String img, double correctX, double correctY, double width, double? x, double? y, bool isPlaced
});




}
/// @nodoc
class _$PuzzlePieceModelCopyWithImpl<$Res>
    implements $PuzzlePieceModelCopyWith<$Res> {
  _$PuzzlePieceModelCopyWithImpl(this._self, this._then);

  final PuzzlePieceModel _self;
  final $Res Function(PuzzlePieceModel) _then;

/// Create a copy of PuzzlePieceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? img = null,Object? correctX = null,Object? correctY = null,Object? width = null,Object? x = freezed,Object? y = freezed,Object? isPlaced = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,correctX: null == correctX ? _self.correctX : correctX // ignore: cast_nullable_to_non_nullable
as double,correctY: null == correctY ? _self.correctY : correctY // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double?,isPlaced: null == isPlaced ? _self.isPlaced : isPlaced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PuzzlePieceModel].
extension PuzzlePieceModelPatterns on PuzzlePieceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PuzzlePieceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PuzzlePieceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PuzzlePieceModel value)  $default,){
final _that = this;
switch (_that) {
case _PuzzlePieceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PuzzlePieceModel value)?  $default,){
final _that = this;
switch (_that) {
case _PuzzlePieceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String img,  double correctX,  double correctY,  double width,  double? x,  double? y,  bool isPlaced)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PuzzlePieceModel() when $default != null:
return $default(_that.id,_that.img,_that.correctX,_that.correctY,_that.width,_that.x,_that.y,_that.isPlaced);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String img,  double correctX,  double correctY,  double width,  double? x,  double? y,  bool isPlaced)  $default,) {final _that = this;
switch (_that) {
case _PuzzlePieceModel():
return $default(_that.id,_that.img,_that.correctX,_that.correctY,_that.width,_that.x,_that.y,_that.isPlaced);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String img,  double correctX,  double correctY,  double width,  double? x,  double? y,  bool isPlaced)?  $default,) {final _that = this;
switch (_that) {
case _PuzzlePieceModel() when $default != null:
return $default(_that.id,_that.img,_that.correctX,_that.correctY,_that.width,_that.x,_that.y,_that.isPlaced);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PuzzlePieceModel implements PuzzlePieceModel {
  const _PuzzlePieceModel({required this.id, required this.img, required this.correctX, required this.correctY, required this.width, this.x, this.y, this.isPlaced = false});
  factory _PuzzlePieceModel.fromJson(Map<String, dynamic> json) => _$PuzzlePieceModelFromJson(json);

@override final  int id;
@override final  String img;
@override final  double correctX;
@override final  double correctY;
@override final  double width;
@override final  double? x;
@override final  double? y;
@override@JsonKey() final  bool isPlaced;

/// Create a copy of PuzzlePieceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PuzzlePieceModelCopyWith<_PuzzlePieceModel> get copyWith => __$PuzzlePieceModelCopyWithImpl<_PuzzlePieceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PuzzlePieceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PuzzlePieceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.img, img) || other.img == img)&&(identical(other.correctX, correctX) || other.correctX == correctX)&&(identical(other.correctY, correctY) || other.correctY == correctY)&&(identical(other.width, width) || other.width == width)&&(identical(other.x, x) || other.x == x)&&(identical(other.y, y) || other.y == y)&&(identical(other.isPlaced, isPlaced) || other.isPlaced == isPlaced));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,img,correctX,correctY,width,x,y,isPlaced);

@override
String toString() {
  return 'PuzzlePieceModel(id: $id, img: $img, correctX: $correctX, correctY: $correctY, width: $width, x: $x, y: $y, isPlaced: $isPlaced)';
}


}

/// @nodoc
abstract mixin class _$PuzzlePieceModelCopyWith<$Res> implements $PuzzlePieceModelCopyWith<$Res> {
  factory _$PuzzlePieceModelCopyWith(_PuzzlePieceModel value, $Res Function(_PuzzlePieceModel) _then) = __$PuzzlePieceModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String img, double correctX, double correctY, double width, double? x, double? y, bool isPlaced
});




}
/// @nodoc
class __$PuzzlePieceModelCopyWithImpl<$Res>
    implements _$PuzzlePieceModelCopyWith<$Res> {
  __$PuzzlePieceModelCopyWithImpl(this._self, this._then);

  final _PuzzlePieceModel _self;
  final $Res Function(_PuzzlePieceModel) _then;

/// Create a copy of PuzzlePieceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? img = null,Object? correctX = null,Object? correctY = null,Object? width = null,Object? x = freezed,Object? y = freezed,Object? isPlaced = null,}) {
  return _then(_PuzzlePieceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,img: null == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String,correctX: null == correctX ? _self.correctX : correctX // ignore: cast_nullable_to_non_nullable
as double,correctY: null == correctY ? _self.correctY : correctY // ignore: cast_nullable_to_non_nullable
as double,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as double,x: freezed == x ? _self.x : x // ignore: cast_nullable_to_non_nullable
as double?,y: freezed == y ? _self.y : y // ignore: cast_nullable_to_non_nullable
as double?,isPlaced: null == isPlaced ? _self.isPlaced : isPlaced // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
