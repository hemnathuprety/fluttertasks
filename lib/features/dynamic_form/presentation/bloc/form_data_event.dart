part of 'form_data_bloc.dart';

@freezed
class FormEvent with _$FormEvent {
  const factory FormEvent.loadFormEvent() = _LoadFormEvent;
  const factory FormEvent.refresh() = _Refresh;

  const factory FormEvent.nextStepEvent() = _NextStepEvent;

  const factory FormEvent.previousStepEvent() = _PreviousStepEvent;

  const factory FormEvent.updateInputEvent(String key, dynamic value) =
      _UpdateInputEvent;
}
