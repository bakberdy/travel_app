// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoutesEvent {

 GetRouteRequestParametersEntity get params;
/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesEventCopyWith<RoutesEvent> get copyWith => _$RoutesEventCopyWithImpl<RoutesEvent>(this as RoutesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'RoutesEvent(params: $params)';
}


}

/// @nodoc
abstract mixin class $RoutesEventCopyWith<$Res>  {
  factory $RoutesEventCopyWith(RoutesEvent value, $Res Function(RoutesEvent) _then) = _$RoutesEventCopyWithImpl;
@useResult
$Res call({
 GetRouteRequestParametersEntity params
});




}
/// @nodoc
class _$RoutesEventCopyWithImpl<$Res>
    implements $RoutesEventCopyWith<$Res> {
  _$RoutesEventCopyWithImpl(this._self, this._then);

  final RoutesEvent _self;
  final $Res Function(RoutesEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? params = null,}) {
  return _then(_self.copyWith(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GetRouteRequestParametersEntity,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutesEvent].
extension RoutesEventPatterns on RoutesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetRoutesEvent value)?  getRoutes,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetRoutesEvent value)  getRoutes,}){
final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetRoutesEvent value)?  getRoutes,}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GetRouteRequestParametersEntity params)?  getRoutes,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GetRouteRequestParametersEntity params)  getRoutes,}) {final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that.params);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GetRouteRequestParametersEntity params)?  getRoutes,}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class GetRoutesEvent implements RoutesEvent {
  const GetRoutesEvent({required this.params});
  

@override final  GetRouteRequestParametersEntity params;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRoutesEventCopyWith<GetRoutesEvent> get copyWith => _$GetRoutesEventCopyWithImpl<GetRoutesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRoutesEvent&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'RoutesEvent.getRoutes(params: $params)';
}


}

/// @nodoc
abstract mixin class $GetRoutesEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $GetRoutesEventCopyWith(GetRoutesEvent value, $Res Function(GetRoutesEvent) _then) = _$GetRoutesEventCopyWithImpl;
@override @useResult
$Res call({
 GetRouteRequestParametersEntity params
});




}
/// @nodoc
class _$GetRoutesEventCopyWithImpl<$Res>
    implements $GetRoutesEventCopyWith<$Res> {
  _$GetRoutesEventCopyWithImpl(this._self, this._then);

  final GetRoutesEvent _self;
  final $Res Function(GetRoutesEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(GetRoutesEvent(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GetRouteRequestParametersEntity,
  ));
}


}

/// @nodoc
mixin _$RoutesState {

 List<RouteEntity> get routes; StateStatus get routesStatus; String? get routesErrorMessage;
/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesStateCopyWith<RoutesState> get copyWith => _$RoutesStateCopyWithImpl<RoutesState>(this as RoutesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesState&&const DeepCollectionEquality().equals(other.routes, routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(routes),routesStatus,routesErrorMessage);

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage)';
}


}

/// @nodoc
abstract mixin class $RoutesStateCopyWith<$Res>  {
  factory $RoutesStateCopyWith(RoutesState value, $Res Function(RoutesState) _then) = _$RoutesStateCopyWithImpl;
@useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage
});




}
/// @nodoc
class _$RoutesStateCopyWithImpl<$Res>
    implements $RoutesStateCopyWith<$Res> {
  _$RoutesStateCopyWithImpl(this._self, this._then);

  final RoutesState _self;
  final $Res Function(RoutesState) _then;

/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,}) {
  return _then(_self.copyWith(
routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutesState].
extension RoutesStatePatterns on RoutesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoutesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoutesState value)  $default,){
final _that = this;
switch (_that) {
case _RoutesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoutesState value)?  $default,){
final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _RoutesState():
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RoutesState implements RoutesState {
  const _RoutesState({final  List<RouteEntity> routes = const [], this.routesStatus = StateStatus.initial, this.routesErrorMessage}): _routes = routes;
  

 final  List<RouteEntity> _routes;
@override@JsonKey() List<RouteEntity> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}

@override@JsonKey() final  StateStatus routesStatus;
@override final  String? routesErrorMessage;

/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutesStateCopyWith<_RoutesState> get copyWith => __$RoutesStateCopyWithImpl<_RoutesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutesState&&const DeepCollectionEquality().equals(other._routes, _routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_routes),routesStatus,routesErrorMessage);

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$RoutesStateCopyWith<$Res> implements $RoutesStateCopyWith<$Res> {
  factory _$RoutesStateCopyWith(_RoutesState value, $Res Function(_RoutesState) _then) = __$RoutesStateCopyWithImpl;
@override @useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage
});




}
/// @nodoc
class __$RoutesStateCopyWithImpl<$Res>
    implements _$RoutesStateCopyWith<$Res> {
  __$RoutesStateCopyWithImpl(this._self, this._then);

  final _RoutesState _self;
  final $Res Function(_RoutesState) _then;

/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,}) {
  return _then(_RoutesState(
routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
