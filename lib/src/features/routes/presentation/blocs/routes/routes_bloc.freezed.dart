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





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RoutesEvent()';
}


}

/// @nodoc
class $RoutesEventCopyWith<$Res>  {
$RoutesEventCopyWith(RoutesEvent _, $Res Function(RoutesEvent) __);
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetRoutesEvent value)?  getRoutes,TResult Function( UpdateSortingEvent value)?  updateSorting,TResult Function( UpdateFiltersEvent value)?  updateFilters,TResult Function( RemoveFilterEvent value)?  removeFilter,TResult Function( UpdateSearchEvent value)?  updateSearch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that);case UpdateFiltersEvent() when updateFilters != null:
return updateFilters(_that);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetRoutesEvent value)  getRoutes,required TResult Function( UpdateSortingEvent value)  updateSorting,required TResult Function( UpdateFiltersEvent value)  updateFilters,required TResult Function( RemoveFilterEvent value)  removeFilter,required TResult Function( UpdateSearchEvent value)  updateSearch,}){
final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that);case UpdateSortingEvent():
return updateSorting(_that);case UpdateFiltersEvent():
return updateFilters(_that);case RemoveFilterEvent():
return removeFilter(_that);case UpdateSearchEvent():
return updateSearch(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetRoutesEvent value)?  getRoutes,TResult? Function( UpdateSortingEvent value)?  updateSorting,TResult? Function( UpdateFiltersEvent value)?  updateFilters,TResult? Function( RemoveFilterEvent value)?  removeFilter,TResult? Function( UpdateSearchEvent value)?  updateSearch,}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that);case UpdateFiltersEvent() when updateFilters != null:
return updateFilters(_that);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GetRouteRequestParametersEntity params)?  getRoutes,TResult Function( RouteSortingMethodEntity sortingMethod)?  updateSorting,TResult Function( List<RouteFilteringMethod> filteringMethods)?  updateFilters,TResult Function( RouteFilteringMethod filterToRemove)?  removeFilter,TResult Function( String searchQuery)?  updateSearch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that.sortingMethod);case UpdateFiltersEvent() when updateFilters != null:
return updateFilters(_that.filteringMethods);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that.filterToRemove);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GetRouteRequestParametersEntity params)  getRoutes,required TResult Function( RouteSortingMethodEntity sortingMethod)  updateSorting,required TResult Function( List<RouteFilteringMethod> filteringMethods)  updateFilters,required TResult Function( RouteFilteringMethod filterToRemove)  removeFilter,required TResult Function( String searchQuery)  updateSearch,}) {final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that.params);case UpdateSortingEvent():
return updateSorting(_that.sortingMethod);case UpdateFiltersEvent():
return updateFilters(_that.filteringMethods);case RemoveFilterEvent():
return removeFilter(_that.filterToRemove);case UpdateSearchEvent():
return updateSearch(_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GetRouteRequestParametersEntity params)?  getRoutes,TResult? Function( RouteSortingMethodEntity sortingMethod)?  updateSorting,TResult? Function( List<RouteFilteringMethod> filteringMethods)?  updateFilters,TResult? Function( RouteFilteringMethod filterToRemove)?  removeFilter,TResult? Function( String searchQuery)?  updateSearch,}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that.sortingMethod);case UpdateFiltersEvent() when updateFilters != null:
return updateFilters(_that.filteringMethods);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that.filterToRemove);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class GetRoutesEvent implements RoutesEvent {
  const GetRoutesEvent({required this.params});
  

 final  GetRouteRequestParametersEntity params;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
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
@useResult
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
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(GetRoutesEvent(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as GetRouteRequestParametersEntity,
  ));
}


}

/// @nodoc


class UpdateSortingEvent implements RoutesEvent {
  const UpdateSortingEvent({required this.sortingMethod});
  

 final  RouteSortingMethodEntity sortingMethod;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSortingEventCopyWith<UpdateSortingEvent> get copyWith => _$UpdateSortingEventCopyWithImpl<UpdateSortingEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSortingEvent&&(identical(other.sortingMethod, sortingMethod) || other.sortingMethod == sortingMethod));
}


@override
int get hashCode => Object.hash(runtimeType,sortingMethod);

@override
String toString() {
  return 'RoutesEvent.updateSorting(sortingMethod: $sortingMethod)';
}


}

/// @nodoc
abstract mixin class $UpdateSortingEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateSortingEventCopyWith(UpdateSortingEvent value, $Res Function(UpdateSortingEvent) _then) = _$UpdateSortingEventCopyWithImpl;
@useResult
$Res call({
 RouteSortingMethodEntity sortingMethod
});




}
/// @nodoc
class _$UpdateSortingEventCopyWithImpl<$Res>
    implements $UpdateSortingEventCopyWith<$Res> {
  _$UpdateSortingEventCopyWithImpl(this._self, this._then);

  final UpdateSortingEvent _self;
  final $Res Function(UpdateSortingEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sortingMethod = null,}) {
  return _then(UpdateSortingEvent(
sortingMethod: null == sortingMethod ? _self.sortingMethod : sortingMethod // ignore: cast_nullable_to_non_nullable
as RouteSortingMethodEntity,
  ));
}


}

