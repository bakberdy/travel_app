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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetRoutesEvent value)?  getRoutes,TResult Function( UpdateSortingEvent value)?  updateSorting,TResult Function( UpdateSearchEvent value)?  updateSearch,TResult Function( UpdateFilteringCategoryEvent value)?  updateFilteringCategory,TResult Function( UpdateFilteringTypesEvent value)?  updateFilteringTypes,TResult Function( UpdateFilteringDifficultiesEvent value)?  updateFilteringDifficulties,TResult Function( UpdateDistanceRangeEvent value)?  updateDistanceRange,TResult Function( RemoveFilterEvent value)?  removeFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that);case UpdateFilteringCategoryEvent() when updateFilteringCategory != null:
return updateFilteringCategory(_that);case UpdateFilteringTypesEvent() when updateFilteringTypes != null:
return updateFilteringTypes(_that);case UpdateFilteringDifficultiesEvent() when updateFilteringDifficulties != null:
return updateFilteringDifficulties(_that);case UpdateDistanceRangeEvent() when updateDistanceRange != null:
return updateDistanceRange(_that);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetRoutesEvent value)  getRoutes,required TResult Function( UpdateSortingEvent value)  updateSorting,required TResult Function( UpdateSearchEvent value)  updateSearch,required TResult Function( UpdateFilteringCategoryEvent value)  updateFilteringCategory,required TResult Function( UpdateFilteringTypesEvent value)  updateFilteringTypes,required TResult Function( UpdateFilteringDifficultiesEvent value)  updateFilteringDifficulties,required TResult Function( UpdateDistanceRangeEvent value)  updateDistanceRange,required TResult Function( RemoveFilterEvent value)  removeFilter,}){
final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that);case UpdateSortingEvent():
return updateSorting(_that);case UpdateSearchEvent():
return updateSearch(_that);case UpdateFilteringCategoryEvent():
return updateFilteringCategory(_that);case UpdateFilteringTypesEvent():
return updateFilteringTypes(_that);case UpdateFilteringDifficultiesEvent():
return updateFilteringDifficulties(_that);case UpdateDistanceRangeEvent():
return updateDistanceRange(_that);case RemoveFilterEvent():
return removeFilter(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetRoutesEvent value)?  getRoutes,TResult? Function( UpdateSortingEvent value)?  updateSorting,TResult? Function( UpdateSearchEvent value)?  updateSearch,TResult? Function( UpdateFilteringCategoryEvent value)?  updateFilteringCategory,TResult? Function( UpdateFilteringTypesEvent value)?  updateFilteringTypes,TResult? Function( UpdateFilteringDifficultiesEvent value)?  updateFilteringDifficulties,TResult? Function( UpdateDistanceRangeEvent value)?  updateDistanceRange,TResult? Function( RemoveFilterEvent value)?  removeFilter,}){
final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that);case UpdateFilteringCategoryEvent() when updateFilteringCategory != null:
return updateFilteringCategory(_that);case UpdateFilteringTypesEvent() when updateFilteringTypes != null:
return updateFilteringTypes(_that);case UpdateFilteringDifficultiesEvent() when updateFilteringDifficulties != null:
return updateFilteringDifficulties(_that);case UpdateDistanceRangeEvent() when updateDistanceRange != null:
return updateDistanceRange(_that);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( GetRouteRequestParametersEntity params)?  getRoutes,TResult Function( RouteSortingMethodEntity sortingMethod)?  updateSorting,TResult Function( String searchQuery)?  updateSearch,TResult Function( RouteCategoryEntity? category)?  updateFilteringCategory,TResult Function( Set<RouteTypeEntity>? types)?  updateFilteringTypes,TResult Function( Set<RouteDifficultyEntity>? difficulties)?  updateFilteringDifficulties,TResult Function( double? minKm,  double? maxKm)?  updateDistanceRange,TResult Function( FilterEntity filter)?  removeFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that.sortingMethod);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that.searchQuery);case UpdateFilteringCategoryEvent() when updateFilteringCategory != null:
return updateFilteringCategory(_that.category);case UpdateFilteringTypesEvent() when updateFilteringTypes != null:
return updateFilteringTypes(_that.types);case UpdateFilteringDifficultiesEvent() when updateFilteringDifficulties != null:
return updateFilteringDifficulties(_that.difficulties);case UpdateDistanceRangeEvent() when updateDistanceRange != null:
return updateDistanceRange(_that.minKm,_that.maxKm);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that.filter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( GetRouteRequestParametersEntity params)  getRoutes,required TResult Function( RouteSortingMethodEntity sortingMethod)  updateSorting,required TResult Function( String searchQuery)  updateSearch,required TResult Function( RouteCategoryEntity? category)  updateFilteringCategory,required TResult Function( Set<RouteTypeEntity>? types)  updateFilteringTypes,required TResult Function( Set<RouteDifficultyEntity>? difficulties)  updateFilteringDifficulties,required TResult Function( double? minKm,  double? maxKm)  updateDistanceRange,required TResult Function( FilterEntity filter)  removeFilter,}) {final _that = this;
switch (_that) {
case GetRoutesEvent():
return getRoutes(_that.params);case UpdateSortingEvent():
return updateSorting(_that.sortingMethod);case UpdateSearchEvent():
return updateSearch(_that.searchQuery);case UpdateFilteringCategoryEvent():
return updateFilteringCategory(_that.category);case UpdateFilteringTypesEvent():
return updateFilteringTypes(_that.types);case UpdateFilteringDifficultiesEvent():
return updateFilteringDifficulties(_that.difficulties);case UpdateDistanceRangeEvent():
return updateDistanceRange(_that.minKm,_that.maxKm);case RemoveFilterEvent():
return removeFilter(_that.filter);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( GetRouteRequestParametersEntity params)?  getRoutes,TResult? Function( RouteSortingMethodEntity sortingMethod)?  updateSorting,TResult? Function( String searchQuery)?  updateSearch,TResult? Function( RouteCategoryEntity? category)?  updateFilteringCategory,TResult? Function( Set<RouteTypeEntity>? types)?  updateFilteringTypes,TResult? Function( Set<RouteDifficultyEntity>? difficulties)?  updateFilteringDifficulties,TResult? Function( double? minKm,  double? maxKm)?  updateDistanceRange,TResult? Function( FilterEntity filter)?  removeFilter,}) {final _that = this;
switch (_that) {
case GetRoutesEvent() when getRoutes != null:
return getRoutes(_that.params);case UpdateSortingEvent() when updateSorting != null:
return updateSorting(_that.sortingMethod);case UpdateSearchEvent() when updateSearch != null:
return updateSearch(_that.searchQuery);case UpdateFilteringCategoryEvent() when updateFilteringCategory != null:
return updateFilteringCategory(_that.category);case UpdateFilteringTypesEvent() when updateFilteringTypes != null:
return updateFilteringTypes(_that.types);case UpdateFilteringDifficultiesEvent() when updateFilteringDifficulties != null:
return updateFilteringDifficulties(_that.difficulties);case UpdateDistanceRangeEvent() when updateDistanceRange != null:
return updateDistanceRange(_that.minKm,_that.maxKm);case RemoveFilterEvent() when removeFilter != null:
return removeFilter(_that.filter);case _:
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


class UpdateFilteringCategoryEvent implements RoutesEvent {
  const UpdateFilteringCategoryEvent({required this.category});
  

 final  RouteCategoryEntity? category;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFilteringCategoryEventCopyWith<UpdateFilteringCategoryEvent> get copyWith => _$UpdateFilteringCategoryEventCopyWithImpl<UpdateFilteringCategoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFilteringCategoryEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'RoutesEvent.updateFilteringCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $UpdateFilteringCategoryEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateFilteringCategoryEventCopyWith(UpdateFilteringCategoryEvent value, $Res Function(UpdateFilteringCategoryEvent) _then) = _$UpdateFilteringCategoryEventCopyWithImpl;
@useResult
$Res call({
 RouteCategoryEntity? category
});




}
/// @nodoc
class _$UpdateFilteringCategoryEventCopyWithImpl<$Res>
    implements $UpdateFilteringCategoryEventCopyWith<$Res> {
  _$UpdateFilteringCategoryEventCopyWithImpl(this._self, this._then);

  final UpdateFilteringCategoryEvent _self;
  final $Res Function(UpdateFilteringCategoryEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = freezed,}) {
  return _then(UpdateFilteringCategoryEvent(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as RouteCategoryEntity?,
  ));
}


}

/// @nodoc


class UpdateFilteringTypesEvent implements RoutesEvent {
  const UpdateFilteringTypesEvent({required final  Set<RouteTypeEntity>? types}): _types = types;
  

 final  Set<RouteTypeEntity>? _types;
 Set<RouteTypeEntity>? get types {
  final value = _types;
  if (value == null) return null;
  if (_types is EqualUnmodifiableSetView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFilteringTypesEventCopyWith<UpdateFilteringTypesEvent> get copyWith => _$UpdateFilteringTypesEventCopyWithImpl<UpdateFilteringTypesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFilteringTypesEvent&&const DeepCollectionEquality().equals(other._types, _types));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'RoutesEvent.updateFilteringTypes(types: $types)';
}


}

/// @nodoc
abstract mixin class $UpdateFilteringTypesEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateFilteringTypesEventCopyWith(UpdateFilteringTypesEvent value, $Res Function(UpdateFilteringTypesEvent) _then) = _$UpdateFilteringTypesEventCopyWithImpl;
@useResult
$Res call({
 Set<RouteTypeEntity>? types
});




}
/// @nodoc
class _$UpdateFilteringTypesEventCopyWithImpl<$Res>
    implements $UpdateFilteringTypesEventCopyWith<$Res> {
  _$UpdateFilteringTypesEventCopyWithImpl(this._self, this._then);

  final UpdateFilteringTypesEvent _self;
  final $Res Function(UpdateFilteringTypesEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? types = freezed,}) {
  return _then(UpdateFilteringTypesEvent(
types: freezed == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as Set<RouteTypeEntity>?,
  ));
}


}

