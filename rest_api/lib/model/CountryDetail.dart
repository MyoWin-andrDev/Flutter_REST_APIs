
import 'package:json_annotation/json_annotation.dart';
part 'CountryDetail.g.dart';
@JsonSerializable()
class CountryDetail{
  final String cca2;
  final String region;
  final String subregion;
  final int population;
  CountryDetail(this.cca2, this.region, this.subregion, this.population);
  factory CountryDetail.fromJson(Map <String, dynamic> json) => _$CountryDetailFromJson(json);
  Map<String, dynamic> toJson() => _$CountryDetailToJson(this);
}