/// @nodoc


class UpdateFiltersEvent implements RoutesEvent {
  const UpdateFiltersEvent({required final  List<RouteFilteringMethod> filteringMethods}): _filteringMethods = filteringMethods;
  

 final  List<RouteFilteringMethod> _filteringMethods;
 List<RouteFilteringMethod> get filteringMethods {
  if (_filteringMethods is EqualUnmodifiableListView) return _filteringMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteringMethods);
}


/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFiltersEventCopyWith<UpdateFiltersEvent> get copyWith => _$UpdateFiltersEventCopyWithImpl<UpdateFiltersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFiltersEvent&&const DeepCollectionEquality().equals(other._filteringMethods, _filteringMethods));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_filteringMethods));

@override
String toString() {
  return 'RoutesEvent.updateFilters(filteringMethods: $filteringMethods)';
}


}

/// @nodoc
abstract mixin class $UpdateFiltersEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateFiltersEventCopyWith(UpdateFiltersEvent value, $Res Function(UpdateFiltersEvent) _then) = _$UpdateFiltersEventCopyWithImpl;
@useResult
$Res call({
 List<RouteFilteringMethod> filteringMethods
});




}
/// @nodoc
class _$UpdateFiltersEventCopyWithImpl<$Res>
    implements $UpdateFiltersEventCopyWith<$Res> {
  _$UpdateFiltersEventCopyWithImpl(this._self, this._then);

  final UpdateFiltersEvent _self;
  final $Res Function(UpdateFiltersEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filteringMethods = null,}) {
  return _then(UpdateFiltersEvent(
filteringMethods: null == filteringMethods ? _self._filteringMethods : filteringMethods // ignore: cast_nullable_to_non_nullable
as List<RouteFilteringMethod>,
  ));
}


}

/// @nodoc


class RemoveFilterEvent implements RoutesEvent {
  const RemoveFilterEvent({required this.filterToRemove});
  

 final  RouteFilteringMethod filterToRemove;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFilterEventCopyWith<RemoveFilterEvent> get copyWith => _$RemoveFilterEventCopyWithImpl<RemoveFilterEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFilterEvent&&(identical(other.filterToRemove, filterToRemove) || other.filterToRemove == filterToRemove));
}


@override
int get hashCode => Object.hash(runtimeType,filterToRemove);

@override
String toString() {
  return 'RoutesEvent.removeFilter(filterToRemove: $filterToRemove)';
}


}

/// @nodoc
abstract mixin class $RemoveFilterEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $RemoveFilterEventCopyWith(RemoveFilterEvent value, $Res Function(RemoveFilterEvent) _then) = _$RemoveFilterEventCopyWithImpl;
@useResult
$Res call({
 RouteFilteringMethod filterToRemove
});


$RouteFilteringMethodCopyWith<$Res> get filterToRemove;

}
/// @nodoc
class _$RemoveFilterEventCopyWithImpl<$Res>
    implements $RemoveFilterEventCopyWith<$Res> {
  _$RemoveFilterEventCopyWithImpl(this._self, this._then);

  final RemoveFilterEvent _self;
  final $Res Function(RemoveFilterEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filterToRemove = null,}) {
  return _then(RemoveFilterEvent(
filterToRemove: null == filterToRemove ? _self.filterToRemove : filterToRemove // ignore: cast_nullable_to_non_nullable
as RouteFilteringMethod,
  ));
}

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouteFilteringMethodCopyWith<$Res> get filterToRemove {
  
  return $RouteFilteringMethodCopyWith<$Res>(_self.filterToRemove, (value) {
    return _then(_self.copyWith(filterToRemove: value));
  });
}
}

/// @nodoc


class UpdateSearchEvent implements RoutesEvent {
  const UpdateSearchEvent({required this.searchQuery});
  

 final  String searchQuery;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSearchEventCopyWith<UpdateSearchEvent> get copyWith => _$UpdateSearchEventCopyWithImpl<UpdateSearchEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSearchEvent&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery);

