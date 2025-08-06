import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_data_model.freezed.dart';
part 'todo_data_model.g.dart';

@freezed
abstract class TodoDataModel with _$TodoDataModel {
  const factory TodoDataModel({
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'description') @Default('') String description,
    @JsonKey(name: 'dueDate') @Default('') String dueDate,
  }) = _TodoDataModel;

  factory TodoDataModel.fromJson(Map<String, Object?> json) => _$TodoDataModelFromJson(json);
}

