import 'package:music/model/music_info.dart';

import '../../utils/api/kw_temp_search_entity.dart';

class SearchState {
  late KwTempSearchEntity kwTips = KwTempSearchEntity();
  late List<MusicInfo> kwMusic = <MusicInfo>[];
  bool showResultView = true;
}
