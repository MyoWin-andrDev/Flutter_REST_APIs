import 'package:json_annotation/json_annotation.dart';

part 'CountryModel.g.dart';

@JsonSerializable()
class CountryModel {
  final Name name;
  final String region;
  final String cca2;

  CountryModel({
    required this.name,
    required this.region,
    required this.cca2,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CountryModelToJson(this);
}

@JsonSerializable()
class Name {
  final String common;

  Name({required this.common});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}