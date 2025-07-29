import 'package:rest_api/model/CountryDetail.dart';
import 'package:rest_api/model/CountryModel.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://restcountries.com/v3.1/')
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET('all')
  Future<List<CountryModel>> getAllCountries({
    @Query('fields') String fields = 'name,region,cca2',
  });

  @GET('name{name}?fullText=true')
  Future<List<CountryDetail>> getCountryDetail({
    @Path('name') required String name
});
}