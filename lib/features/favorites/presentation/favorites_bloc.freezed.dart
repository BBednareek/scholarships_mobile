// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesEvent {

 ScholarshipEntity get tile;
/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesEventCopyWith<FavoritesEvent> get copyWith => _$FavoritesEventCopyWithImpl<FavoritesEvent>(this as FavoritesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesEvent&&(identical(other.tile, tile) || other.tile == tile));
}


@override
int get hashCode => Object.hash(runtimeType,tile);

@override
String toString() {
  return 'FavoritesEvent(tile: $tile)';
}


}

/// @nodoc
abstract mixin class $FavoritesEventCopyWith<$Res>  {
  factory $FavoritesEventCopyWith(FavoritesEvent value, $Res Function(FavoritesEvent) _then) = _$FavoritesEventCopyWithImpl;
@useResult
$Res call({
 ScholarshipEntity tile
});


$ScholarshipEntityCopyWith<$Res> get tile;

}
/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._self, this._then);

  final FavoritesEvent _self;
  final $Res Function(FavoritesEvent) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tile = null,}) {
  return _then(_self.copyWith(
tile: null == tile ? _self.tile : tile // ignore: cast_nullable_to_non_nullable
as ScholarshipEntity,
  ));
}
/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarshipEntityCopyWith<$Res> get tile {
  
  return $ScholarshipEntityCopyWith<$Res>(_self.tile, (value) {
    return _then(_self.copyWith(tile: value));
  });
}
}


/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddTile value)?  addTile,TResult Function( _RemoveTile value)?  removeTile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddTile() when addTile != null:
return addTile(_that);case _RemoveTile() when removeTile != null:
return removeTile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddTile value)  addTile,required TResult Function( _RemoveTile value)  removeTile,}){
final _that = this;
switch (_that) {
case _AddTile():
return addTile(_that);case _RemoveTile():
return removeTile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddTile value)?  addTile,TResult? Function( _RemoveTile value)?  removeTile,}){
final _that = this;
switch (_that) {
case _AddTile() when addTile != null:
return addTile(_that);case _RemoveTile() when removeTile != null:
return removeTile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ScholarshipEntity tile)?  addTile,TResult Function( ScholarshipEntity tile)?  removeTile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddTile() when addTile != null:
return addTile(_that.tile);case _RemoveTile() when removeTile != null:
return removeTile(_that.tile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ScholarshipEntity tile)  addTile,required TResult Function( ScholarshipEntity tile)  removeTile,}) {final _that = this;
switch (_that) {
case _AddTile():
return addTile(_that.tile);case _RemoveTile():
return removeTile(_that.tile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ScholarshipEntity tile)?  addTile,TResult? Function( ScholarshipEntity tile)?  removeTile,}) {final _that = this;
switch (_that) {
case _AddTile() when addTile != null:
return addTile(_that.tile);case _RemoveTile() when removeTile != null:
return removeTile(_that.tile);case _:
  return null;

}
}

}

/// @nodoc


class _AddTile implements FavoritesEvent {
  const _AddTile({required this.tile});
  

@override final  ScholarshipEntity tile;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTileCopyWith<_AddTile> get copyWith => __$AddTileCopyWithImpl<_AddTile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTile&&(identical(other.tile, tile) || other.tile == tile));
}


@override
int get hashCode => Object.hash(runtimeType,tile);

@override
String toString() {
  return 'FavoritesEvent.addTile(tile: $tile)';
}


}

/// @nodoc
abstract mixin class _$AddTileCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$AddTileCopyWith(_AddTile value, $Res Function(_AddTile) _then) = __$AddTileCopyWithImpl;
@override @useResult
$Res call({
 ScholarshipEntity tile
});


@override $ScholarshipEntityCopyWith<$Res> get tile;

}
/// @nodoc
class __$AddTileCopyWithImpl<$Res>
    implements _$AddTileCopyWith<$Res> {
  __$AddTileCopyWithImpl(this._self, this._then);

  final _AddTile _self;
  final $Res Function(_AddTile) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tile = null,}) {
  return _then(_AddTile(
tile: null == tile ? _self.tile : tile // ignore: cast_nullable_to_non_nullable
as ScholarshipEntity,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarshipEntityCopyWith<$Res> get tile {
  
  return $ScholarshipEntityCopyWith<$Res>(_self.tile, (value) {
    return _then(_self.copyWith(tile: value));
  });
}
}

/// @nodoc


class _RemoveTile implements FavoritesEvent {
  const _RemoveTile({required this.tile});
  

@override final  ScholarshipEntity tile;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveTileCopyWith<_RemoveTile> get copyWith => __$RemoveTileCopyWithImpl<_RemoveTile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveTile&&(identical(other.tile, tile) || other.tile == tile));
}


@override
int get hashCode => Object.hash(runtimeType,tile);

@override
String toString() {
  return 'FavoritesEvent.removeTile(tile: $tile)';
}


}

/// @nodoc
abstract mixin class _$RemoveTileCopyWith<$Res> implements $FavoritesEventCopyWith<$Res> {
  factory _$RemoveTileCopyWith(_RemoveTile value, $Res Function(_RemoveTile) _then) = __$RemoveTileCopyWithImpl;
@override @useResult
$Res call({
 ScholarshipEntity tile
});


@override $ScholarshipEntityCopyWith<$Res> get tile;

}
/// @nodoc
class __$RemoveTileCopyWithImpl<$Res>
    implements _$RemoveTileCopyWith<$Res> {
  __$RemoveTileCopyWithImpl(this._self, this._then);

  final _RemoveTile _self;
  final $Res Function(_RemoveTile) _then;

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tile = null,}) {
  return _then(_RemoveTile(
tile: null == tile ? _self.tile : tile // ignore: cast_nullable_to_non_nullable
as ScholarshipEntity,
  ));
}

/// Create a copy of FavoritesEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScholarshipEntityCopyWith<$Res> get tile {
  
  return $ScholarshipEntityCopyWith<$Res>(_self.tile, (value) {
    return _then(_self.copyWith(tile: value));
  });
}
}

/// @nodoc
mixin _$FavoritesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState()';
}


}

/// @nodoc
class $FavoritesStateCopyWith<$Res>  {
$FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<ScholarshipEntity> scholarships)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.scholarships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<ScholarshipEntity> scholarships)  loaded,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.scholarships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<ScholarshipEntity> scholarships)?  loaded,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.scholarships);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements FavoritesState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FavoritesState.loading()';
}


}




/// @nodoc


class _Loaded implements FavoritesState {
  const _Loaded({required final  List<ScholarshipEntity> scholarships}): _scholarships = scholarships;
  

 final  List<ScholarshipEntity> _scholarships;
 List<ScholarshipEntity> get scholarships {
  if (_scholarships is EqualUnmodifiableListView) return _scholarships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scholarships);
}


/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._scholarships, _scholarships));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_scholarships));

@override
String toString() {
  return 'FavoritesState.loaded(scholarships: $scholarships)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<ScholarshipEntity> scholarships
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scholarships = null,}) {
  return _then(_Loaded(
scholarships: null == scholarships ? _self._scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<ScholarshipEntity>,
  ));
}


}

// dart format on
