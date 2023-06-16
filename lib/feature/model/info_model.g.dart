// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InfoModel _$InfoModelFromJson(Map<String, dynamic> json) => InfoModel(
      count: json['count'] as int?,
      pages: json['pages'] as int?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$InfoModelToJson(InfoModel instance) => <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
    };

BaseResponseModel _$BaseResponseModelFromJson(Map<String, dynamic> json) => BaseResponseModel(
      info: json['info'] == null ? null : InfoModel.fromJson(json['info'] as Map<String, dynamic>),
      results: json['results'] as List<dynamic>?,
    );

Map<String, dynamic> _$BaseResponseModelToJson(BaseResponseModel instance) => <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
