// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FiltersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FiltersEvent()';
}


}

/// @nodoc
class $FiltersEventCopyWith<$Res>  {
$FiltersEventCopyWith(FiltersEvent _, $Res Function(FiltersEvent) __);
}


/// Adds pattern-matching-related methods to [FiltersEvent].
extension FiltersEventPatterns on FiltersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SetOrganizerFilter value)?  setOrganizerFilter,TResult Function( _SetLocationFilter value)?  setLocationFilter,TResult Function( _SetSortByDeadline value)?  setSortByDeadline,TResult Function( _Apply value)?  apply,TResult Function( _ClearFilters value)?  clear,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetOrganizerFilter() when setOrganizerFilter != null:
return setOrganizerFilter(_that);case _SetLocationFilter() when setLocationFilter != null:
return setLocationFilter(_that);case _SetSortByDeadline() when setSortByDeadline != null:
return setSortByDeadline(_that);case _Apply() when apply != null:
return apply(_that);case _ClearFilters() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SetOrganizerFilter value)  setOrganizerFilter,required TResult Function( _SetLocationFilter value)  setLocationFilter,required TResult Function( _SetSortByDeadline value)  setSortByDeadline,required TResult Function( _Apply value)  apply,required TResult Function( _ClearFilters value)  clear,}){
final _that = this;
switch (_that) {
case _SetOrganizerFilter():
return setOrganizerFilter(_that);case _SetLocationFilter():
return setLocationFilter(_that);case _SetSortByDeadline():
return setSortByDeadline(_that);case _Apply():
return apply(_that);case _ClearFilters():
return clear(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SetOrganizerFilter value)?  setOrganizerFilter,TResult? Function( _SetLocationFilter value)?  setLocationFilter,TResult? Function( _SetSortByDeadline value)?  setSortByDeadline,TResult? Function( _Apply value)?  apply,TResult? Function( _ClearFilters value)?  clear,}){
final _that = this;
switch (_that) {
case _SetOrganizerFilter() when setOrganizerFilter != null:
return setOrganizerFilter(_that);case _SetLocationFilter() when setLocationFilter != null:
return setLocationFilter(_that);case _SetSortByDeadline() when setSortByDeadline != null:
return setSortByDeadline(_that);case _Apply() when apply != null:
return apply(_that);case _ClearFilters() when clear != null:
return clear(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? organizer)?  setOrganizerFilter,TResult Function( String? location)?  setLocationFilter,TResult Function( bool ascending)?  setSortByDeadline,TResult Function( List<ScholarshipEntity> allScholarships)?  apply,TResult Function()?  clear,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetOrganizerFilter() when setOrganizerFilter != null:
return setOrganizerFilter(_that.organizer);case _SetLocationFilter() when setLocationFilter != null:
return setLocationFilter(_that.location);case _SetSortByDeadline() when setSortByDeadline != null:
return setSortByDeadline(_that.ascending);case _Apply() when apply != null:
return apply(_that.allScholarships);case _ClearFilters() when clear != null:
return clear();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? organizer)  setOrganizerFilter,required TResult Function( String? location)  setLocationFilter,required TResult Function( bool ascending)  setSortByDeadline,required TResult Function( List<ScholarshipEntity> allScholarships)  apply,required TResult Function()  clear,}) {final _that = this;
switch (_that) {
case _SetOrganizerFilter():
return setOrganizerFilter(_that.organizer);case _SetLocationFilter():
return setLocationFilter(_that.location);case _SetSortByDeadline():
return setSortByDeadline(_that.ascending);case _Apply():
return apply(_that.allScholarships);case _ClearFilters():
return clear();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? organizer)?  setOrganizerFilter,TResult? Function( String? location)?  setLocationFilter,TResult? Function( bool ascending)?  setSortByDeadline,TResult? Function( List<ScholarshipEntity> allScholarships)?  apply,TResult? Function()?  clear,}) {final _that = this;
switch (_that) {
case _SetOrganizerFilter() when setOrganizerFilter != null:
return setOrganizerFilter(_that.organizer);case _SetLocationFilter() when setLocationFilter != null:
return setLocationFilter(_that.location);case _SetSortByDeadline() when setSortByDeadline != null:
return setSortByDeadline(_that.ascending);case _Apply() when apply != null:
return apply(_that.allScholarships);case _ClearFilters() when clear != null:
return clear();case _:
  return null;

}
}

}

