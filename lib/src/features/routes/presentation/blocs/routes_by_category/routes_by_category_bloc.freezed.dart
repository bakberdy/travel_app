// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoutesByCategoryEvent {

 RouteTypeEntity? get type;
/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesByCategoryEventCopyWith<RoutesByCategoryEvent> get copyWith => _$RoutesByCategoryEventCopyWithImpl<RoutesByCategoryEvent>(this as RoutesByCategoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesByCategoryEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'RoutesByCategoryEvent(type: $type)';
}


}

/// @nodoc
abstract mixin class $RoutesByCategoryEventCopyWith<$Res>  {
  factory $RoutesByCategoryEventCopyWith(RoutesByCategoryEvent value, $Res Function(RoutesByCategoryEvent) _then) = _$RoutesByCategoryEventCopyWithImpl;
@useResult
$Res call({
 RouteTypeEntity? type
});




}
/// @nodoc
class _$RoutesByCategoryEventCopyWithImpl<$Res>
    implements $RoutesByCategoryEventCopyWith<$Res> {
  _$RoutesByCategoryEventCopyWithImpl(this._self, this._then);

  final RoutesByCategoryEvent _self;
  final $Res Function(RoutesByCategoryEvent) _then;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RouteTypeEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutesByCategoryEvent].
extension RoutesByCategoryEventPatterns on RoutesByCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadPopularRoutesEvent value)?  loadPopular,TResult Function( LoadRecommendedRoutesEvent value)?  loadRecommended,TResult Function( LoadAllRoutesEvent value)?  loadAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadPopularRoutesEvent() when loadPopular != null:
return loadPopular(_that);case LoadRecommendedRoutesEvent() when loadRecommended != null:
return loadRecommended(_that);case LoadAllRoutesEvent() when loadAll != null:
return loadAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadPopularRoutesEvent value)  loadPopular,required TResult Function( LoadRecommendedRoutesEvent value)  loadRecommended,required TResult Function( LoadAllRoutesEvent value)  loadAll,}){
final _that = this;
switch (_that) {
case LoadPopularRoutesEvent():
return loadPopular(_that);case LoadRecommendedRoutesEvent():
return loadRecommended(_that);case LoadAllRoutesEvent():
return loadAll(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadPopularRoutesEvent value)?  loadPopular,TResult? Function( LoadRecommendedRoutesEvent value)?  loadRecommended,TResult? Function( LoadAllRoutesEvent value)?  loadAll,}){
final _that = this;
switch (_that) {
case LoadPopularRoutesEvent() when loadPopular != null:
return loadPopular(_that);case LoadRecommendedRoutesEvent() when loadRecommended != null:
return loadRecommended(_that);case LoadAllRoutesEvent() when loadAll != null:
return loadAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( RouteTypeEntity? type)?  loadPopular,TResult Function( RouteTypeEntity? type)?  loadRecommended,TResult Function( RouteTypeEntity? type)?  loadAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadPopularRoutesEvent() when loadPopular != null:
return loadPopular(_that.type);case LoadRecommendedRoutesEvent() when loadRecommended != null:
return loadRecommended(_that.type);case LoadAllRoutesEvent() when loadAll != null:
return loadAll(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( RouteTypeEntity? type)  loadPopular,required TResult Function( RouteTypeEntity? type)  loadRecommended,required TResult Function( RouteTypeEntity? type)  loadAll,}) {final _that = this;
switch (_that) {
case LoadPopularRoutesEvent():
return loadPopular(_that.type);case LoadRecommendedRoutesEvent():
return loadRecommended(_that.type);case LoadAllRoutesEvent():
return loadAll(_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( RouteTypeEntity? type)?  loadPopular,TResult? Function( RouteTypeEntity? type)?  loadRecommended,TResult? Function( RouteTypeEntity? type)?  loadAll,}) {final _that = this;
switch (_that) {
case LoadPopularRoutesEvent() when loadPopular != null:
return loadPopular(_that.type);case LoadRecommendedRoutesEvent() when loadRecommended != null:
return loadRecommended(_that.type);case LoadAllRoutesEvent() when loadAll != null:
return loadAll(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class LoadPopularRoutesEvent implements RoutesByCategoryEvent {
  const LoadPopularRoutesEvent({this.type});
  

@override final  RouteTypeEntity? type;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadPopularRoutesEventCopyWith<LoadPopularRoutesEvent> get copyWith => _$LoadPopularRoutesEventCopyWithImpl<LoadPopularRoutesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadPopularRoutesEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'RoutesByCategoryEvent.loadPopular(type: $type)';
}


}

/// @nodoc
abstract mixin class $LoadPopularRoutesEventCopyWith<$Res> implements $RoutesByCategoryEventCopyWith<$Res> {
  factory $LoadPopularRoutesEventCopyWith(LoadPopularRoutesEvent value, $Res Function(LoadPopularRoutesEvent) _then) = _$LoadPopularRoutesEventCopyWithImpl;
@override @useResult
$Res call({
 RouteTypeEntity? type
});




}
/// @nodoc
class _$LoadPopularRoutesEventCopyWithImpl<$Res>
    implements $LoadPopularRoutesEventCopyWith<$Res> {
  _$LoadPopularRoutesEventCopyWithImpl(this._self, this._then);

  final LoadPopularRoutesEvent _self;
  final $Res Function(LoadPopularRoutesEvent) _then;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(LoadPopularRoutesEvent(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RouteTypeEntity?,
  ));
}


}

/// @nodoc


class LoadRecommendedRoutesEvent implements RoutesByCategoryEvent {
  const LoadRecommendedRoutesEvent({this.type});
  

@override final  RouteTypeEntity? type;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRecommendedRoutesEventCopyWith<LoadRecommendedRoutesEvent> get copyWith => _$LoadRecommendedRoutesEventCopyWithImpl<LoadRecommendedRoutesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRecommendedRoutesEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'RoutesByCategoryEvent.loadRecommended(type: $type)';
}


}

/// @nodoc
abstract mixin class $LoadRecommendedRoutesEventCopyWith<$Res> implements $RoutesByCategoryEventCopyWith<$Res> {
  factory $LoadRecommendedRoutesEventCopyWith(LoadRecommendedRoutesEvent value, $Res Function(LoadRecommendedRoutesEvent) _then) = _$LoadRecommendedRoutesEventCopyWithImpl;
@override @useResult
$Res call({
 RouteTypeEntity? type
});




}
/// @nodoc
class _$LoadRecommendedRoutesEventCopyWithImpl<$Res>
    implements $LoadRecommendedRoutesEventCopyWith<$Res> {
  _$LoadRecommendedRoutesEventCopyWithImpl(this._self, this._then);

  final LoadRecommendedRoutesEvent _self;
  final $Res Function(LoadRecommendedRoutesEvent) _then;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(LoadRecommendedRoutesEvent(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RouteTypeEntity?,
  ));
}


}

/// @nodoc


class LoadAllRoutesEvent implements RoutesByCategoryEvent {
  const LoadAllRoutesEvent({this.type});
  

@override final  RouteTypeEntity? type;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadAllRoutesEventCopyWith<LoadAllRoutesEvent> get copyWith => _$LoadAllRoutesEventCopyWithImpl<LoadAllRoutesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAllRoutesEvent&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'RoutesByCategoryEvent.loadAll(type: $type)';
}


}

