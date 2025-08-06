// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TodoDataModel _$TodoDataModelFromJson(Map<String, dynamic> json) =>
    _TodoDataModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      dueDate: json['dueDate'] as String? ?? '',
    );

Map<String, dynamic> _$TodoDataModelToJson(_TodoDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'dueDate': instance.dueDate,
    };