@override
String toString() {
  return 'RoutesEvent.updateSearch(searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $UpdateSearchEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateSearchEventCopyWith(UpdateSearchEvent value, $Res Function(UpdateSearchEvent) _then) = _$UpdateSearchEventCopyWithImpl;
@useResult
$Res call({
 String searchQuery
});




}
/// @nodoc
class _$UpdateSearchEventCopyWithImpl<$Res>
    implements $UpdateSearchEventCopyWith<$Res> {
  _$UpdateSearchEventCopyWithImpl(this._self, this._then);

  final UpdateSearchEvent _self;
  final $Res Function(UpdateSearchEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? searchQuery = null,}) {
  return _then(UpdateSearchEvent(
searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$RoutesState {

 List<RouteEntity> get routes; StateStatus get routesStatus; String? get routesErrorMessage; RouteSortingMethodEntity get sortingMethod; List<RouteFilteringMethod>? get filteringMethods; String get searchQuery;
/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesStateCopyWith<RoutesState> get copyWith => _$RoutesStateCopyWithImpl<RoutesState>(this as RoutesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesState&&const DeepCollectionEquality().equals(other.routes, routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage)&&(identical(other.sortingMethod, sortingMethod) || other.sortingMethod == sortingMethod)&&const DeepCollectionEquality().equals(other.filteringMethods, filteringMethods)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(routes),routesStatus,routesErrorMessage,sortingMethod,const DeepCollectionEquality().hash(filteringMethods),searchQuery);

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage, sortingMethod: $sortingMethod, filteringMethods: $filteringMethods, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class $RoutesStateCopyWith<$Res>  {
  factory $RoutesStateCopyWith(RoutesState value, $Res Function(RoutesState) _then) = _$RoutesStateCopyWithImpl;
@useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage, RouteSortingMethodEntity sortingMethod, List<RouteFilteringMethod>? filteringMethods, String searchQuery
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
@pragma('vm:prefer-inline') @override $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,Object? sortingMethod = null,Object? filteringMethods = freezed,Object? searchQuery = null,}) {
  return _then(_self.copyWith(
routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,sortingMethod: null == sortingMethod ? _self.sortingMethod : sortingMethod // ignore: cast_nullable_to_non_nullable
as RouteSortingMethodEntity,filteringMethods: freezed == filteringMethods ? _self.filteringMethods : filteringMethods // ignore: cast_nullable_to_non_nullable
as List<RouteFilteringMethod>?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  RouteSortingMethodEntity sortingMethod,  List<RouteFilteringMethod>? filteringMethods,  String searchQuery)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.sortingMethod,_that.filteringMethods,_that.searchQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  RouteSortingMethodEntity sortingMethod,  List<RouteFilteringMethod>? filteringMethods,  String searchQuery)  $default,) {final _that = this;
switch (_that) {
case _RoutesState():
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.sortingMethod,_that.filteringMethods,_that.searchQuery);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  RouteSortingMethodEntity sortingMethod,  List<RouteFilteringMethod>? filteringMethods,  String searchQuery)?  $default,) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.sortingMethod,_that.filteringMethods,_that.searchQuery);case _:
  return null;

}
}

}

/// @nodoc


class _RoutesState implements RoutesState {
  const _RoutesState({final  List<RouteEntity> routes = const [], this.routesStatus = StateStatus.initial, this.routesErrorMessage, this.sortingMethod = RouteSortingMethodEntity.distanceAscending, final  List<RouteFilteringMethod>? filteringMethods, this.searchQuery = ''}): _routes = routes,_filteringMethods = filteringMethods;
  

 final  List<RouteEntity> _routes;
@override@JsonKey() List<RouteEntity> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}

@override@JsonKey() final  StateStatus routesStatus;
@override final  String? routesErrorMessage;
@override@JsonKey() final  RouteSortingMethodEntity sortingMethod;
 final  List<RouteFilteringMethod>? _filteringMethods;
@override List<RouteFilteringMethod>? get filteringMethods {
  final value = _filteringMethods;
  if (value == null) return null;
  if (_filteringMethods is EqualUnmodifiableListView) return _filteringMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String searchQuery;

/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutesStateCopyWith<_RoutesState> get copyWith => __$RoutesStateCopyWithImpl<_RoutesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutesState&&const DeepCollectionEquality().equals(other._routes, _routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage)&&(identical(other.sortingMethod, sortingMethod) || other.sortingMethod == sortingMethod)&&const DeepCollectionEquality().equals(other._filteringMethods, _filteringMethods)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_routes),routesStatus,routesErrorMessage,sortingMethod,const DeepCollectionEquality().hash(_filteringMethods),searchQuery);

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage, sortingMethod: $sortingMethod, filteringMethods: $filteringMethods, searchQuery: $searchQuery)';
}


}

/// @nodoc
abstract mixin class _$RoutesStateCopyWith<$Res> implements $RoutesStateCopyWith<$Res> {
  factory _$RoutesStateCopyWith(_RoutesState value, $Res Function(_RoutesState) _then) = __$RoutesStateCopyWithImpl;
@override @useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage, RouteSortingMethodEntity sortingMethod, List<RouteFilteringMethod>? filteringMethods, String searchQuery
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
@override @pragma('vm:prefer-inline') $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,Object? sortingMethod = null,Object? filteringMethods = freezed,Object? searchQuery = null,}) {
  return _then(_RoutesState(
routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,sortingMethod: null == sortingMethod ? _self.sortingMethod : sortingMethod // ignore: cast_nullable_to_non_nullable
as RouteSortingMethodEntity,filteringMethods: freezed == filteringMethods ? _self._filteringMethods : filteringMethods // ignore: cast_nullable_to_non_nullable
as List<RouteFilteringMethod>?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
