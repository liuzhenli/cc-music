import 'package:dio/dio.dart';
import 'package:music/utils/api/kw_temp_search_entity.dart';
import 'package:retrofit/http.dart';
import 'address.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Address.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //增加新的请求 需要执行 flutter pub run build_runner build
  @GET(Address.search)
  Future<KwTempSearchEntity> search(@Queries() Map<String, dynamic> body);
}
