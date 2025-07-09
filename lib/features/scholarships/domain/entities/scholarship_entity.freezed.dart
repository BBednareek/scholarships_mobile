// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scholarship_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScholarshipEntity {

 String? get deadline; String get from; String get link; String get location; String get organizer; String get path; String get targetGroup; String get title;
/// Create a copy of ScholarshipEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScholarshipEntityCopyWith<ScholarshipEntity> get copyWith => _$ScholarshipEntityCopyWithImpl<ScholarshipEntity>(this as ScholarshipEntity, _$identity);

  /// Serializes this ScholarshipEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScholarshipEntity&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.from, from) || other.from == from)&&(identical(other.link, link) || other.link == link)&&(identical(other.location, location) || other.location == location)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.path, path) || other.path == path)&&(identical(other.targetGroup, targetGroup) || other.targetGroup == targetGroup)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deadline,from,link,location,organizer,path,targetGroup,title);

@override
String toString() {
  return 'ScholarshipEntity(deadline: $deadline, from: $from, link: $link, location: $location, organizer: $organizer, path: $path, targetGroup: $targetGroup, title: $title)';
}


}

/// @nodoc
abstract mixin class $ScholarshipEntityCopyWith<$Res>  {
  factory $ScholarshipEntityCopyWith(ScholarshipEntity value, $Res Function(ScholarshipEntity) _then) = _$ScholarshipEntityCopyWithImpl;
@useResult
$Res call({
 String? deadline, String from, String link, String location, String organizer, String path, String targetGroup, String title
});




}
/// @nodoc
class _$ScholarshipEntityCopyWithImpl<$Res>
    implements $ScholarshipEntityCopyWith<$Res> {
  _$ScholarshipEntityCopyWithImpl(this._self, this._then);

  final ScholarshipEntity _self;
  final $Res Function(ScholarshipEntity) _then;

/// Create a copy of ScholarshipEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deadline = freezed,Object? from = null,Object? link = null,Object? location = null,Object? organizer = null,Object? path = null,Object? targetGroup = null,Object? title = null,}) {
  return _then(_self.copyWith(
deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,targetGroup: null == targetGroup ? _self.targetGroup : targetGroup // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ScholarshipEntity].
extension ScholarshipEntityPatterns on ScholarshipEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScholarshipEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScholarshipEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScholarshipEntity value)  $default,){
final _that = this;
switch (_that) {
case _ScholarshipEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScholarshipEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ScholarshipEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? deadline,  String from,  String link,  String location,  String organizer,  String path,  String targetGroup,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScholarshipEntity() when $default != null:
return $default(_that.deadline,_that.from,_that.link,_that.location,_that.organizer,_that.path,_that.targetGroup,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? deadline,  String from,  String link,  String location,  String organizer,  String path,  String targetGroup,  String title)  $default,) {final _that = this;
switch (_that) {
case _ScholarshipEntity():
return $default(_that.deadline,_that.from,_that.link,_that.location,_that.organizer,_that.path,_that.targetGroup,_that.title);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? deadline,  String from,  String link,  String location,  String organizer,  String path,  String targetGroup,  String title)?  $default,) {final _that = this;
switch (_that) {
case _ScholarshipEntity() when $default != null:
return $default(_that.deadline,_that.from,_that.link,_that.location,_that.organizer,_that.path,_that.targetGroup,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScholarshipEntity implements ScholarshipEntity {
  const _ScholarshipEntity({this.deadline, required this.from, required this.link, required this.location, required this.organizer, required this.path, required this.targetGroup, required this.title});
  factory _ScholarshipEntity.fromJson(Map<String, dynamic> json) => _$ScholarshipEntityFromJson(json);

@override final  String? deadline;
@override final  String from;
@override final  String link;
@override final  String location;
@override final  String organizer;
@override final  String path;
@override final  String targetGroup;
@override final  String title;

/// Create a copy of ScholarshipEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScholarshipEntityCopyWith<_ScholarshipEntity> get copyWith => __$ScholarshipEntityCopyWithImpl<_ScholarshipEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScholarshipEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScholarshipEntity&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.from, from) || other.from == from)&&(identical(other.link, link) || other.link == link)&&(identical(other.location, location) || other.location == location)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.path, path) || other.path == path)&&(identical(other.targetGroup, targetGroup) || other.targetGroup == targetGroup)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deadline,from,link,location,organizer,path,targetGroup,title);

@override
String toString() {
  return 'ScholarshipEntity(deadline: $deadline, from: $from, link: $link, location: $location, organizer: $organizer, path: $path, targetGroup: $targetGroup, title: $title)';
}


}

/// @nodoc
abstract mixin class _$ScholarshipEntityCopyWith<$Res> implements $ScholarshipEntityCopyWith<$Res> {
  factory _$ScholarshipEntityCopyWith(_ScholarshipEntity value, $Res Function(_ScholarshipEntity) _then) = __$ScholarshipEntityCopyWithImpl;
@override @useResult
$Res call({
 String? deadline, String from, String link, String location, String organizer, String path, String targetGroup, String title
});




}
/// @nodoc
class __$ScholarshipEntityCopyWithImpl<$Res>
    implements _$ScholarshipEntityCopyWith<$Res> {
  __$ScholarshipEntityCopyWithImpl(this._self, this._then);

  final _ScholarshipEntity _self;
  final $Res Function(_ScholarshipEntity) _then;

/// Create a copy of ScholarshipEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deadline = freezed,Object? from = null,Object? link = null,Object? location = null,Object? organizer = null,Object? path = null,Object? targetGroup = null,Object? title = null,}) {
  return _then(_ScholarshipEntity(
deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,link: null == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,targetGroup: null == targetGroup ? _self.targetGroup : targetGroup // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