/// @nodoc


class UpdateFilteringDifficultiesEvent implements RoutesEvent {
  const UpdateFilteringDifficultiesEvent({required final  Set<RouteDifficultyEntity>? difficulties}): _difficulties = difficulties;
  

 final  Set<RouteDifficultyEntity>? _difficulties;
 Set<RouteDifficultyEntity>? get difficulties {
  final value = _difficulties;
  if (value == null) return null;
  if (_difficulties is EqualUnmodifiableSetView) return _difficulties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateFilteringDifficultiesEventCopyWith<UpdateFilteringDifficultiesEvent> get copyWith => _$UpdateFilteringDifficultiesEventCopyWithImpl<UpdateFilteringDifficultiesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateFilteringDifficultiesEvent&&const DeepCollectionEquality().equals(other._difficulties, _difficulties));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_difficulties));

@override
String toString() {
  return 'RoutesEvent.updateFilteringDifficulties(difficulties: $difficulties)';
}


}

/// @nodoc
abstract mixin class $UpdateFilteringDifficultiesEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateFilteringDifficultiesEventCopyWith(UpdateFilteringDifficultiesEvent value, $Res Function(UpdateFilteringDifficultiesEvent) _then) = _$UpdateFilteringDifficultiesEventCopyWithImpl;
@useResult
$Res call({
 Set<RouteDifficultyEntity>? difficulties
});




}
/// @nodoc
class _$UpdateFilteringDifficultiesEventCopyWithImpl<$Res>
    implements $UpdateFilteringDifficultiesEventCopyWith<$Res> {
  _$UpdateFilteringDifficultiesEventCopyWithImpl(this._self, this._then);

  final UpdateFilteringDifficultiesEvent _self;
  final $Res Function(UpdateFilteringDifficultiesEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? difficulties = freezed,}) {
  return _then(UpdateFilteringDifficultiesEvent(
difficulties: freezed == difficulties ? _self._difficulties : difficulties // ignore: cast_nullable_to_non_nullable
as Set<RouteDifficultyEntity>?,
  ));
}


}

