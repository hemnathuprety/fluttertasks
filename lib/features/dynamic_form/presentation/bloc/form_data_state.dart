part of 'form_data_bloc.dart';

@freezed
abstract class  FormDataState with _$FormDataState {
  const factory FormDataState.data({
    @Default([]) List<FormStep> steps,
    @Default(0) int currentStep,
    @Default({}) Map<String, dynamic> values,
    @Default(false) bool isSubmitted,
  }) = _Data;
}
