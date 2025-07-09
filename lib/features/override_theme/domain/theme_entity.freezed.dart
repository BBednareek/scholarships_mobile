// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeEntity {

@ThemeModeConverter() ThemeMode get theme; bool get isDark; bool get isSystem;
/// Create a copy of ThemeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeEntityCopyWith<ThemeEntity> get copyWith => _$ThemeEntityCopyWithImpl<ThemeEntity>(this as ThemeEntity, _$identity);

  /// Serializes this ThemeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEntity&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.isDark, isDark) || other.isDark == isDark)&&(identical(other.isSystem, isSystem) || other.isSystem == isSystem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,isDark,isSystem);

@override
String toString() {
  return 'ThemeEntity(theme: $theme, isDark: $isDark, isSystem: $isSystem)';
}


}

/// @nodoc
abstract mixin class $ThemeEntityCopyWith<$Res>  {
  factory $ThemeEntityCopyWith(ThemeEntity value, $Res Function(ThemeEntity) _then) = _$ThemeEntityCopyWithImpl;
@useResult
$Res call({
@ThemeModeConverter() ThemeMode theme, bool isDark, bool isSystem
});




}
/// @nodoc
class _$ThemeEntityCopyWithImpl<$Res>
    implements $ThemeEntityCopyWith<$Res> {
  _$ThemeEntityCopyWithImpl(this._self, this._then);

  final ThemeEntity _self;
  final $Res Function(ThemeEntity) _then;

/// Create a copy of ThemeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? theme = null,Object? isDark = null,Object? isSystem = null,}) {
  return _then(_self.copyWith(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,isSystem: null == isSystem ? _self.isSystem : isSystem // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeEntity].
extension ThemeEntityPatterns on ThemeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ThemeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ThemeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ThemeEntity value)  $default,){
final _that = this;
switch (_that) {
case _ThemeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ThemeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ThemeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@ThemeModeConverter()  ThemeMode theme,  bool isDark,  bool isSystem)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ThemeEntity() when $default != null:
return $default(_that.theme,_that.isDark,_that.isSystem);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@ThemeModeConverter()  ThemeMode theme,  bool isDark,  bool isSystem)  $default,) {final _that = this;
switch (_that) {
case _ThemeEntity():
return $default(_that.theme,_that.isDark,_that.isSystem);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@ThemeModeConverter()  ThemeMode theme,  bool isDark,  bool isSystem)?  $default,) {final _that = this;
switch (_that) {
case _ThemeEntity() when $default != null:
return $default(_that.theme,_that.isDark,_that.isSystem);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ThemeEntity implements ThemeEntity {
  const _ThemeEntity({@ThemeModeConverter() required this.theme, required this.isDark, required this.isSystem});
  factory _ThemeEntity.fromJson(Map<String, dynamic> json) => _$ThemeEntityFromJson(json);

@override@ThemeModeConverter() final  ThemeMode theme;
@override final  bool isDark;
@override final  bool isSystem;

/// Create a copy of ThemeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ThemeEntityCopyWith<_ThemeEntity> get copyWith => __$ThemeEntityCopyWithImpl<_ThemeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ThemeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ThemeEntity&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.isDark, isDark) || other.isDark == isDark)&&(identical(other.isSystem, isSystem) || other.isSystem == isSystem));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,theme,isDark,isSystem);

@override
String toString() {
  return 'ThemeEntity(theme: $theme, isDark: $isDark, isSystem: $isSystem)';
}


}

/// @nodoc
abstract mixin class _$ThemeEntityCopyWith<$Res> implements $ThemeEntityCopyWith<$Res> {
  factory _$ThemeEntityCopyWith(_ThemeEntity value, $Res Function(_ThemeEntity) _then) = __$ThemeEntityCopyWithImpl;
@override @useResult
$Res call({
@ThemeModeConverter() ThemeMode theme, bool isDark, bool isSystem
});




}
/// @nodoc
class __$ThemeEntityCopyWithImpl<$Res>
    implements _$ThemeEntityCopyWith<$Res> {
  __$ThemeEntityCopyWithImpl(this._self, this._then);

  final _ThemeEntity _self;
  final $Res Function(_ThemeEntity) _then;

/// Create a copy of ThemeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? theme = null,Object? isDark = null,Object? isSystem = null,}) {
  return _then(_ThemeEntity(
theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as ThemeMode,isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,isSystem: null == isSystem ? _self.isSystem : isSystem // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