/// @nodoc


class UpdateDistanceRangeEvent implements RoutesEvent {
  const UpdateDistanceRangeEvent(this.minKm, this.maxKm);
  

 final  double? minKm;
 final  double? maxKm;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDistanceRangeEventCopyWith<UpdateDistanceRangeEvent> get copyWith => _$UpdateDistanceRangeEventCopyWithImpl<UpdateDistanceRangeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDistanceRangeEvent&&(identical(other.minKm, minKm) || other.minKm == minKm)&&(identical(other.maxKm, maxKm) || other.maxKm == maxKm));
}


@override
int get hashCode => Object.hash(runtimeType,minKm,maxKm);

@override
String toString() {
  return 'RoutesEvent.updateDistanceRange(minKm: $minKm, maxKm: $maxKm)';
}


}

/// @nodoc
abstract mixin class $UpdateDistanceRangeEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $UpdateDistanceRangeEventCopyWith(UpdateDistanceRangeEvent value, $Res Function(UpdateDistanceRangeEvent) _then) = _$UpdateDistanceRangeEventCopyWithImpl;
@useResult
$Res call({
 double? minKm, double? maxKm
});




}
/// @nodoc
class _$UpdateDistanceRangeEventCopyWithImpl<$Res>
    implements $UpdateDistanceRangeEventCopyWith<$Res> {
  _$UpdateDistanceRangeEventCopyWithImpl(this._self, this._then);

  final UpdateDistanceRangeEvent _self;
  final $Res Function(UpdateDistanceRangeEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minKm = freezed,Object? maxKm = freezed,}) {
  return _then(UpdateDistanceRangeEvent(
freezed == minKm ? _self.minKm : minKm // ignore: cast_nullable_to_non_nullable
as double?,freezed == maxKm ? _self.maxKm : maxKm // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class RemoveFilterEvent implements RoutesEvent {
  const RemoveFilterEvent(this.filter);
  

 final  FilterEntity filter;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveFilterEventCopyWith<RemoveFilterEvent> get copyWith => _$RemoveFilterEventCopyWithImpl<RemoveFilterEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveFilterEvent&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'RoutesEvent.removeFilter(filter: $filter)';
}


}

/// @nodoc
abstract mixin class $RemoveFilterEventCopyWith<$Res> implements $RoutesEventCopyWith<$Res> {
  factory $RemoveFilterEventCopyWith(RemoveFilterEvent value, $Res Function(RemoveFilterEvent) _then) = _$RemoveFilterEventCopyWithImpl;
@useResult
$Res call({
 FilterEntity filter
});




}
/// @nodoc
class _$RemoveFilterEventCopyWithImpl<$Res>
    implements $RemoveFilterEventCopyWith<$Res> {
  _$RemoveFilterEventCopyWithImpl(this._self, this._then);

  final RemoveFilterEvent _self;
  final $Res Function(RemoveFilterEvent) _then;

/// Create a copy of RoutesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(RemoveFilterEvent(
null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as FilterEntity,
  ));
}


}

