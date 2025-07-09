// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scholarships_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScholarshipsEvent {

 bool get loadMore;
/// Create a copy of ScholarshipsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarshipsEventCopyWith<ScholarshipsEvent> get copyWith => _$ScholarshipsEventCopyWithImpl<ScholarshipsEvent>(this as ScholarshipsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarshipsEvent&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}


@override
int get hashCode => Object.hash(runtimeType,loadMore);

@override
String toString() {
  return 'ScholarshipsEvent(loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class $ScholarshipsEventCopyWith<$Res>  {
  factory $ScholarshipsEventCopyWith(ScholarshipsEvent value, $Res Function(ScholarshipsEvent) _then) = _$ScholarshipsEventCopyWithImpl;
@useResult
$Res call({
 bool loadMore
});




}
/// @nodoc
class _$ScholarshipsEventCopyWithImpl<$Res>
    implements $ScholarshipsEventCopyWith<$Res> {
  _$ScholarshipsEventCopyWithImpl(this._self, this._then);

  final ScholarshipsEvent _self;
  final $Res Function(ScholarshipsEvent) _then;

/// Create a copy of ScholarshipsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadMore = null,}) {
  return _then(_self.copyWith(
loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ScholarshipsEvent].
extension ScholarshipsEventPatterns on ScholarshipsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetScholarships value)?  getScholarships,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetScholarships() when getScholarships != null:
return getScholarships(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetScholarships value)  getScholarships,}){
final _that = this;
switch (_that) {
case _GetScholarships():
return getScholarships(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetScholarships value)?  getScholarships,}){
final _that = this;
switch (_that) {
case _GetScholarships() when getScholarships != null:
return getScholarships(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool loadMore)?  getScholarships,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetScholarships() when getScholarships != null:
return getScholarships(_that.loadMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool loadMore)  getScholarships,}) {final _that = this;
switch (_that) {
case _GetScholarships():
return getScholarships(_that.loadMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool loadMore)?  getScholarships,}) {final _that = this;
switch (_that) {
case _GetScholarships() when getScholarships != null:
return getScholarships(_that.loadMore);case _:
  return null;

}
}

}

/// @nodoc


class _GetScholarships implements ScholarshipsEvent {
  const _GetScholarships({this.loadMore = false});
  

@override@JsonKey() final  bool loadMore;

/// Create a copy of ScholarshipsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetScholarshipsCopyWith<_GetScholarships> get copyWith => __$GetScholarshipsCopyWithImpl<_GetScholarships>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetScholarships&&(identical(other.loadMore, loadMore) || other.loadMore == loadMore));
}


@override
int get hashCode => Object.hash(runtimeType,loadMore);

@override
String toString() {
  return 'ScholarshipsEvent.getScholarships(loadMore: $loadMore)';
}


}

/// @nodoc
abstract mixin class _$GetScholarshipsCopyWith<$Res> implements $ScholarshipsEventCopyWith<$Res> {
  factory _$GetScholarshipsCopyWith(_GetScholarships value, $Res Function(_GetScholarships) _then) = __$GetScholarshipsCopyWithImpl;
@override @useResult
$Res call({
 bool loadMore
});




}
/// @nodoc
class __$GetScholarshipsCopyWithImpl<$Res>
    implements _$GetScholarshipsCopyWith<$Res> {
  __$GetScholarshipsCopyWithImpl(this._self, this._then);

  final _GetScholarships _self;
  final $Res Function(_GetScholarships) _then;

/// Create a copy of ScholarshipsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadMore = null,}) {
  return _then(_GetScholarships(
loadMore: null == loadMore ? _self.loadMore : loadMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ScholarshipsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarshipsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScholarshipsState()';
}


}

/// @nodoc
class $ScholarshipsStateCopyWith<$Res>  {
$ScholarshipsStateCopyWith(ScholarshipsState _, $Res Function(ScholarshipsState) __);
}


/// Adds pattern-matching-related methods to [ScholarshipsState].
extension ScholarshipsStatePatterns on ScholarshipsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<ScholarshipEntity> scholarships)?  loaded,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.scholarships);case _Error() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<ScholarshipEntity> scholarships)  loaded,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded(_that.scholarships);case _Error():
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<ScholarshipEntity> scholarships)?  loaded,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.scholarships);case _Error() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements ScholarshipsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScholarshipsState.loading()';
}


}




/// @nodoc


class _Loaded implements ScholarshipsState {
  const _Loaded({required final  List<ScholarshipEntity> scholarships}): _scholarships = scholarships;
  

 final  List<ScholarshipEntity> _scholarships;
 List<ScholarshipEntity> get scholarships {
  if (_scholarships is EqualUnmodifiableListView) return _scholarships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_scholarships);
}


/// Create a copy of ScholarshipsState
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
  return 'ScholarshipsState.loaded(scholarships: $scholarships)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $ScholarshipsStateCopyWith<$Res> {
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

/// Create a copy of ScholarshipsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? scholarships = null,}) {
  return _then(_Loaded(
scholarships: null == scholarships ? _self._scholarships : scholarships // ignore: cast_nullable_to_non_nullable
as List<ScholarshipEntity>,
  ));
}


}

/// @nodoc


class _Error implements ScholarshipsState {
  const _Error({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of ScholarshipsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'ScholarshipsState.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ScholarshipsStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ScholarshipsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_Error(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
