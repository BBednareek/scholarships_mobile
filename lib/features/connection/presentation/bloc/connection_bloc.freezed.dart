// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectionEvent {

 bool get status;
/// Create a copy of ConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionEventCopyWith<ConnectionEvent> get copyWith => _$ConnectionEventCopyWithImpl<ConnectionEvent>(this as ConnectionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionEvent&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'ConnectionEvent(status: $status)';
}


}

/// @nodoc
abstract mixin class $ConnectionEventCopyWith<$Res>  {
  factory $ConnectionEventCopyWith(ConnectionEvent value, $Res Function(ConnectionEvent) _then) = _$ConnectionEventCopyWithImpl;
@useResult
$Res call({
 bool status
});




}
/// @nodoc
class _$ConnectionEventCopyWithImpl<$Res>
    implements $ConnectionEventCopyWith<$Res> {
  _$ConnectionEventCopyWithImpl(this._self, this._then);

  final ConnectionEvent _self;
  final $Res Function(ConnectionEvent) _then;

/// Create a copy of ConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionEvent].
extension ConnectionEventPatterns on ConnectionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _noInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _noInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _noInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case _noInternet():
return noInternet(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _noInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case _noInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool status)?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _noInternet() when noInternet != null:
return noInternet(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool status)  noInternet,}) {final _that = this;
switch (_that) {
case _noInternet():
return noInternet(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool status)?  noInternet,}) {final _that = this;
switch (_that) {
case _noInternet() when noInternet != null:
return noInternet(_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _noInternet implements ConnectionEvent {
  const _noInternet({required this.status});
  

@override final  bool status;

/// Create a copy of ConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$noInternetCopyWith<_noInternet> get copyWith => __$noInternetCopyWithImpl<_noInternet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _noInternet&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'ConnectionEvent.noInternet(status: $status)';
}


}

/// @nodoc
abstract mixin class _$noInternetCopyWith<$Res> implements $ConnectionEventCopyWith<$Res> {
  factory _$noInternetCopyWith(_noInternet value, $Res Function(_noInternet) _then) = __$noInternetCopyWithImpl;
@override @useResult
$Res call({
 bool status
});




}
/// @nodoc
class __$noInternetCopyWithImpl<$Res>
    implements _$noInternetCopyWith<$Res> {
  __$noInternetCopyWithImpl(this._self, this._then);

  final _noInternet _self;
  final $Res Function(_noInternet) _then;

/// Create a copy of ConnectionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_noInternet(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ConnectionState {

 bool get connection;
/// Create a copy of ConnectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectionStateCopyWith<ConnectionState> get copyWith => _$ConnectionStateCopyWithImpl<ConnectionState>(this as ConnectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionState&&(identical(other.connection, connection) || other.connection == connection));
}


@override
int get hashCode => Object.hash(runtimeType,connection);

@override
String toString() {
  return 'ConnectionState(connection: $connection)';
}


}

/// @nodoc
abstract mixin class $ConnectionStateCopyWith<$Res>  {
  factory $ConnectionStateCopyWith(ConnectionState value, $Res Function(ConnectionState) _then) = _$ConnectionStateCopyWithImpl;
@useResult
$Res call({
 bool connection
});




}
/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._self, this._then);

  final ConnectionState _self;
  final $Res Function(ConnectionState) _then;

/// Create a copy of ConnectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connection = null,}) {
  return _then(_self.copyWith(
connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ConnectionState].
extension ConnectionStatePatterns on ConnectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Status value)?  status,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Status() when status != null:
return status(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Status value)  status,}){
final _that = this;
switch (_that) {
case _Status():
return status(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Status value)?  status,}){
final _that = this;
switch (_that) {
case _Status() when status != null:
return status(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool connection)?  status,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Status() when status != null:
return status(_that.connection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool connection)  status,}) {final _that = this;
switch (_that) {
case _Status():
return status(_that.connection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool connection)?  status,}) {final _that = this;
switch (_that) {
case _Status() when status != null:
return status(_that.connection);case _:
  return null;

}
}

}

/// @nodoc


class _Status implements ConnectionState {
  const _Status({required this.connection});
  

@override final  bool connection;

/// Create a copy of ConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatusCopyWith<_Status> get copyWith => __$StatusCopyWithImpl<_Status>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Status&&(identical(other.connection, connection) || other.connection == connection));
}


@override
int get hashCode => Object.hash(runtimeType,connection);

@override
String toString() {
  return 'ConnectionState.status(connection: $connection)';
}


}

/// @nodoc
abstract mixin class _$StatusCopyWith<$Res> implements $ConnectionStateCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) _then) = __$StatusCopyWithImpl;
@override @useResult
$Res call({
 bool connection
});




}
/// @nodoc
class __$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(this._self, this._then);

  final _Status _self;
  final $Res Function(_Status) _then;

/// Create a copy of ConnectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connection = null,}) {
  return _then(_Status(
connection: null == connection ? _self.connection : connection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
