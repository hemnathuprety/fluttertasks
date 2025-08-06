import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertasks/features/dynamic_form/data/models/form_model.dart';
import 'package:fluttertasks/features/dynamic_form/presentation/bloc/form_data_bloc.dart';
import 'package:fluttertasks/shared/di/injection_container.dart';

@RoutePage()
class DynamicFormScreen extends StatelessWidget {
  const DynamicFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FormDataBloc>()..add(FormEvent.loadFormEvent()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Car Insurance Form")),
        body: BlocBuilder<FormDataBloc, FormDataState>(
          builder: (context, state) {
            if (state.steps.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.isSubmitted) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Form Submitted!",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FormDataBloc>().add(
                          FormEvent.refresh()
                        );
                      },
                      child: const Text("Back"),
                    ),
                  ],
                ),
              );
            }

            final currentStep = state.steps[state.currentStep];

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentStep.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(currentStep.description),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView(
                      children:
                          currentStep.inputs.map((input) {
                            return _buildInputField(input, context, state);
                          }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (state.currentStep > 0)
                        TextButton(
                          onPressed:
                              () => context.read<FormDataBloc>().add(
                                FormEvent.previousStepEvent(),
                              ),
                          child: const Text("Back"),
                        ),
                      ElevatedButton(
                        onPressed:
                            () => context.read<FormDataBloc>().add(
                              FormEvent.nextStepEvent(),
                            ),
                        child: Text(
                          state.currentStep == state.steps.length - 1
                              ? "Submit"
                              : "Next",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100,)
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInputField(
    FormInput input,
    BuildContext context,
    FormDataState state,
  ) {
    final bloc = context.read<FormDataBloc>();
    final value = state.values[input.key];

    switch (input.type) {
      case 'text':
        return TextField(
          decoration: InputDecoration(labelText: input.label),
          keyboardType:
              input.validation?['numberOnly'] == true
                  ? TextInputType.number
                  : TextInputType.text,
          onChanged:
              (val) => bloc.add(FormEvent.updateInputEvent(input.key, val)),
          controller: TextEditingController(text: value?.toString()),
        );
      case 'dropdown':
        return DropdownButtonFormField(
          decoration: InputDecoration(labelText: input.label),
          value: value ?? input.defaultValue,
          items:
              input.options!
                  .map((opt) => DropdownMenuItem(value: opt, child: Text(opt)))
                  .toList(),
          onChanged:
              (val) => bloc.add(FormEvent.updateInputEvent(input.key, val)),
        );
      case 'toggle':
        return SwitchListTile(
          title: Text(input.label),
          value: value ?? false,
          onChanged:
              (val) => bloc.add(FormEvent.updateInputEvent(input.key, val)),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
