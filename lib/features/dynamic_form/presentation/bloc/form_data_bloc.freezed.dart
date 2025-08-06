// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent()';
}


}

/// @nodoc
class $FormEventCopyWith<$Res>  {
$FormEventCopyWith(FormEvent _, $Res Function(FormEvent) __);
}


/// Adds pattern-matching-related methods to [FormEvent].
extension FormEventPatterns on FormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadFormEvent value)?  loadFormEvent,TResult Function( _Refresh value)?  refresh,TResult Function( _NextStepEvent value)?  nextStepEvent,TResult Function( _PreviousStepEvent value)?  previousStepEvent,TResult Function( _UpdateInputEvent value)?  updateInputEvent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadFormEvent() when loadFormEvent != null:
return loadFormEvent(_that);case _Refresh() when refresh != null:
return refresh(_that);case _NextStepEvent() when nextStepEvent != null:
return nextStepEvent(_that);case _PreviousStepEvent() when previousStepEvent != null:
return previousStepEvent(_that);case _UpdateInputEvent() when updateInputEvent != null:
return updateInputEvent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadFormEvent value)  loadFormEvent,required TResult Function( _Refresh value)  refresh,required TResult Function( _NextStepEvent value)  nextStepEvent,required TResult Function( _PreviousStepEvent value)  previousStepEvent,required TResult Function( _UpdateInputEvent value)  updateInputEvent,}){
final _that = this;
switch (_that) {
case _LoadFormEvent():
return loadFormEvent(_that);case _Refresh():
return refresh(_that);case _NextStepEvent():
return nextStepEvent(_that);case _PreviousStepEvent():
return previousStepEvent(_that);case _UpdateInputEvent():
return updateInputEvent(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadFormEvent value)?  loadFormEvent,TResult? Function( _Refresh value)?  refresh,TResult? Function( _NextStepEvent value)?  nextStepEvent,TResult? Function( _PreviousStepEvent value)?  previousStepEvent,TResult? Function( _UpdateInputEvent value)?  updateInputEvent,}){
final _that = this;
switch (_that) {
case _LoadFormEvent() when loadFormEvent != null:
return loadFormEvent(_that);case _Refresh() when refresh != null:
return refresh(_that);case _NextStepEvent() when nextStepEvent != null:
return nextStepEvent(_that);case _PreviousStepEvent() when previousStepEvent != null:
return previousStepEvent(_that);case _UpdateInputEvent() when updateInputEvent != null:
return updateInputEvent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadFormEvent,TResult Function()?  refresh,TResult Function()?  nextStepEvent,TResult Function()?  previousStepEvent,TResult Function( String key,  dynamic value)?  updateInputEvent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadFormEvent() when loadFormEvent != null:
return loadFormEvent();case _Refresh() when refresh != null:
return refresh();case _NextStepEvent() when nextStepEvent != null:
return nextStepEvent();case _PreviousStepEvent() when previousStepEvent != null:
return previousStepEvent();case _UpdateInputEvent() when updateInputEvent != null:
return updateInputEvent(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadFormEvent,required TResult Function()  refresh,required TResult Function()  nextStepEvent,required TResult Function()  previousStepEvent,required TResult Function( String key,  dynamic value)  updateInputEvent,}) {final _that = this;
switch (_that) {
case _LoadFormEvent():
return loadFormEvent();case _Refresh():
return refresh();case _NextStepEvent():
return nextStepEvent();case _PreviousStepEvent():
return previousStepEvent();case _UpdateInputEvent():
return updateInputEvent(_that.key,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadFormEvent,TResult? Function()?  refresh,TResult? Function()?  nextStepEvent,TResult? Function()?  previousStepEvent,TResult? Function( String key,  dynamic value)?  updateInputEvent,}) {final _that = this;
switch (_that) {
case _LoadFormEvent() when loadFormEvent != null:
return loadFormEvent();case _Refresh() when refresh != null:
return refresh();case _NextStepEvent() when nextStepEvent != null:
return nextStepEvent();case _PreviousStepEvent() when previousStepEvent != null:
return previousStepEvent();case _UpdateInputEvent() when updateInputEvent != null:
return updateInputEvent(_that.key,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _LoadFormEvent implements FormEvent {
  const _LoadFormEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.loadFormEvent()';
}


}




/// @nodoc


class _Refresh implements FormEvent {
  const _Refresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Refresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.refresh()';
}


}




/// @nodoc


class _NextStepEvent implements FormEvent {
  const _NextStepEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NextStepEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.nextStepEvent()';
}


}




/// @nodoc


class _PreviousStepEvent implements FormEvent {
  const _PreviousStepEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreviousStepEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.previousStepEvent()';
}


}




/// @nodoc


class _UpdateInputEvent implements FormEvent {
  const _UpdateInputEvent(this.key, this.value);
  

 final  String key;
 final  dynamic value;

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateInputEventCopyWith<_UpdateInputEvent> get copyWith => __$UpdateInputEventCopyWithImpl<_UpdateInputEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateInputEvent&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'FormEvent.updateInputEvent(key: $key, value: $value)';
}


}

