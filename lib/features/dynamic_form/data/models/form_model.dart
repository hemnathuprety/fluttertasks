class FormStep {
  final String title;
  final String description;
  final List<FormInput> inputs;

  FormStep({required this.title, required this.description, required this.inputs});

  factory FormStep.fromJson(Map<String, dynamic> json) {
    return FormStep(
      title: json['title'],
      description: json['description'],
      inputs: (json['inputs'] as List)
          .map((input) => FormInput.fromJson(input))
          .toList(),
    );
  }
}

class FormInput {
  final String key;
  final String type;
  final String label;
  final bool required;
  final dynamic defaultValue;
  final List<String>? options;
  final Map<String, dynamic>? validation;

  FormInput({
    required this.key,
    required this.type,
    required this.label,
    this.required = false,
    this.defaultValue,
    this.options,
    this.validation,
  });

  factory FormInput.fromJson(Map<String, dynamic> json) {
    return FormInput(
      key: json['key'],
      type: json['type'],
      label: json['label'],
      required: json['required'] ?? false,
      defaultValue: json['default'],
      options: (json['options'] as List?)?.map((e) => e.toString()).toList(),
      validation: json['validation'],
    );
  }
}
