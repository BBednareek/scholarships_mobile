// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'router_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RouterEvent()';
}


}

/// @nodoc
class $RouterEventCopyWith<$Res>  {
$RouterEventCopyWith(RouterEvent _, $Res Function(RouterEvent) __);
}


/// Adds pattern-matching-related methods to [RouterEvent].
extension RouterEventPatterns on RouterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Change value)?  change,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Change() when change != null:
return change(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Change value)  change,}){
final _that = this;
switch (_that) {
case _Change():
return change(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Change value)?  change,}){
final _that = this;
switch (_that) {
case _Change() when change != null:
return change(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  change,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Change() when change != null:
return change();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  change,}) {final _that = this;
switch (_that) {
case _Change():
return change();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  change,}) {final _that = this;
switch (_that) {
case _Change() when change != null:
return change();case _:
  return null;

}
}

}

/// @nodoc


class _Change implements RouterEvent {
  const _Change();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Change);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RouterEvent.change()';
}


}




/// @nodoc
mixin _$RouterState {

 bool get changed;
/// Create a copy of RouterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouterStateCopyWith<RouterState> get copyWith => _$RouterStateCopyWithImpl<RouterState>(this as RouterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouterState&&(identical(other.changed, changed) || other.changed == changed));
}


@override
int get hashCode => Object.hash(runtimeType,changed);

@override
String toString() {
  return 'RouterState(changed: $changed)';
}


}

/// @nodoc
abstract mixin class $RouterStateCopyWith<$Res>  {
  factory $RouterStateCopyWith(RouterState value, $Res Function(RouterState) _then) = _$RouterStateCopyWithImpl;
@useResult
$Res call({
 bool changed
});




}
/// @nodoc
class _$RouterStateCopyWithImpl<$Res>
    implements $RouterStateCopyWith<$Res> {
  _$RouterStateCopyWithImpl(this._self, this._then);

  final RouterState _self;
  final $Res Function(RouterState) _then;

/// Create a copy of RouterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? changed = null,}) {
  return _then(_self.copyWith(
changed: null == changed ? _self.changed : changed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RouterState].
extension RouterStatePatterns on RouterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouterState value)  $default,){
final _that = this;
switch (_that) {
case _RouterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouterState value)?  $default,){
final _that = this;
switch (_that) {
case _RouterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool changed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouterState() when $default != null:
return $default(_that.changed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool changed)  $default,) {final _that = this;
switch (_that) {
case _RouterState():
return $default(_that.changed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool changed)?  $default,) {final _that = this;
switch (_that) {
case _RouterState() when $default != null:
return $default(_that.changed);case _:
  return null;

}
}

}

/// @nodoc


class _RouterState implements RouterState {
  const _RouterState({this.changed = false});
  

@override@JsonKey() final  bool changed;

/// Create a copy of RouterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouterStateCopyWith<_RouterState> get copyWith => __$RouterStateCopyWithImpl<_RouterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouterState&&(identical(other.changed, changed) || other.changed == changed));
}


@override
int get hashCode => Object.hash(runtimeType,changed);

@override
String toString() {
  return 'RouterState(changed: $changed)';
}


}

/// @nodoc
abstract mixin class _$RouterStateCopyWith<$Res> implements $RouterStateCopyWith<$Res> {
  factory _$RouterStateCopyWith(_RouterState value, $Res Function(_RouterState) _then) = __$RouterStateCopyWithImpl;
@override @useResult
$Res call({
 bool changed
});




}
/// @nodoc
class __$RouterStateCopyWithImpl<$Res>
    implements _$RouterStateCopyWith<$Res> {
  __$RouterStateCopyWithImpl(this._self, this._then);

  final _RouterState _self;
  final $Res Function(_RouterState) _then;

/// Create a copy of RouterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? changed = null,}) {
  return _then(_RouterState(
changed: null == changed ? _self.changed : changed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
