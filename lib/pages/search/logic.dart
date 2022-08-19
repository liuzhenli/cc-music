import 'package:dio/dio.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:music/model/music_info.dart';
import 'package:music/utils/api/kw_search_entity.dart';
import 'package:music/utils/utils.dart';

import '../../utils/net/address.dart';
import '../../utils/net/http_manager.dart';
import '../../utils/sp_const.dart';
import '../../utils/sp_util.dart';
import 'state.dart';

class SearchLogic extends GetxController {
  final SearchState state = SearchState();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> tempSearch(String key) async {
    Map<String, dynamic> body = {};
    body["key"] = key;
    body["_"] = getCurrentTime();

    var headers = <String, dynamic>{};
    headers["csrf"] = SpUti.read(SpConstants.kwToken);
    headers["accept"] = Headers.jsonContentType;
    headers["referer"] = "${Address.baseUrl}/";
    RequestOptions options =
        RequestOptions(baseUrl: Address.baseUrl, headers: headers, path: '/');
    var result =
        await HttpManager.getInstance(options: options).client.search(body);
    state.kwTips = result;
    state.showResultView = false;
    update();
  }

  Future<void> searchMusic(String key, int page, int limit) async {
    state.searchKey = key;
    var result =
        await HttpManager.getInstance().client.searchMusic(key, page, limit);
    for (KwMusicInfo music in result.abslist) {
      MusicInfo musicInfo = MusicInfo();
      musicInfo.name = music.songName ?? "";
      musicInfo.singer = music.artist ?? "";
      musicInfo.source = "kw";
      musicInfo.songId = music.musicRID?.replaceAll("MUSIC_", "");
      musicInfo.albumId = music.albumId ?? "";
      musicInfo.albumName = music.album;
      var time = int.parse(music.duration!);
      musicInfo.interval = formatTime(time);

      List<String>? infoArr = music.mInfo?.split(";");
      String reg = "bitrate:(\\d+),format:(\\w+),size:([\\w.]+)";
      RegExp exp = RegExp(reg);
      var types = [];
      var _types = {};
      infoArr?.forEach((info) {
        info = exp.stringMatch(info)!;
        switch (info[2]) {
          case 'flac':
            types.add({'flac', info[3]});
            _types["flac"] = {
              info[3].toUpperCase(),
            };
            break;

          case 'mp3':
            switch (info[1]) {
              case '320':
                types.add({'320k', info[3]});
                _types['320k'] = {
                  info[3].toUpperCase(),
                };
                break;
              case '192':
              //   types.push({ type: '192k', size: info[3] })
              //   _types['192k'] = {
              //     size: info[3].toLocaleUpperCase(),
              //   }
              //   break
              case '128':
                types.add({'128k', info[3]});
                _types['128k'] = {
                  info[3].toUpperCase(),
                };
                break;
            }
            break;
        }
      });
      musicInfo.types = types;
      //musicInfo._types=_types;
      state.kwMusic.add(musicInfo);
    }
    state.showResultView = true;
    update();
    state.refreshController.finishRefresh();
    state.refreshController.resetFooter();
  }

  onRefresh() async {
    if (state.searchKey.isEmpty) {
      return;
    }
    state.page = 1;
    searchMusic(state.searchKey, state.page, state.count);
  }

  onLoadMore() async {
    if (state.searchKey.isEmpty) {
      return;
    }
    state.page += 1;
    searchMusic(state.searchKey, state.page, state.count);
  }

  Future<void> getLyric(musicId) async {
    var lyric = await HttpManager.getInstance().client.getLyric(musicId);
  }
}
