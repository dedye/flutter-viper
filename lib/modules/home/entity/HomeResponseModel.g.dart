// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomeResponseModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeRestResponseModelImpl _$$HomeRestResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeRestResponseModelImpl(
      userId: (json['userId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      completed: json['completed'] as bool? ?? false,
    );

Map<String, dynamic> _$$HomeRestResponseModelImplToJson(
        _$HomeRestResponseModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