/// @nodoc


class _SetOrganizerFilter implements FiltersEvent {
  const _SetOrganizerFilter(this.organizer);
  

 final  String? organizer;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetOrganizerFilterCopyWith<_SetOrganizerFilter> get copyWith => __$SetOrganizerFilterCopyWithImpl<_SetOrganizerFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetOrganizerFilter&&(identical(other.organizer, organizer) || other.organizer == organizer));
}


@override
int get hashCode => Object.hash(runtimeType,organizer);

@override
String toString() {
  return 'FiltersEvent.setOrganizerFilter(organizer: $organizer)';
}


}

/// @nodoc
abstract mixin class _$SetOrganizerFilterCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory _$SetOrganizerFilterCopyWith(_SetOrganizerFilter value, $Res Function(_SetOrganizerFilter) _then) = __$SetOrganizerFilterCopyWithImpl;
@useResult
$Res call({
 String? organizer
});




}
/// @nodoc
class __$SetOrganizerFilterCopyWithImpl<$Res>
    implements _$SetOrganizerFilterCopyWith<$Res> {
  __$SetOrganizerFilterCopyWithImpl(this._self, this._then);

  final _SetOrganizerFilter _self;
  final $Res Function(_SetOrganizerFilter) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? organizer = freezed,}) {
  return _then(_SetOrganizerFilter(
freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SetLocationFilter implements FiltersEvent {
  const _SetLocationFilter(this.location);
  

 final  String? location;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetLocationFilterCopyWith<_SetLocationFilter> get copyWith => __$SetLocationFilterCopyWithImpl<_SetLocationFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetLocationFilter&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'FiltersEvent.setLocationFilter(location: $location)';
}


}

/// @nodoc
abstract mixin class _$SetLocationFilterCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory _$SetLocationFilterCopyWith(_SetLocationFilter value, $Res Function(_SetLocationFilter) _then) = __$SetLocationFilterCopyWithImpl;
@useResult
$Res call({
 String? location
});




}
/// @nodoc
class __$SetLocationFilterCopyWithImpl<$Res>
    implements _$SetLocationFilterCopyWith<$Res> {
  __$SetLocationFilterCopyWithImpl(this._self, this._then);

  final _SetLocationFilter _self;
  final $Res Function(_SetLocationFilter) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = freezed,}) {
  return _then(_SetLocationFilter(
freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _SetSortByDeadline implements FiltersEvent {
  const _SetSortByDeadline(this.ascending);
  

 final  bool ascending;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetSortByDeadlineCopyWith<_SetSortByDeadline> get copyWith => __$SetSortByDeadlineCopyWithImpl<_SetSortByDeadline>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetSortByDeadline&&(identical(other.ascending, ascending) || other.ascending == ascending));
}


@override
int get hashCode => Object.hash(runtimeType,ascending);

@override
String toString() {
  return 'FiltersEvent.setSortByDeadline(ascending: $ascending)';
}


}

/// @nodoc
abstract mixin class _$SetSortByDeadlineCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory _$SetSortByDeadlineCopyWith(_SetSortByDeadline value, $Res Function(_SetSortByDeadline) _then) = __$SetSortByDeadlineCopyWithImpl;
@useResult
$Res call({
 bool ascending
});




}
/// @nodoc
class __$SetSortByDeadlineCopyWithImpl<$Res>
    implements _$SetSortByDeadlineCopyWith<$Res> {
  __$SetSortByDeadlineCopyWithImpl(this._self, this._then);

  final _SetSortByDeadline _self;
  final $Res Function(_SetSortByDeadline) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ascending = null,}) {
  return _then(_SetSortByDeadline(
null == ascending ? _self.ascending : ascending // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Apply implements FiltersEvent {
  const _Apply(final  List<ScholarshipEntity> allScholarships): _allScholarships = allScholarships;
  

 final  List<ScholarshipEntity> _allScholarships;
 List<ScholarshipEntity> get allScholarships {
  if (_allScholarships is EqualUnmodifiableListView) return _allScholarships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allScholarships);
}


/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplyCopyWith<_Apply> get copyWith => __$ApplyCopyWithImpl<_Apply>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Apply&&const DeepCollectionEquality().equals(other._allScholarships, _allScholarships));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allScholarships));