/// @nodoc
abstract mixin class $LoadAllRoutesEventCopyWith<$Res> implements $RoutesByCategoryEventCopyWith<$Res> {
  factory $LoadAllRoutesEventCopyWith(LoadAllRoutesEvent value, $Res Function(LoadAllRoutesEvent) _then) = _$LoadAllRoutesEventCopyWithImpl;
@override @useResult
$Res call({
 RouteTypeEntity? type
});




}
/// @nodoc
class _$LoadAllRoutesEventCopyWithImpl<$Res>
    implements $LoadAllRoutesEventCopyWith<$Res> {
  _$LoadAllRoutesEventCopyWithImpl(this._self, this._then);

  final LoadAllRoutesEvent _self;
  final $Res Function(LoadAllRoutesEvent) _then;

/// Create a copy of RoutesByCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,}) {
  return _then(LoadAllRoutesEvent(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RouteTypeEntity?,
  ));
}


}

/// @nodoc
mixin _$RoutesByCategoryState {

 List<RouteEntity> get popularRoutes; List<RouteEntity> get recommendedRoutes; bool get isLoadingPopular; bool get isLoadingRecommended; String? get popularError; String? get recommendedError;
/// Create a copy of RoutesByCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesByCategoryStateCopyWith<RoutesByCategoryState> get copyWith => _$RoutesByCategoryStateCopyWithImpl<RoutesByCategoryState>(this as RoutesByCategoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesByCategoryState&&const DeepCollectionEquality().equals(other.popularRoutes, popularRoutes)&&const DeepCollectionEquality().equals(other.recommendedRoutes, recommendedRoutes)&&(identical(other.isLoadingPopular, isLoadingPopular) || other.isLoadingPopular == isLoadingPopular)&&(identical(other.isLoadingRecommended, isLoadingRecommended) || other.isLoadingRecommended == isLoadingRecommended)&&(identical(other.popularError, popularError) || other.popularError == popularError)&&(identical(other.recommendedError, recommendedError) || other.recommendedError == recommendedError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(popularRoutes),const DeepCollectionEquality().hash(recommendedRoutes),isLoadingPopular,isLoadingRecommended,popularError,recommendedError);

@override
String toString() {
  return 'RoutesByCategoryState(popularRoutes: $popularRoutes, recommendedRoutes: $recommendedRoutes, isLoadingPopular: $isLoadingPopular, isLoadingRecommended: $isLoadingRecommended, popularError: $popularError, recommendedError: $recommendedError)';
}


}

