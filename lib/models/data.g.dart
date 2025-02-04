// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map json) => _$DataImpl(
      basic: Basic.fromJson(Map<String, Object?>.from(json['basic'] as Map)),
      socials: (json['socials'] as List<dynamic>)
          .map((e) => Social.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      about: About.fromJson(Map<String, Object?>.from(json['about'] as Map)),
      services: (json['services'] as List<dynamic>)
          .map((e) => ServiceData.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Project.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
      contact: (json['contact'] as List<dynamic>)
          .map((e) => Contact.fromJson(Map<String, Object?>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'basic': instance.basic.toJson(),
      'socials': instance.socials.map((e) => e.toJson()).toList(),
      'about': instance.about.toJson(),
      'services': instance.services.map((e) => e.toJson()).toList(),
      'projects': instance.projects.map((e) => e.toJson()).toList(),
      'contact': instance.contact.map((e) => e.toJson()).toList(),
    };