@override
String toString() {
  return 'FiltersEvent.apply(allScholarships: $allScholarships)';
}


}

/// @nodoc
abstract mixin class _$ApplyCopyWith<$Res> implements $FiltersEventCopyWith<$Res> {
  factory _$ApplyCopyWith(_Apply value, $Res Function(_Apply) _then) = __$ApplyCopyWithImpl;
@useResult
$Res call({
 List<ScholarshipEntity> allScholarships
});




}
/// @nodoc
class __$ApplyCopyWithImpl<$Res>
    implements _$ApplyCopyWith<$Res> {
  __$ApplyCopyWithImpl(this._self, this._then);

  final _Apply _self;
  final $Res Function(_Apply) _then;

/// Create a copy of FiltersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? allScholarships = null,}) {
  return _then(_Apply(
null == allScholarships ? _self._allScholarships : allScholarships // ignore: cast_nullable_to_non_nullable
as List<ScholarshipEntity>,
  ));
}


}

/// @nodoc


class _ClearFilters implements FiltersEvent {
  const _ClearFilters();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClearFilters);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FiltersEvent.clear()';
}


}




/// @nodoc
mixin _$FiltersState {

 List<ScholarshipEntity> get filtered; bool get sortByDeadlineAsc; bool get filtresApplied; String? get organizer; String? get location;
/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FiltersStateCopyWith<FiltersState> get copyWith => _$FiltersStateCopyWithImpl<FiltersState>(this as FiltersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FiltersState&&const DeepCollectionEquality().equals(other.filtered, filtered)&&(identical(other.sortByDeadlineAsc, sortByDeadlineAsc) || other.sortByDeadlineAsc == sortByDeadlineAsc)&&(identical(other.filtresApplied, filtresApplied) || other.filtresApplied == filtresApplied)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(filtered),sortByDeadlineAsc,filtresApplied,organizer,location);

@override
String toString() {
  return 'FiltersState(filtered: $filtered, sortByDeadlineAsc: $sortByDeadlineAsc, filtresApplied: $filtresApplied, organizer: $organizer, location: $location)';
}


}