/// @nodoc
mixin _$RoutesState {

 List<RouteEntity> get routes; StateStatus get routesStatus; String? get routesErrorMessage; String get searchQuery; RouteSortingMethodEntity get sortingMethod; RouteCategoryEntity? get filteringCategory; Set<RouteTypeEntity>? get filteringTypes; Set<RouteDifficultyEntity>? get filteringDifficulties; double? get minKm; double? get maxKm; List<FilterEntity> get filters;
/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutesStateCopyWith<RoutesState> get copyWith => _$RoutesStateCopyWithImpl<RoutesState>(this as RoutesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutesState&&const DeepCollectionEquality().equals(other.routes, routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sortingMethod, sortingMethod) || other.sortingMethod == sortingMethod)&&(identical(other.filteringCategory, filteringCategory) || other.filteringCategory == filteringCategory)&&const DeepCollectionEquality().equals(other.filteringTypes, filteringTypes)&&const DeepCollectionEquality().equals(other.filteringDifficulties, filteringDifficulties)&&(identical(other.minKm, minKm) || other.minKm == minKm)&&(identical(other.maxKm, maxKm) || other.maxKm == maxKm)&&const DeepCollectionEquality().equals(other.filters, filters));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(routes),routesStatus,routesErrorMessage,searchQuery,sortingMethod,filteringCategory,const DeepCollectionEquality().hash(filteringTypes),const DeepCollectionEquality().hash(filteringDifficulties),minKm,maxKm,const DeepCollectionEquality().hash(filters));

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage, searchQuery: $searchQuery, sortingMethod: $sortingMethod, filteringCategory: $filteringCategory, filteringTypes: $filteringTypes, filteringDifficulties: $filteringDifficulties, minKm: $minKm, maxKm: $maxKm, filters: $filters)';
}


}

