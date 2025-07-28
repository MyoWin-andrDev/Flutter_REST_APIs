import 'package:json_annotation/json_annotation.dart';
part 'CountryModel.g.dart';

@JsonSerializable()
class CountryModel{
  String name;
  String region;
  String cca2;
  CountryModel(this.name, this.region, this.cca2);
  factory CountryModel.fromJson(Map<String, dynamic> json) => _$CountryModelFromJson(json);
}