/// @nodoc
abstract mixin class $FiltersStateCopyWith<$Res>  {
  factory $FiltersStateCopyWith(FiltersState value, $Res Function(FiltersState) _then) = _$FiltersStateCopyWithImpl;
@useResult
$Res call({
 List<ScholarshipEntity> filtered, bool sortByDeadlineAsc, bool filtresApplied, String? organizer, String? location
});




}
/// @nodoc
class _$FiltersStateCopyWithImpl<$Res>
    implements $FiltersStateCopyWith<$Res> {
  _$FiltersStateCopyWithImpl(this._self, this._then);

  final FiltersState _self;
  final $Res Function(FiltersState) _then;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filtered = null,Object? sortByDeadlineAsc = null,Object? filtresApplied = null,Object? organizer = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
filtered: null == filtered ? _self.filtered : filtered // ignore: cast_nullable_to_non_nullable
as List<ScholarshipEntity>,sortByDeadlineAsc: null == sortByDeadlineAsc ? _self.sortByDeadlineAsc : sortByDeadlineAsc // ignore: cast_nullable_to_non_nullable
as bool,filtresApplied: null == filtresApplied ? _self.filtresApplied : filtresApplied // ignore: cast_nullable_to_non_nullable
as bool,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FiltersState].
extension FiltersStatePatterns on FiltersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FiltersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FiltersState value)  $default,){
final _that = this;
switch (_that) {
case _FiltersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FiltersState value)?  $default,){
final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ScholarshipEntity> filtered,  bool sortByDeadlineAsc,  bool filtresApplied,  String? organizer,  String? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
return $default(_that.filtered,_that.sortByDeadlineAsc,_that.filtresApplied,_that.organizer,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ScholarshipEntity> filtered,  bool sortByDeadlineAsc,  bool filtresApplied,  String? organizer,  String? location)  $default,) {final _that = this;
switch (_that) {
case _FiltersState():
return $default(_that.filtered,_that.sortByDeadlineAsc,_that.filtresApplied,_that.organizer,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ScholarshipEntity> filtered,  bool sortByDeadlineAsc,  bool filtresApplied,  String? organizer,  String? location)?  $default,) {final _that = this;
switch (_that) {
case _FiltersState() when $default != null:
return $default(_that.filtered,_that.sortByDeadlineAsc,_that.filtresApplied,_that.organizer,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _FiltersState implements FiltersState {
  const _FiltersState({required final  List<ScholarshipEntity> filtered, required this.sortByDeadlineAsc, required this.filtresApplied, required this.organizer, required this.location}): _filtered = filtered;
  

 final  List<ScholarshipEntity> _filtered;
@override List<ScholarshipEntity> get filtered {
  if (_filtered is EqualUnmodifiableListView) return _filtered;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filtered);
}

@override final  bool sortByDeadlineAsc;
@override final  bool filtresApplied;
@override final  String? organizer;
@override final  String? location;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FiltersStateCopyWith<_FiltersState> get copyWith => __$FiltersStateCopyWithImpl<_FiltersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FiltersState&&const DeepCollectionEquality().equals(other._filtered, _filtered)&&(identical(other.sortByDeadlineAsc, sortByDeadlineAsc) || other.sortByDeadlineAsc == sortByDeadlineAsc)&&(identical(other.filtresApplied, filtresApplied) || other.filtresApplied == filtresApplied)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_filtered),sortByDeadlineAsc,filtresApplied,organizer,location);

@override
String toString() {
  return 'FiltersState(filtered: $filtered, sortByDeadlineAsc: $sortByDeadlineAsc, filtresApplied: $filtresApplied, organizer: $organizer, location: $location)';
}


}

/// @nodoc
abstract mixin class _$FiltersStateCopyWith<$Res> implements $FiltersStateCopyWith<$Res> {
  factory _$FiltersStateCopyWith(_FiltersState value, $Res Function(_FiltersState) _then) = __$FiltersStateCopyWithImpl;
@override @useResult
$Res call({
 List<ScholarshipEntity> filtered, bool sortByDeadlineAsc, bool filtresApplied, String? organizer, String? location
});




}
/// @nodoc
class __$FiltersStateCopyWithImpl<$Res>
    implements _$FiltersStateCopyWith<$Res> {
  __$FiltersStateCopyWithImpl(this._self, this._then);

  final _FiltersState _self;
  final $Res Function(_FiltersState) _then;

/// Create a copy of FiltersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filtered = null,Object? sortByDeadlineAsc = null,Object? filtresApplied = null,Object? organizer = freezed,Object? location = freezed,}) {
  return _then(_FiltersState(
filtered: null == filtered ? _self._filtered : filtered // ignore: cast_nullable_to_non_nullable
as List<ScholarshipEntity>,sortByDeadlineAsc: null == sortByDeadlineAsc ? _self.sortByDeadlineAsc : sortByDeadlineAsc // ignore: cast_nullable_to_non_nullable
as bool,filtresApplied: null == filtresApplied ? _self.filtresApplied : filtresApplied // ignore: cast_nullable_to_non_nullable
as bool,organizer: freezed == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
