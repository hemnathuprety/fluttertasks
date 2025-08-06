// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent()';
}


}

/// @nodoc
class $TodoEventCopyWith<$Res>  {
$TodoEventCopyWith(TodoEvent _, $Res Function(TodoEvent) __);
}


/// Adds pattern-matching-related methods to [TodoEvent].
extension TodoEventPatterns on TodoEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _SaveTodo value)?  saveTodo,TResult Function( _DeleteTodo value)?  deleteTodo,TResult Function( _GetTodoList value)?  getTodoList,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SaveTodo() when saveTodo != null:
return saveTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _GetTodoList() when getTodoList != null:
return getTodoList(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _SaveTodo value)  saveTodo,required TResult Function( _DeleteTodo value)  deleteTodo,required TResult Function( _GetTodoList value)  getTodoList,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _SaveTodo():
return saveTodo(_that);case _DeleteTodo():
return deleteTodo(_that);case _GetTodoList():
return getTodoList(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _SaveTodo value)?  saveTodo,TResult? Function( _DeleteTodo value)?  deleteTodo,TResult? Function( _GetTodoList value)?  getTodoList,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _SaveTodo() when saveTodo != null:
return saveTodo(_that);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that);case _GetTodoList() when getTodoList != null:
return getTodoList(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( TodoDataModel todoModel)?  saveTodo,TResult Function( int id)?  deleteTodo,TResult Function()?  getTodoList,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SaveTodo() when saveTodo != null:
return saveTodo(_that.todoModel);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _GetTodoList() when getTodoList != null:
return getTodoList();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( TodoDataModel todoModel)  saveTodo,required TResult Function( int id)  deleteTodo,required TResult Function()  getTodoList,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _SaveTodo():
return saveTodo(_that.todoModel);case _DeleteTodo():
return deleteTodo(_that.id);case _GetTodoList():
return getTodoList();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( TodoDataModel todoModel)?  saveTodo,TResult? Function( int id)?  deleteTodo,TResult? Function()?  getTodoList,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _SaveTodo() when saveTodo != null:
return saveTodo(_that.todoModel);case _DeleteTodo() when deleteTodo != null:
return deleteTodo(_that.id);case _GetTodoList() when getTodoList != null:
return getTodoList();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements TodoEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent.started()';
}


}




/// @nodoc


class _SaveTodo implements TodoEvent {
  const _SaveTodo(this.todoModel);
  

 final  TodoDataModel todoModel;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaveTodoCopyWith<_SaveTodo> get copyWith => __$SaveTodoCopyWithImpl<_SaveTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaveTodo&&(identical(other.todoModel, todoModel) || other.todoModel == todoModel));
}


@override
int get hashCode => Object.hash(runtimeType,todoModel);

@override
String toString() {
  return 'TodoEvent.saveTodo(todoModel: $todoModel)';
}


}

/// @nodoc
abstract mixin class _$SaveTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$SaveTodoCopyWith(_SaveTodo value, $Res Function(_SaveTodo) _then) = __$SaveTodoCopyWithImpl;
@useResult
$Res call({
 TodoDataModel todoModel
});


$TodoDataModelCopyWith<$Res> get todoModel;

}
/// @nodoc
class __$SaveTodoCopyWithImpl<$Res>
    implements _$SaveTodoCopyWith<$Res> {
  __$SaveTodoCopyWithImpl(this._self, this._then);

  final _SaveTodo _self;
  final $Res Function(_SaveTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todoModel = null,}) {
  return _then(_SaveTodo(
null == todoModel ? _self.todoModel : todoModel // ignore: cast_nullable_to_non_nullable
as TodoDataModel,
  ));
}

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TodoDataModelCopyWith<$Res> get todoModel {
  
  return $TodoDataModelCopyWith<$Res>(_self.todoModel, (value) {
    return _then(_self.copyWith(todoModel: value));
  });
}
}

/// @nodoc


class _DeleteTodo implements TodoEvent {
  const _DeleteTodo(this.id);
  

 final  int id;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTodoCopyWith<_DeleteTodo> get copyWith => __$DeleteTodoCopyWithImpl<_DeleteTodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTodo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TodoEvent.deleteTodo(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteTodoCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$DeleteTodoCopyWith(_DeleteTodo value, $Res Function(_DeleteTodo) _then) = __$DeleteTodoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteTodoCopyWithImpl<$Res>
    implements _$DeleteTodoCopyWith<$Res> {
  __$DeleteTodoCopyWithImpl(this._self, this._then);

  final _DeleteTodo _self;
  final $Res Function(_DeleteTodo) _then;

/// Create a copy of TodoEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteTodo(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetTodoList implements TodoEvent {
  const _GetTodoList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTodoList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoEvent.getTodoList()';
}


}




/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Error value)?  error,TResult Function( _Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Error value)  error,required TResult Function( _Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Error():
return error(_that);case _Loaded():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Error value)?  error,TResult? Function( _Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Error() when error != null:
return error(_that);case _Loaded() when loaded != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  error,TResult Function( List<TodoDataModel> todoList)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error();case _Loaded() when loaded != null:
return loaded(_that.todoList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  error,required TResult Function( List<TodoDataModel> todoList)  loaded,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Error():
return error();case _Loaded():
return loaded(_that.todoList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  error,TResult? Function( List<TodoDataModel> todoList)?  loaded,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Error() when error != null:
return error();case _Loaded() when loaded != null:
return loaded(_that.todoList);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements TodoState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.initial()';
}


}




/// @nodoc


class _Loading implements TodoState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.loading()';
}


}




/// @nodoc


class _Error implements TodoState {
  const _Error();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.error()';
}


}




/// @nodoc


class _Loaded implements TodoState {
  const _Loaded({final  List<TodoDataModel> todoList = const []}): _todoList = todoList;
  

 final  List<TodoDataModel> _todoList;
@JsonKey() List<TodoDataModel> get todoList {
  if (_todoList is EqualUnmodifiableListView) return _todoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todoList);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._todoList, _todoList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todoList));

@override
String toString() {
  return 'TodoState.loaded(todoList: $todoList)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<TodoDataModel> todoList
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todoList = null,}) {
  return _then(_Loaded(
todoList: null == todoList ? _self._todoList : todoList // ignore: cast_nullable_to_non_nullable
as List<TodoDataModel>,
  ));
}


}

// dart format on
