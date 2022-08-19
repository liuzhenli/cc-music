import 'package:json_annotation/json_annotation.dart';

part 'kw_lyric.g.dart';

@JsonSerializable()
class KwLyric extends Object {
  @JsonKey(name: 'data')
  Data data;

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'profileid')
  String profileid;

  @JsonKey(name: 'reqid')
  String reqid;

  @JsonKey(name: 'status')
  int status;

  KwLyric(
    this.data,
    this.msg,
    this.profileid,
    this.reqid,
    this.status,
  );

  factory KwLyric.fromJson(Map<String, dynamic> srcJson) =>
      _$KwLyricFromJson(srcJson);

  Map<String, dynamic> toJson() => _$KwLyricToJson(this);
}

@JsonSerializable()
class Data extends Object {
  @JsonKey(name: 'lrclist')
  List<Lrclist>? lrclist;

  @JsonKey(name: 'simpl')
  Simpl? simpl;

  @JsonKey(name: 'songinfo')
  Songinfo? songinfo;

  Data(
    this.lrclist,
    this.simpl,
    this.songinfo,
  );

  factory Data.fromJson(Map<String, dynamic> srcJson) =>
      _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Lrclist extends Object {
  @JsonKey(name: 'lineLyric')
  String lineLyric;

  @JsonKey(name: 'time')
  String time;

  Lrclist(
    this.lineLyric,
    this.time,
  );

  factory Lrclist.fromJson(Map<String, dynamic> srcJson) =>
      _$LrclistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$LrclistToJson(this);
}

@JsonSerializable()
class Simpl extends Object {
  @JsonKey(name: 'musiclist')
  List<Musiclist> musiclist;

  @JsonKey(name: 'playlist')
  List<Playlist> playlist;

  Simpl(
    this.musiclist,
    this.playlist,
  );

  factory Simpl.fromJson(Map<String, dynamic> srcJson) =>
      _$SimplFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SimplToJson(this);
}

@JsonSerializable()
class Musiclist extends Object {
  @JsonKey(name: 'album')
  String album;

  @JsonKey(name: 'albumId')
  String albumId;

  @JsonKey(name: 'artist')
  String artist;

  @JsonKey(name: 'artistId')
  String artistId;

  @JsonKey(name: 'coopFormats')
  List<String> coopFormats;

  @JsonKey(name: 'copyRight')
  String copyRight;

  @JsonKey(name: 'duration')
  String duration;

  @JsonKey(name: 'formats')
  String formats;

  @JsonKey(name: 'hasMv')
  String hasMv;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'isstar')
  String isstar;

  @JsonKey(name: 'mp3Size')
  String mp3Size;

  @JsonKey(name: 'mp4sig1')
  String mp4sig1;

  @JsonKey(name: 'mp4sig2')
  String mp4sig2;

  @JsonKey(name: 'musicrId')
  String musicrId;

  @JsonKey(name: 'online')
  String online;

  @JsonKey(name: 'params')
  String params;

  @JsonKey(name: 'pay')
  String pay;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'playCnt')
  String playCnt;

  @JsonKey(name: 'songName')
  String songName;

  @JsonKey(name: 'songTimeMinutes')
  String songTimeMinutes;

  Musiclist(
    this.album,
    this.albumId,
    this.artist,
    this.artistId,
    this.coopFormats,
    this.copyRight,
    this.duration,
    this.formats,
    this.hasMv,
    this.id,
    this.isstar,
    this.mp3Size,
    this.mp4sig1,
    this.mp4sig2,
    this.musicrId,
    this.online,
    this.params,
    this.pay,
    this.pic,
    this.playCnt,
    this.songName,
    this.songTimeMinutes,
  );

  factory Musiclist.fromJson(Map<String, dynamic> srcJson) =>
      _$MusiclistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MusiclistToJson(this);
}

@JsonSerializable()
class Playlist extends Object {
  @JsonKey(name: 'digest')
  String digest;

  @JsonKey(name: 'disname')
  String disname;

  @JsonKey(name: 'extend')
  String extend;

  @JsonKey(name: 'info')
  String info;

