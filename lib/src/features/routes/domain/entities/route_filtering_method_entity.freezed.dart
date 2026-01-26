// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_filtering_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteFilteringMethod {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteFilteringMethod);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RouteFilteringMethod()';
}


}

/// @nodoc
class $RouteFilteringMethodCopyWith<$Res>  {
$RouteFilteringMethodCopyWith(RouteFilteringMethod _, $Res Function(RouteFilteringMethod) __);
}


/// Adds pattern-matching-related methods to [RouteFilteringMethod].
extension RouteFilteringMethodPatterns on RouteFilteringMethod {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RouteFilteringMethodByDifficulty value)?  byDifficulty,TResult Function( RouteFilteringMethodByDistanceRange value)?  byDistanceRange,TResult Function( RouteFilteringMethodByType value)?  byType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty() when byDifficulty != null:
return byDifficulty(_that);case RouteFilteringMethodByDistanceRange() when byDistanceRange != null:
return byDistanceRange(_that);case RouteFilteringMethodByType() when byType != null:
return byType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RouteFilteringMethodByDifficulty value)  byDifficulty,required TResult Function( RouteFilteringMethodByDistanceRange value)  byDistanceRange,required TResult Function( RouteFilteringMethodByType value)  byType,}){
final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty():
return byDifficulty(_that);case RouteFilteringMethodByDistanceRange():
return byDistanceRange(_that);case RouteFilteringMethodByType():
return byType(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RouteFilteringMethodByDifficulty value)?  byDifficulty,TResult? Function( RouteFilteringMethodByDistanceRange value)?  byDistanceRange,TResult? Function( RouteFilteringMethodByType value)?  byType,}){
final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty() when byDifficulty != null:
return byDifficulty(_that);case RouteFilteringMethodByDistanceRange() when byDistanceRange != null:
return byDistanceRange(_that);case RouteFilteringMethodByType() when byType != null:
return byType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RouteDifficultyEntity difficulty)?  byDifficulty,TResult Function( double minKm,  double maxKm)?  byDistanceRange,TResult Function( String type)?  byType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty() when byDifficulty != null:
return byDifficulty(_that.difficulty);case RouteFilteringMethodByDistanceRange() when byDistanceRange != null:
return byDistanceRange(_that.minKm,_that.maxKm);case RouteFilteringMethodByType() when byType != null:
return byType(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RouteDifficultyEntity difficulty)  byDifficulty,required TResult Function( double minKm,  double maxKm)  byDistanceRange,required TResult Function( String type)  byType,}) {final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty():
return byDifficulty(_that.difficulty);case RouteFilteringMethodByDistanceRange():
return byDistanceRange(_that.minKm,_that.maxKm);case RouteFilteringMethodByType():
return byType(_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RouteDifficultyEntity difficulty)?  byDifficulty,TResult? Function( double minKm,  double maxKm)?  byDistanceRange,TResult? Function( String type)?  byType,}) {final _that = this;
switch (_that) {
case RouteFilteringMethodByDifficulty() when byDifficulty != null:
return byDifficulty(_that.difficulty);case RouteFilteringMethodByDistanceRange() when byDistanceRange != null:
return byDistanceRange(_that.minKm,_that.maxKm);case RouteFilteringMethodByType() when byType != null:
return byType(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class RouteFilteringMethodByDifficulty implements RouteFilteringMethod {
  const RouteFilteringMethodByDifficulty({required this.difficulty});
  

 final  RouteDifficultyEntity difficulty;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteFilteringMethodByDifficultyCopyWith<RouteFilteringMethodByDifficulty> get copyWith => _$RouteFilteringMethodByDifficultyCopyWithImpl<RouteFilteringMethodByDifficulty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteFilteringMethodByDifficulty&&(identical(other.difficulty, difficulty) || other.difficulty == difficulty));
}


@override
int get hashCode => Object.hash(runtimeType,difficulty);

@override
String toString() {
  return 'RouteFilteringMethod.byDifficulty(difficulty: $difficulty)';
}


}

/// @nodoc
abstract mixin class $RouteFilteringMethodByDifficultyCopyWith<$Res> implements $RouteFilteringMethodCopyWith<$Res> {
  factory $RouteFilteringMethodByDifficultyCopyWith(RouteFilteringMethodByDifficulty value, $Res Function(RouteFilteringMethodByDifficulty) _then) = _$RouteFilteringMethodByDifficultyCopyWithImpl;
@useResult
$Res call({
 RouteDifficultyEntity difficulty
});




}
/// @nodoc
class _$RouteFilteringMethodByDifficultyCopyWithImpl<$Res>
    implements $RouteFilteringMethodByDifficultyCopyWith<$Res> {
  _$RouteFilteringMethodByDifficultyCopyWithImpl(this._self, this._then);

  final RouteFilteringMethodByDifficulty _self;
  final $Res Function(RouteFilteringMethodByDifficulty) _then;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? difficulty = null,}) {
  return _then(RouteFilteringMethodByDifficulty(
difficulty: null == difficulty ? _self.difficulty : difficulty // ignore: cast_nullable_to_non_nullable
as RouteDifficultyEntity,
  ));
}


}