/// @nodoc
abstract mixin class $RoutesByCategoryStateCopyWith<$Res>  {
  factory $RoutesByCategoryStateCopyWith(RoutesByCategoryState value, $Res Function(RoutesByCategoryState) _then) = _$RoutesByCategoryStateCopyWithImpl;
@useResult
$Res call({
 List<RouteEntity> popularRoutes, List<RouteEntity> recommendedRoutes, bool isLoadingPopular, bool isLoadingRecommended, String? popularError, String? recommendedError
});




}
/// @nodoc
class _$RoutesByCategoryStateCopyWithImpl<$Res>
    implements $RoutesByCategoryStateCopyWith<$Res> {
  _$RoutesByCategoryStateCopyWithImpl(this._self, this._then);

  final RoutesByCategoryState _self;
  final $Res Function(RoutesByCategoryState) _then;

/// Create a copy of RoutesByCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? popularRoutes = null,Object? recommendedRoutes = null,Object? isLoadingPopular = null,Object? isLoadingRecommended = null,Object? popularError = freezed,Object? recommendedError = freezed,}) {
  return _then(_self.copyWith(
popularRoutes: null == popularRoutes ? _self.popularRoutes : popularRoutes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,recommendedRoutes: null == recommendedRoutes ? _self.recommendedRoutes : recommendedRoutes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,isLoadingPopular: null == isLoadingPopular ? _self.isLoadingPopular : isLoadingPopular // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRecommended: null == isLoadingRecommended ? _self.isLoadingRecommended : isLoadingRecommended // ignore: cast_nullable_to_non_nullable
as bool,popularError: freezed == popularError ? _self.popularError : popularError // ignore: cast_nullable_to_non_nullable
as String?,recommendedError: freezed == recommendedError ? _self.recommendedError : recommendedError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutesByCategoryState].
extension RoutesByCategoryStatePatterns on RoutesByCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoutesByCategoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoutesByCategoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoutesByCategoryState value)  $default,){
final _that = this;
switch (_that) {
case _RoutesByCategoryState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoutesByCategoryState value)?  $default,){
final _that = this;
switch (_that) {
case _RoutesByCategoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RouteEntity> popularRoutes,  List<RouteEntity> recommendedRoutes,  bool isLoadingPopular,  bool isLoadingRecommended,  String? popularError,  String? recommendedError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutesByCategoryState() when $default != null:
return $default(_that.popularRoutes,_that.recommendedRoutes,_that.isLoadingPopular,_that.isLoadingRecommended,_that.popularError,_that.recommendedError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RouteEntity> popularRoutes,  List<RouteEntity> recommendedRoutes,  bool isLoadingPopular,  bool isLoadingRecommended,  String? popularError,  String? recommendedError)  $default,) {final _that = this;
switch (_that) {
case _RoutesByCategoryState():
return $default(_that.popularRoutes,_that.recommendedRoutes,_that.isLoadingPopular,_that.isLoadingRecommended,_that.popularError,_that.recommendedError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RouteEntity> popularRoutes,  List<RouteEntity> recommendedRoutes,  bool isLoadingPopular,  bool isLoadingRecommended,  String? popularError,  String? recommendedError)?  $default,) {final _that = this;
switch (_that) {
case _RoutesByCategoryState() when $default != null:
return $default(_that.popularRoutes,_that.recommendedRoutes,_that.isLoadingPopular,_that.isLoadingRecommended,_that.popularError,_that.recommendedError);case _:
  return null;

}
}

}

/// @nodoc


class _RoutesByCategoryState implements RoutesByCategoryState {
  const _RoutesByCategoryState({final  List<RouteEntity> popularRoutes = const [], final  List<RouteEntity> recommendedRoutes = const [], this.isLoadingPopular = false, this.isLoadingRecommended = false, this.popularError, this.recommendedError}): _popularRoutes = popularRoutes,_recommendedRoutes = recommendedRoutes;
  

 final  List<RouteEntity> _popularRoutes;
@override@JsonKey() List<RouteEntity> get popularRoutes {
  if (_popularRoutes is EqualUnmodifiableListView) return _popularRoutes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_popularRoutes);
}

 final  List<RouteEntity> _recommendedRoutes;
@override@JsonKey() List<RouteEntity> get recommendedRoutes {
  if (_recommendedRoutes is EqualUnmodifiableListView) return _recommendedRoutes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recommendedRoutes);
}