  @JsonKey(name: 'isnew')
  String isnew;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'newcount')
  String newcount;

  @JsonKey(name: 'nodeid')
  String nodeid;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'playcnt')
  String playcnt;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'sourceid')
  String sourceid;

  @JsonKey(name: 'tag')
  String tag;

  Playlist(
    this.digest,
    this.disname,
    this.extend,
    this.info,
    this.isnew,
    this.name,
    this.newcount,
    this.nodeid,
    this.pic,
    this.playcnt,
    this.source,
    this.sourceid,
    this.tag,
  );

  factory Playlist.fromJson(Map<String, dynamic> srcJson) =>
      _$PlaylistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PlaylistToJson(this);
}

@JsonSerializable()
class Songinfo extends Object {
  @JsonKey(name: 'album')
  String album;

  @JsonKey(name: 'albumId')
  String albumId;

  @JsonKey(name: 'artist')
  String artist;

  @JsonKey(name: 'artistId')
  String artistId;

  @JsonKey(name: 'contentType')
  String contentType;

  @JsonKey(name: 'coopFormats')
  List<String> coopFormats;

  @JsonKey(name: 'copyRight')
  String copyRight;

  @JsonKey(name: 'duration')
  String duration;

  @JsonKey(name: 'formats')
  String formats;

  @JsonKey(name: 'hasMv')
  String hasMv;

  @JsonKey(name: 'id')
  String id;

  @JsonKey(name: 'isPoint')
  String isPoint;

  @JsonKey(name: 'isdownload')
  String isdownload;

  @JsonKey(name: 'isstar')
  String isstar;

  @JsonKey(name: 'mkvNsig1')
  String mkvNsig1;

  @JsonKey(name: 'mkvNsig2')
  String mkvNsig2;

  @JsonKey(name: 'mkvRid')
  String mkvRid;

  @JsonKey(name: 'mp3Nsig1')
  String mp3Nsig1;

  @JsonKey(name: 'mp3Nsig2')
  String mp3Nsig2;

  @JsonKey(name: 'mp3Rid')
  String mp3Rid;

  @JsonKey(name: 'mp3Size')
  String mp3Size;

  @JsonKey(name: 'mp4sig1')
  String mp4sig1;

  @JsonKey(name: 'mp4sig2')
  String mp4sig2;

  @JsonKey(name: 'musicrId')
  String musicrId;

  @JsonKey(name: 'mutiVer')
  String mutiVer;

  @JsonKey(name: 'nsig1')
  String nsig1;

  @JsonKey(name: 'nsig2')
  String nsig2;

  @JsonKey(name: 'online')
  String online;

  @JsonKey(name: 'pay')
  String pay;

  @JsonKey(name: 'pic')
  String pic;

  @JsonKey(name: 'playCnt')
  String playCnt;

  @JsonKey(name: 'score100')
  String score100;

  @JsonKey(name: 'songName')
  String songName;

  @JsonKey(name: 'songTimeMinutes')
  String songTimeMinutes;

  @JsonKey(name: 'upTime')
  String upTime;

  @JsonKey(name: 'uploader')
  String uploader;

  Songinfo(
    this.album,
    this.albumId,
    this.artist,
    this.artistId,
    this.contentType,
    this.coopFormats,
    this.copyRight,
    this.duration,
    this.formats,
    this.hasMv,
    this.id,
    this.isPoint,
    this.isdownload,
    this.isstar,
    this.mkvNsig1,
    this.mkvNsig2,
    this.mkvRid,
    this.mp3Nsig1,
    this.mp3Nsig2,
    this.mp3Rid,
    this.mp3Size,
    this.mp4sig1,
    this.mp4sig2,
    this.musicrId,
    this.mutiVer,
    this.nsig1,
    this.nsig2,
    this.online,
    this.pay,
    this.pic,
    this.playCnt,
    this.score100,
    this.songName,
    this.songTimeMinutes,
    this.upTime,
    this.uploader,
  );

  factory Songinfo.fromJson(Map<String, dynamic> srcJson) =>
      _$SonginfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SonginfoToJson(this);
}