/// @nodoc


class RouteFilteringMethodByDistanceRange implements RouteFilteringMethod {
  const RouteFilteringMethodByDistanceRange({required this.minKm, required this.maxKm});
  

 final  double minKm;
 final  double maxKm;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteFilteringMethodByDistanceRangeCopyWith<RouteFilteringMethodByDistanceRange> get copyWith => _$RouteFilteringMethodByDistanceRangeCopyWithImpl<RouteFilteringMethodByDistanceRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteFilteringMethodByDistanceRange&&(identical(other.minKm, minKm) || other.minKm == minKm)&&(identical(other.maxKm, maxKm) || other.maxKm == maxKm));
}


@override
int get hashCode => Object.hash(runtimeType,minKm,maxKm);

@override
String toString() {
  return 'RouteFilteringMethod.byDistanceRange(minKm: $minKm, maxKm: $maxKm)';
}


}

/// @nodoc
abstract mixin class $RouteFilteringMethodByDistanceRangeCopyWith<$Res> implements $RouteFilteringMethodCopyWith<$Res> {
  factory $RouteFilteringMethodByDistanceRangeCopyWith(RouteFilteringMethodByDistanceRange value, $Res Function(RouteFilteringMethodByDistanceRange) _then) = _$RouteFilteringMethodByDistanceRangeCopyWithImpl;
@useResult
$Res call({
 double minKm, double maxKm
});




}
/// @nodoc
class _$RouteFilteringMethodByDistanceRangeCopyWithImpl<$Res>
    implements $RouteFilteringMethodByDistanceRangeCopyWith<$Res> {
  _$RouteFilteringMethodByDistanceRangeCopyWithImpl(this._self, this._then);

  final RouteFilteringMethodByDistanceRange _self;
  final $Res Function(RouteFilteringMethodByDistanceRange) _then;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minKm = null,Object? maxKm = null,}) {
  return _then(RouteFilteringMethodByDistanceRange(
minKm: null == minKm ? _self.minKm : minKm // ignore: cast_nullable_to_non_nullable
as double,maxKm: null == maxKm ? _self.maxKm : maxKm // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class RouteFilteringMethodByType implements RouteFilteringMethod {
  const RouteFilteringMethodByType({required this.type});
  

 final  String type;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteFilteringMethodByTypeCopyWith<RouteFilteringMethodByType> get copyWith => _$RouteFilteringMethodByTypeCopyWithImpl<RouteFilteringMethodByType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteFilteringMethodByType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'RouteFilteringMethod.byType(type: $type)';
}


}

/// @nodoc
abstract mixin class $RouteFilteringMethodByTypeCopyWith<$Res> implements $RouteFilteringMethodCopyWith<$Res> {
  factory $RouteFilteringMethodByTypeCopyWith(RouteFilteringMethodByType value, $Res Function(RouteFilteringMethodByType) _then) = _$RouteFilteringMethodByTypeCopyWithImpl;
@useResult
$Res call({
 String type
});




}
/// @nodoc
class _$RouteFilteringMethodByTypeCopyWithImpl<$Res>
    implements $RouteFilteringMethodByTypeCopyWith<$Res> {
  _$RouteFilteringMethodByTypeCopyWithImpl(this._self, this._then);

  final RouteFilteringMethodByType _self;
  final $Res Function(RouteFilteringMethodByType) _then;

/// Create a copy of RouteFilteringMethod
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(RouteFilteringMethodByType(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
