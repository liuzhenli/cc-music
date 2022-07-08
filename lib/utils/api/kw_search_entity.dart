import 'package:music/generated/json/base/json_field.dart';
import 'package:music/generated/json/kw_search_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class KwSearchEntity {

	List<KwMusicInfo>? abslist;

  KwSearchEntity();

  factory KwSearchEntity.fromJson(Map<String, dynamic> json) => $KwSearchEntityFromJson(json);

  Map<String, dynamic> toJson() => $KwSearchEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KwMusicInfo {
	@JSONField(name: "SONGNAME")
	String? songName;
	@JSONField(name: "ARTIST")
	String? artist;
	@JSONField(name: "MUSICRID")
	String? musicRID;
	@JSONField(name: "ALBUMID")
	String? albumId;
	@JSONField(name: "DURATION")
	String? duration;
	@JSONField(name: "ALBUM")
	String? album;
	@JSONField(name: "MINFO")
	String? mInfo;

  KwMusicInfo();

  factory KwMusicInfo.fromJson(Map<String, dynamic> json) => $KwMusicInfoFromJson(json);

  Map<String, dynamic> toJson() => $KwMusicInfoToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