/// @nodoc
abstract mixin class _$UpdateInputEventCopyWith<$Res> implements $FormEventCopyWith<$Res> {
  factory _$UpdateInputEventCopyWith(_UpdateInputEvent value, $Res Function(_UpdateInputEvent) _then) = __$UpdateInputEventCopyWithImpl;
@useResult
$Res call({
 String key, dynamic value
});




}
/// @nodoc
class __$UpdateInputEventCopyWithImpl<$Res>
    implements _$UpdateInputEventCopyWith<$Res> {
  __$UpdateInputEventCopyWithImpl(this._self, this._then);

  final _UpdateInputEvent _self;
  final $Res Function(_UpdateInputEvent) _then;

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = freezed,}) {
  return _then(_UpdateInputEvent(
null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

/// @nodoc
mixin _$FormDataState {

 List<FormStep> get steps; int get currentStep; Map<String, dynamic> get values; bool get isSubmitted;
/// Create a copy of FormDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormDataStateCopyWith<FormDataState> get copyWith => _$FormDataStateCopyWithImpl<FormDataState>(this as FormDataState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormDataState&&const DeepCollectionEquality().equals(other.steps, steps)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&const DeepCollectionEquality().equals(other.values, values)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(steps),currentStep,const DeepCollectionEquality().hash(values),isSubmitted);

@override
String toString() {
  return 'FormDataState(steps: $steps, currentStep: $currentStep, values: $values, isSubmitted: $isSubmitted)';
}


}

/// @nodoc
abstract mixin class $FormDataStateCopyWith<$Res>  {
  factory $FormDataStateCopyWith(FormDataState value, $Res Function(FormDataState) _then) = _$FormDataStateCopyWithImpl;
@useResult
$Res call({
 List<FormStep> steps, int currentStep, Map<String, dynamic> values, bool isSubmitted
});




}
/// @nodoc
class _$FormDataStateCopyWithImpl<$Res>
    implements $FormDataStateCopyWith<$Res> {
  _$FormDataStateCopyWithImpl(this._self, this._then);

  final FormDataState _self;
  final $Res Function(FormDataState) _then;

/// Create a copy of FormDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? steps = null,Object? currentStep = null,Object? values = null,Object? isSubmitted = null,}) {
  return _then(_self.copyWith(
steps: null == steps ? _self.steps : steps // ignore: cast_nullable_to_non_nullable
as List<FormStep>,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FormDataState].
extension FormDataStatePatterns on FormDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Data value)?  data,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Data value)  data,}){
final _that = this;
switch (_that) {
case _Data():
return data(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Data value)?  data,}){
final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<FormStep> steps,  int currentStep,  Map<String, dynamic> values,  bool isSubmitted)?  data,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that.steps,_that.currentStep,_that.values,_that.isSubmitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<FormStep> steps,  int currentStep,  Map<String, dynamic> values,  bool isSubmitted)  data,}) {final _that = this;
switch (_that) {
case _Data():
return data(_that.steps,_that.currentStep,_that.values,_that.isSubmitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<FormStep> steps,  int currentStep,  Map<String, dynamic> values,  bool isSubmitted)?  data,}) {final _that = this;
switch (_that) {
case _Data() when data != null:
return data(_that.steps,_that.currentStep,_that.values,_that.isSubmitted);case _:
  return null;

}
}

}

/// @nodoc


class _Data implements FormDataState {
  const _Data({final  List<FormStep> steps = const [], this.currentStep = 0, final  Map<String, dynamic> values = const {}, this.isSubmitted = false}): _steps = steps,_values = values;
  

 final  List<FormStep> _steps;
@override@JsonKey() List<FormStep> get steps {
  if (_steps is EqualUnmodifiableListView) return _steps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_steps);
}

@override@JsonKey() final  int currentStep;
 final  Map<String, dynamic> _values;
@override@JsonKey() Map<String, dynamic> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}

@override@JsonKey() final  bool isSubmitted;

/// Create a copy of FormDataState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&const DeepCollectionEquality().equals(other._steps, _steps)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&const DeepCollectionEquality().equals(other._values, _values)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_steps),currentStep,const DeepCollectionEquality().hash(_values),isSubmitted);

@override
String toString() {
  return 'FormDataState.data(steps: $steps, currentStep: $currentStep, values: $values, isSubmitted: $isSubmitted)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $FormDataStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 List<FormStep> steps, int currentStep, Map<String, dynamic> values, bool isSubmitted
});




}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of FormDataState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? steps = null,Object? currentStep = null,Object? values = null,Object? isSubmitted = null,}) {
  return _then(_Data(
steps: null == steps ? _self._steps : steps // ignore: cast_nullable_to_non_nullable
as List<FormStep>,currentStep: null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
