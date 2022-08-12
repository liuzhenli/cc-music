import 'package:json_annotation/json_annotation.dart';

part 'kw_search_entity.g.dart';


@JsonSerializable()
class KwSearchEntity extends Object {

	@JsonKey(name: 'abslist')
	List<KwMusicInfo> abslist;

	KwSearchEntity(this.abslist,);

	factory KwSearchEntity.fromJson(Map<String, dynamic> srcJson) => _$KwSearchEntityFromJson(srcJson);

	Map<String, dynamic> toJson() => _$KwSearchEntityToJson(this);

}


@JsonSerializable()
class KwMusicInfo extends Object {

	@JsonKey(name: 'MINFO')
	String? mInfo;

	@JsonKey(name: 'SONGNAME')
	String? songName;

	@JsonKey(name: 'ARTIST')
	String? artist;

	@JsonKey(name: 'MUSICRID')
	String? musicRID;

	@JsonKey(name: 'ALBUMID')
	String? albumId;

	@JsonKey(name: 'DURATION')
	String? duration;

	@JsonKey(name: 'ALBUM')
	String? album;

	KwMusicInfo(this.mInfo,this.songName,this.artist,this.musicRID,this.albumId,this.duration,this.album,);

	factory KwMusicInfo.fromJson(Map<String, dynamic> srcJson) => _$KwMusicInfoFromJson(srcJson);

	Map<String, dynamic> toJson() => _$KwMusicInfoToJson(this);
}