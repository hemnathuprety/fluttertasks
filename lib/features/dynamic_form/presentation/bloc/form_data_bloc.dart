import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:fluttertasks/features/dynamic_form/data/models/form_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'form_data_bloc.freezed.dart';
part 'form_data_event.dart';
part 'form_data_state.dart';

@injectable
class FormDataBloc extends Bloc<FormEvent, FormDataState> {
  FormDataBloc() : super(FormDataState.data()) {
    on<FormEvent>((event, emit) async {
      await event.when(
        loadFormEvent: () async {
          final jsonStr = await rootBundle.loadString(
            'assets/car_insurance_form.json',
          );
          final jsonData = json.decode(jsonStr);
          final formSteps =
              (jsonData['form']['steps'] as List)
                  .map((e) => FormStep.fromJson(e))
                  .toList();

          final defaultValues = <String, dynamic>{};
          for (var step in formSteps) {
            for (var input in step.inputs) {
              defaultValues[input.key] = input.defaultValue ?? null;
            }
          }

          emit(state.copyWith(steps: formSteps, values: defaultValues));
        },
        nextStepEvent: () {
          if (state.currentStep < state.steps.length - 1) {
            emit(state.copyWith(currentStep: state.currentStep + 1));
          } else {
            emit(state.copyWith(isSubmitted: true));
          }
        },
        previousStepEvent: () {
          if (state.currentStep > 0) {
            emit(state.copyWith(currentStep: state.currentStep - 1));
          }
        },
        updateInputEvent: (key, value) {
          final updated = Map<String, dynamic>.from(state.values);
          updated[key] = value;
          emit(state.copyWith(values: updated));
        },
        refresh: () {
          emit(FormDataState.data());
          add(FormEvent.loadFormEvent());
        },
      );
    });
  }
}
