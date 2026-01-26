// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_type_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteTypeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteTypeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RouteTypeEvent()';
}


}

/// @nodoc
class $RouteTypeEventCopyWith<$Res>  {
$RouteTypeEventCopyWith(RouteTypeEvent _, $Res Function(RouteTypeEvent) __);
}


/// Adds pattern-matching-related methods to [RouteTypeEvent].
extension RouteTypeEventPatterns on RouteTypeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetRouteTypesEvent value)?  getRouteTypes,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetRouteTypesEvent() when getRouteTypes != null:
return getRouteTypes(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetRouteTypesEvent value)  getRouteTypes,}){
final _that = this;
switch (_that) {
case GetRouteTypesEvent():
return getRouteTypes(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetRouteTypesEvent value)?  getRouteTypes,}){
final _that = this;
switch (_that) {
case GetRouteTypesEvent() when getRouteTypes != null:
return getRouteTypes(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getRouteTypes,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetRouteTypesEvent() when getRouteTypes != null:
return getRouteTypes();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getRouteTypes,}) {final _that = this;
switch (_that) {
case GetRouteTypesEvent():
return getRouteTypes();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getRouteTypes,}) {final _that = this;
switch (_that) {
case GetRouteTypesEvent() when getRouteTypes != null:
return getRouteTypes();case _:
  return null;

}
}

}

/// @nodoc


class GetRouteTypesEvent implements RouteTypeEvent {
  const GetRouteTypesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRouteTypesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RouteTypeEvent.getRouteTypes()';
}


}




/// @nodoc
mixin _$RouteTypeState {

 Set<RouteTypeEntity>? get routeTypes; StateStatus get routeTypesStatus; String? get routeTypeErrorMessage;
/// Create a copy of RouteTypeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteTypeStateCopyWith<RouteTypeState> get copyWith => _$RouteTypeStateCopyWithImpl<RouteTypeState>(this as RouteTypeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteTypeState&&const DeepCollectionEquality().equals(other.routeTypes, routeTypes)&&(identical(other.routeTypesStatus, routeTypesStatus) || other.routeTypesStatus == routeTypesStatus)&&(identical(other.routeTypeErrorMessage, routeTypeErrorMessage) || other.routeTypeErrorMessage == routeTypeErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(routeTypes),routeTypesStatus,routeTypeErrorMessage);

@override
String toString() {
  return 'RouteTypeState(routeTypes: $routeTypes, routeTypesStatus: $routeTypesStatus, routeTypeErrorMessage: $routeTypeErrorMessage)';
}


}

/// @nodoc
abstract mixin class $RouteTypeStateCopyWith<$Res>  {
  factory $RouteTypeStateCopyWith(RouteTypeState value, $Res Function(RouteTypeState) _then) = _$RouteTypeStateCopyWithImpl;
@useResult
$Res call({
 Set<RouteTypeEntity>? routeTypes, StateStatus routeTypesStatus, String? routeTypeErrorMessage
});




}
/// @nodoc
class _$RouteTypeStateCopyWithImpl<$Res>
    implements $RouteTypeStateCopyWith<$Res> {
  _$RouteTypeStateCopyWithImpl(this._self, this._then);

  final RouteTypeState _self;
  final $Res Function(RouteTypeState) _then;

/// Create a copy of RouteTypeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routeTypes = freezed,Object? routeTypesStatus = null,Object? routeTypeErrorMessage = freezed,}) {
  return _then(_self.copyWith(
routeTypes: freezed == routeTypes ? _self.routeTypes : routeTypes // ignore: cast_nullable_to_non_nullable
as Set<RouteTypeEntity>?,routeTypesStatus: null == routeTypesStatus ? _self.routeTypesStatus : routeTypesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routeTypeErrorMessage: freezed == routeTypeErrorMessage ? _self.routeTypeErrorMessage : routeTypeErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RouteTypeState].
extension RouteTypeStatePatterns on RouteTypeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteTypeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteTypeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteTypeState value)  $default,){
final _that = this;
switch (_that) {
case _RouteTypeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteTypeState value)?  $default,){
final _that = this;
switch (_that) {
case _RouteTypeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Set<RouteTypeEntity>? routeTypes,  StateStatus routeTypesStatus,  String? routeTypeErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteTypeState() when $default != null:
return $default(_that.routeTypes,_that.routeTypesStatus,_that.routeTypeErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Set<RouteTypeEntity>? routeTypes,  StateStatus routeTypesStatus,  String? routeTypeErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _RouteTypeState():
return $default(_that.routeTypes,_that.routeTypesStatus,_that.routeTypeErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Set<RouteTypeEntity>? routeTypes,  StateStatus routeTypesStatus,  String? routeTypeErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RouteTypeState() when $default != null:
return $default(_that.routeTypes,_that.routeTypesStatus,_that.routeTypeErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RouteTypeState implements RouteTypeState {
  const _RouteTypeState({final  Set<RouteTypeEntity>? routeTypes, this.routeTypesStatus = StateStatus.initial, this.routeTypeErrorMessage}): _routeTypes = routeTypes;
  

 final  Set<RouteTypeEntity>? _routeTypes;
@override Set<RouteTypeEntity>? get routeTypes {
  final value = _routeTypes;
  if (value == null) return null;
  if (_routeTypes is EqualUnmodifiableSetView) return _routeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

@override@JsonKey() final  StateStatus routeTypesStatus;
@override final  String? routeTypeErrorMessage;

/// Create a copy of RouteTypeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteTypeStateCopyWith<_RouteTypeState> get copyWith => __$RouteTypeStateCopyWithImpl<_RouteTypeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteTypeState&&const DeepCollectionEquality().equals(other._routeTypes, _routeTypes)&&(identical(other.routeTypesStatus, routeTypesStatus) || other.routeTypesStatus == routeTypesStatus)&&(identical(other.routeTypeErrorMessage, routeTypeErrorMessage) || other.routeTypeErrorMessage == routeTypeErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_routeTypes),routeTypesStatus,routeTypeErrorMessage);

@override
String toString() {
  return 'RouteTypeState(routeTypes: $routeTypes, routeTypesStatus: $routeTypesStatus, routeTypeErrorMessage: $routeTypeErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$RouteTypeStateCopyWith<$Res> implements $RouteTypeStateCopyWith<$Res> {
  factory _$RouteTypeStateCopyWith(_RouteTypeState value, $Res Function(_RouteTypeState) _then) = __$RouteTypeStateCopyWithImpl;
@override @useResult
$Res call({
 Set<RouteTypeEntity>? routeTypes, StateStatus routeTypesStatus, String? routeTypeErrorMessage
});




}
/// @nodoc
class __$RouteTypeStateCopyWithImpl<$Res>
    implements _$RouteTypeStateCopyWith<$Res> {
  __$RouteTypeStateCopyWithImpl(this._self, this._then);

  final _RouteTypeState _self;
  final $Res Function(_RouteTypeState) _then;

/// Create a copy of RouteTypeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routeTypes = freezed,Object? routeTypesStatus = null,Object? routeTypeErrorMessage = freezed,}) {
  return _then(_RouteTypeState(
routeTypes: freezed == routeTypes ? _self._routeTypes : routeTypes // ignore: cast_nullable_to_non_nullable
as Set<RouteTypeEntity>?,routeTypesStatus: null == routeTypesStatus ? _self.routeTypesStatus : routeTypesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routeTypeErrorMessage: freezed == routeTypeErrorMessage ? _self.routeTypeErrorMessage : routeTypeErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
