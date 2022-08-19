import 'package:easy_refresh/easy_refresh.dart';
import 'package:music/model/music_info.dart';

import '../../utils/api/kw_temp_search_entity.dart';

class SearchState {
  KwTempSearchEntity? kwTips;
  String searchKey = "";
  int page = 1;
  int count = 20;

  List<MusicInfo> kwMusic = <MusicInfo>[];
  bool showResultView = true;
  EasyRefreshController refreshController = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );
}
