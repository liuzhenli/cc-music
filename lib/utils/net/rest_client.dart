import 'package:dio/dio.dart';
import 'package:music/utils/api/audio.dart';
import 'package:music/utils/api/kw_search_entity.dart';
import 'package:music/utils/api/kw_temp_search_entity.dart';
import 'package:retrofit/http.dart';
import '../api/kw_lyric.dart';
import 'address.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: Address.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(Address.empty)
  Future<KwTempSearchEntity> request();

  //增加新的请求 需要执行 flutter pub run build_runner build
  @GET(Address.search)
  Future<KwTempSearchEntity> search(@Queries() Map<String, dynamic> body);

  //"http://search.kuwo.cn/r.s?client=kt&all=${encodeURIComponent(str)}&pn=${page - 1}&rn=${limit}&uid=794762570&ver=kwplayer_ar_9.2.2.1&vipver=1&show_copyright_off=1&newver=1&ft=music&cluster=0&strategy=2012&encoding=utf8&rformat=json&vermerge=1&mobi=1&issubtitle=1"
  @GET(Address.searchMusic)
  Future<KwSearchEntity> searchMusic(@Path("key") String key,
      @Path("page") int page, @Path("limit") int limit);

  @GET(Address.kwLyric)
  Future<KwLyric> getLyric(@Path("musicId") String musicId);

  @GET(Address.kwAudio)
  Future<Audio> getKwAudio(
      @Path("musicId") String musicId, @Path("type") String type);
}