@override@JsonKey() final  bool isLoadingPopular;
@override@JsonKey() final  bool isLoadingRecommended;
@override final  String? popularError;
@override final  String? recommendedError;

/// Create a copy of RoutesByCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutesByCategoryStateCopyWith<_RoutesByCategoryState> get copyWith => __$RoutesByCategoryStateCopyWithImpl<_RoutesByCategoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutesByCategoryState&&const DeepCollectionEquality().equals(other._popularRoutes, _popularRoutes)&&const DeepCollectionEquality().equals(other._recommendedRoutes, _recommendedRoutes)&&(identical(other.isLoadingPopular, isLoadingPopular) || other.isLoadingPopular == isLoadingPopular)&&(identical(other.isLoadingRecommended, isLoadingRecommended) || other.isLoadingRecommended == isLoadingRecommended)&&(identical(other.popularError, popularError) || other.popularError == popularError)&&(identical(other.recommendedError, recommendedError) || other.recommendedError == recommendedError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_popularRoutes),const DeepCollectionEquality().hash(_recommendedRoutes),isLoadingPopular,isLoadingRecommended,popularError,recommendedError);

@override
String toString() {
  return 'RoutesByCategoryState(popularRoutes: $popularRoutes, recommendedRoutes: $recommendedRoutes, isLoadingPopular: $isLoadingPopular, isLoadingRecommended: $isLoadingRecommended, popularError: $popularError, recommendedError: $recommendedError)';
}


}

/// @nodoc
abstract mixin class _$RoutesByCategoryStateCopyWith<$Res> implements $RoutesByCategoryStateCopyWith<$Res> {
  factory _$RoutesByCategoryStateCopyWith(_RoutesByCategoryState value, $Res Function(_RoutesByCategoryState) _then) = __$RoutesByCategoryStateCopyWithImpl;
@override @useResult
$Res call({
 List<RouteEntity> popularRoutes, List<RouteEntity> recommendedRoutes, bool isLoadingPopular, bool isLoadingRecommended, String? popularError, String? recommendedError
});




}
/// @nodoc
class __$RoutesByCategoryStateCopyWithImpl<$Res>
    implements _$RoutesByCategoryStateCopyWith<$Res> {
  __$RoutesByCategoryStateCopyWithImpl(this._self, this._then);

  final _RoutesByCategoryState _self;
  final $Res Function(_RoutesByCategoryState) _then;

/// Create a copy of RoutesByCategoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? popularRoutes = null,Object? recommendedRoutes = null,Object? isLoadingPopular = null,Object? isLoadingRecommended = null,Object? popularError = freezed,Object? recommendedError = freezed,}) {
  return _then(_RoutesByCategoryState(
popularRoutes: null == popularRoutes ? _self._popularRoutes : popularRoutes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,recommendedRoutes: null == recommendedRoutes ? _self._recommendedRoutes : recommendedRoutes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,isLoadingPopular: null == isLoadingPopular ? _self.isLoadingPopular : isLoadingPopular // ignore: cast_nullable_to_non_nullable
as bool,isLoadingRecommended: null == isLoadingRecommended ? _self.isLoadingRecommended : isLoadingRecommended // ignore: cast_nullable_to_non_nullable
as bool,popularError: freezed == popularError ? _self.popularError : popularError // ignore: cast_nullable_to_non_nullable
as String?,recommendedError: freezed == recommendedError ? _self.recommendedError : recommendedError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
