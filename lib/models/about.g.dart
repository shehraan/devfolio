// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutImpl _$$AboutImplFromJson(Map json) => _$AboutImpl(
      description: json['description'] as String,
      tech: (json['tech'] as List<dynamic>).map((e) => e as String).toList(),
      works: (json['works'] as List<dynamic>)
          .map((e) => Work.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      heading: json['heading'] as String,
    );

Map<String, dynamic> _$$AboutImplToJson(_$AboutImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'tech': instance.tech,
      'works': instance.works.map((e) => e.toJson()).toList(),
      'heading': instance.heading,
    };
