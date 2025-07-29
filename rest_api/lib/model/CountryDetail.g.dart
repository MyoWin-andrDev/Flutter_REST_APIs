// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CountryDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryDetail _$CountryDetailFromJson(Map<String, dynamic> json) =>
    CountryDetail(
      json['cca2'] as String,
      json['region'] as String,
      json['subRegion'] as String,
      (json['population'] as num).toInt(),
    );

Map<String, dynamic> _$CountryDetailToJson(CountryDetail instance) =>
    <String, dynamic>{
      'cca2': instance.cca2,
      'region': instance.region,
      'subRegion': instance.subRegion,
      'population': instance.population,
    };