/// @nodoc
abstract mixin class $RoutesStateCopyWith<$Res>  {
  factory $RoutesStateCopyWith(RoutesState value, $Res Function(RoutesState) _then) = _$RoutesStateCopyWithImpl;
@useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage, String searchQuery, RouteSortingMethodEntity sortingMethod, RouteCategoryEntity? filteringCategory, Set<RouteTypeEntity>? filteringTypes, Set<RouteDifficultyEntity>? filteringDifficulties, double? minKm, double? maxKm, List<FilterEntity> filters
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
@pragma('vm:prefer-inline') @override $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,Object? searchQuery = null,Object? sortingMethod = null,Object? filteringCategory = freezed,Object? filteringTypes = freezed,Object? filteringDifficulties = freezed,Object? minKm = freezed,Object? maxKm = freezed,Object? filters = null,}) {
  return _then(_self.copyWith(
routes: null == routes ? _self.routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sortingMethod: null == sortingMethod ? _self.sortingMethod : sortingMethod // ignore: cast_nullable_to_non_nullable
as RouteSortingMethodEntity,filteringCategory: freezed == filteringCategory ? _self.filteringCategory : filteringCategory // ignore: cast_nullable_to_non_nullable
as RouteCategoryEntity?,filteringTypes: freezed == filteringTypes ? _self.filteringTypes : filteringTypes // ignore: cast_nullable_to_non_nullable
as Set<RouteTypeEntity>?,filteringDifficulties: freezed == filteringDifficulties ? _self.filteringDifficulties : filteringDifficulties // ignore: cast_nullable_to_non_nullable
as Set<RouteDifficultyEntity>?,minKm: freezed == minKm ? _self.minKm : minKm // ignore: cast_nullable_to_non_nullable
as double?,maxKm: freezed == maxKm ? _self.maxKm : maxKm // ignore: cast_nullable_to_non_nullable
as double?,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as List<FilterEntity>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  String searchQuery,  RouteSortingMethodEntity sortingMethod,  RouteCategoryEntity? filteringCategory,  Set<RouteTypeEntity>? filteringTypes,  Set<RouteDifficultyEntity>? filteringDifficulties,  double? minKm,  double? maxKm,  List<FilterEntity> filters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.searchQuery,_that.sortingMethod,_that.filteringCategory,_that.filteringTypes,_that.filteringDifficulties,_that.minKm,_that.maxKm,_that.filters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  String searchQuery,  RouteSortingMethodEntity sortingMethod,  RouteCategoryEntity? filteringCategory,  Set<RouteTypeEntity>? filteringTypes,  Set<RouteDifficultyEntity>? filteringDifficulties,  double? minKm,  double? maxKm,  List<FilterEntity> filters)  $default,) {final _that = this;
switch (_that) {
case _RoutesState():
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.searchQuery,_that.sortingMethod,_that.filteringCategory,_that.filteringTypes,_that.filteringDifficulties,_that.minKm,_that.maxKm,_that.filters);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RouteEntity> routes,  StateStatus routesStatus,  String? routesErrorMessage,  String searchQuery,  RouteSortingMethodEntity sortingMethod,  RouteCategoryEntity? filteringCategory,  Set<RouteTypeEntity>? filteringTypes,  Set<RouteDifficultyEntity>? filteringDifficulties,  double? minKm,  double? maxKm,  List<FilterEntity> filters)?  $default,) {final _that = this;
switch (_that) {
case _RoutesState() when $default != null:
return $default(_that.routes,_that.routesStatus,_that.routesErrorMessage,_that.searchQuery,_that.sortingMethod,_that.filteringCategory,_that.filteringTypes,_that.filteringDifficulties,_that.minKm,_that.maxKm,_that.filters);case _:
  return null;

}
}

}

/// @nodoc


class _RoutesState implements RoutesState {
  const _RoutesState({final  List<RouteEntity> routes = const [], this.routesStatus = StateStatus.initial, this.routesErrorMessage, this.searchQuery = '', this.sortingMethod = RouteSortingMethodEntity.distanceAscending, this.filteringCategory, final  Set<RouteTypeEntity>? filteringTypes, final  Set<RouteDifficultyEntity>? filteringDifficulties, this.minKm, this.maxKm, final  List<FilterEntity> filters = const []}): _routes = routes,_filteringTypes = filteringTypes,_filteringDifficulties = filteringDifficulties,_filters = filters;
  

 final  List<RouteEntity> _routes;
@override@JsonKey() List<RouteEntity> get routes {
  if (_routes is EqualUnmodifiableListView) return _routes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routes);
}

@override@JsonKey() final  StateStatus routesStatus;
@override final  String? routesErrorMessage;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  RouteSortingMethodEntity sortingMethod;
@override final  RouteCategoryEntity? filteringCategory;
 final  Set<RouteTypeEntity>? _filteringTypes;
@override Set<RouteTypeEntity>? get filteringTypes {
  final value = _filteringTypes;
  if (value == null) return null;
  if (_filteringTypes is EqualUnmodifiableSetView) return _filteringTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

 final  Set<RouteDifficultyEntity>? _filteringDifficulties;
@override Set<RouteDifficultyEntity>? get filteringDifficulties {
  final value = _filteringDifficulties;
  if (value == null) return null;
  if (_filteringDifficulties is EqualUnmodifiableSetView) return _filteringDifficulties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}

@override final  double? minKm;
@override final  double? maxKm;
 final  List<FilterEntity> _filters;
@override@JsonKey() List<FilterEntity> get filters {
  if (_filters is EqualUnmodifiableListView) return _filters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filters);
}


