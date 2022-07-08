class MusicInfo {
  String name=""; //: decodeName(info.SONGNAME),
  String? singer; //: formatSinger(decodeName(info.ARTIST)),
  String? source = 'kw';
  String? songId; //: songId,
  String? albumId; //: decodeName(info.ALBUMID || ''),
  String? interval; //: Number.isNaN(interval) ? 0 : formatPlayTime(interval),
  String? albumName; //: info.ALBUM ? decodeName(info.ALBUM) : '',
  String? lrc; //: null,
  String? img; //: null,
  String? otherSource; //: null,
  List<dynamic>? types; //,'128k' 320k
  String? _types; //,
  String? typeUrl; //: {},
}
