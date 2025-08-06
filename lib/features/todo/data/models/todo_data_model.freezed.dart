// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodoDataModel {

@JsonKey(name: '_id') int? get id;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'dueDate') String get dueDate;
/// Create a copy of TodoDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoDataModelCopyWith<TodoDataModel> get copyWith => _$TodoDataModelCopyWithImpl<TodoDataModel>(this as TodoDataModel, _$identity);

  /// Serializes this TodoDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dueDate);

@override
String toString() {
  return 'TodoDataModel(id: $id, title: $title, description: $description, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class $TodoDataModelCopyWith<$Res>  {
  factory $TodoDataModelCopyWith(TodoDataModel value, $Res Function(TodoDataModel) _then) = _$TodoDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') int? id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'dueDate') String dueDate
});




}
/// @nodoc
class _$TodoDataModelCopyWithImpl<$Res>
    implements $TodoDataModelCopyWith<$Res> {
  _$TodoDataModelCopyWithImpl(this._self, this._then);

  final TodoDataModel _self;
  final $Res Function(TodoDataModel) _then;

/// Create a copy of TodoDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? description = null,Object? dueDate = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TodoDataModel].
extension TodoDataModelPatterns on TodoDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodoDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodoDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodoDataModel value)  $default,){
final _that = this;
switch (_that) {
case _TodoDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodoDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodoDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'dueDate')  String dueDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodoDataModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dueDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'dueDate')  String dueDate)  $default,) {final _that = this;
switch (_that) {
case _TodoDataModel():
return $default(_that.id,_that.title,_that.description,_that.dueDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  int? id, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'dueDate')  String dueDate)?  $default,) {final _that = this;
switch (_that) {
case _TodoDataModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.dueDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodoDataModel implements TodoDataModel {
  const _TodoDataModel({@JsonKey(name: '_id') this.id, @JsonKey(name: 'title') this.title = '', @JsonKey(name: 'description') this.description = '', @JsonKey(name: 'dueDate') this.dueDate = ''});
  factory _TodoDataModel.fromJson(Map<String, dynamic> json) => _$TodoDataModelFromJson(json);

@override@JsonKey(name: '_id') final  int? id;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'dueDate') final  String dueDate;

/// Create a copy of TodoDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoDataModelCopyWith<_TodoDataModel> get copyWith => __$TodoDataModelCopyWithImpl<_TodoDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodoDataModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,dueDate);

@override
String toString() {
  return 'TodoDataModel(id: $id, title: $title, description: $description, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class _$TodoDataModelCopyWith<$Res> implements $TodoDataModelCopyWith<$Res> {
  factory _$TodoDataModelCopyWith(_TodoDataModel value, $Res Function(_TodoDataModel) _then) = __$TodoDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') int? id,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'dueDate') String dueDate
});




}
/// @nodoc
class __$TodoDataModelCopyWithImpl<$Res>
    implements _$TodoDataModelCopyWith<$Res> {
  __$TodoDataModelCopyWithImpl(this._self, this._then);

  final _TodoDataModel _self;
  final $Res Function(_TodoDataModel) _then;

/// Create a copy of TodoDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? description = null,Object? dueDate = null,}) {
  return _then(_TodoDataModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: null == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
