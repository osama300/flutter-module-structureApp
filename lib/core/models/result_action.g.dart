// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultAction<T> _$ResultActionFromJson<T>(Map<String, dynamic> json) =>
    ResultAction<T>(
      message: json['message'] as String,
      info: json['info'] as String,
      statues: (json['statues'] as num).toInt(),
      data: json['data'],
      success: json['success'] as bool,
    );

Map<String, dynamic> _$ResultActionToJson<T>(ResultAction<T> instance) =>
    <String, dynamic>{
      'statues': instance.statues,
      'message': instance.message,
      'info': instance.info,
      'success': instance.success,
      'data': instance.data,
    };