/// Create a copy of RoutesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutesStateCopyWith<_RoutesState> get copyWith => __$RoutesStateCopyWithImpl<_RoutesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutesState&&const DeepCollectionEquality().equals(other._routes, _routes)&&(identical(other.routesStatus, routesStatus) || other.routesStatus == routesStatus)&&(identical(other.routesErrorMessage, routesErrorMessage) || other.routesErrorMessage == routesErrorMessage)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.sortingMethod, sortingMethod) || other.sortingMethod == sortingMethod)&&(identical(other.filteringCategory, filteringCategory) || other.filteringCategory == filteringCategory)&&const DeepCollectionEquality().equals(other._filteringTypes, _filteringTypes)&&const DeepCollectionEquality().equals(other._filteringDifficulties, _filteringDifficulties)&&(identical(other.minKm, minKm) || other.minKm == minKm)&&(identical(other.maxKm, maxKm) || other.maxKm == maxKm)&&const DeepCollectionEquality().equals(other._filters, _filters));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_routes),routesStatus,routesErrorMessage,searchQuery,sortingMethod,filteringCategory,const DeepCollectionEquality().hash(_filteringTypes),const DeepCollectionEquality().hash(_filteringDifficulties),minKm,maxKm,const DeepCollectionEquality().hash(_filters));

@override
String toString() {
  return 'RoutesState(routes: $routes, routesStatus: $routesStatus, routesErrorMessage: $routesErrorMessage, searchQuery: $searchQuery, sortingMethod: $sortingMethod, filteringCategory: $filteringCategory, filteringTypes: $filteringTypes, filteringDifficulties: $filteringDifficulties, minKm: $minKm, maxKm: $maxKm, filters: $filters)';
}


}

/// @nodoc
abstract mixin class _$RoutesStateCopyWith<$Res> implements $RoutesStateCopyWith<$Res> {
  factory _$RoutesStateCopyWith(_RoutesState value, $Res Function(_RoutesState) _then) = __$RoutesStateCopyWithImpl;
@override @useResult
$Res call({
 List<RouteEntity> routes, StateStatus routesStatus, String? routesErrorMessage, String searchQuery, RouteSortingMethodEntity sortingMethod, RouteCategoryEntity? filteringCategory, Set<RouteTypeEntity>? filteringTypes, Set<RouteDifficultyEntity>? filteringDifficulties, double? minKm, double? maxKm, List<FilterEntity> filters
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
@override @pragma('vm:prefer-inline') $Res call({Object? routes = null,Object? routesStatus = null,Object? routesErrorMessage = freezed,Object? searchQuery = null,Object? sortingMethod = null,Object? filteringCategory = freezed,Object? filteringTypes = freezed,Object? filteringDifficulties = freezed,Object? minKm = freezed,Object? maxKm = freezed,Object? filters = null,}) {
  return _then(_RoutesState(
routes: null == routes ? _self._routes : routes // ignore: cast_nullable_to_non_nullable
as List<RouteEntity>,routesStatus: null == routesStatus ? _self.routesStatus : routesStatus // ignore: cast_nullable_to_non_nullable
as StateStatus,routesErrorMessage: freezed == routesErrorMessage ? _self.routesErrorMessage : routesErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,sortingMethod: null == sortingMethod ? _self.sortingMethod : sortingMethod // ignore: cast_nullable_to_non_nullable
as RouteSortingMethodEntity,filteringCategory: freezed == filteringCategory ? _self.filteringCategory : filteringCategory // ignore: cast_nullable_to_non_nullable
as RouteCategoryEntity?,filteringTypes: freezed == filteringTypes ? _self._filteringTypes : filteringTypes // ignore: cast_nullable_to_non_nullable
as Set<RouteTypeEntity>?,filteringDifficulties: freezed == filteringDifficulties ? _self._filteringDifficulties : filteringDifficulties // ignore: cast_nullable_to_non_nullable
as Set<RouteDifficultyEntity>?,minKm: freezed == minKm ? _self.minKm : minKm // ignore: cast_nullable_to_non_nullable
as double?,maxKm: freezed == maxKm ? _self.maxKm : maxKm // ignore: cast_nullable_to_non_nullable
as double?,filters: null == filters ? _self._filters : filters // ignore: cast_nullable_to_non_nullable
as List<FilterEntity>,
  ));
}


}

// dart format on
