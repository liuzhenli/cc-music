import 'package:music/generated/json/base/json_convert_content.dart';
import 'package:music/utils/api/kw_search_entity.dart';

KwSearchEntity $KwSearchEntityFromJson(Map<String, dynamic> json) {
	final KwSearchEntity kwSearchEntity = KwSearchEntity();
	final List<KwMusicInfo>? abslist = jsonConvert.convertListNotNull<KwMusicInfo>(json['abslist']);
	if (abslist != null) {
		kwSearchEntity.abslist = abslist;
	}
	return kwSearchEntity;
}

Map<String, dynamic> $KwSearchEntityToJson(KwSearchEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['abslist'] =  entity.abslist?.map((v) => v.toJson()).toList();
	return data;
}

KwMusicInfo $KwMusicInfoFromJson(Map<String, dynamic> json) {
	final KwMusicInfo kwMusicInfo = KwMusicInfo();
	final String? songName = jsonConvert.convert<String>(json['SONGNAME']);
	if (songName != null) {
		kwMusicInfo.songName = songName;
	}
	final String? artist = jsonConvert.convert<String>(json['ARTIST']);
	if (artist != null) {
		kwMusicInfo.artist = artist;
	}
	final String? musicRID = jsonConvert.convert<String>(json['MUSICRID']);
	if (musicRID != null) {
		kwMusicInfo.musicRID = musicRID;
	}
	final String? albumId = jsonConvert.convert<String>(json['ALBUMID']);
	if (albumId != null) {
		kwMusicInfo.albumId = albumId;
	}
	final String? duration = jsonConvert.convert<String>(json['DURATION']);
	if (duration != null) {
		kwMusicInfo.duration = duration;
	}
	final String? album = jsonConvert.convert<String>(json['ALBUM']);
	if (album != null) {
		kwMusicInfo.album = album;
	}
	final String? mInfo = jsonConvert.convert<String>(json['MINFO']);
	if (mInfo != null) {
		kwMusicInfo.mInfo = mInfo;
	}
	return kwMusicInfo;
}

Map<String, dynamic> $KwMusicInfoToJson(KwMusicInfo entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['SONGNAME'] = entity.songName;
	data['ARTIST'] = entity.artist;
	data['MUSICRID'] = entity.musicRID;
	data['ALBUMID'] = entity.albumId;
	data['DURATION'] = entity.duration;
	data['ALBUM'] = entity.album;
	data['MINFO'] = entity.mInfo;
	return data;
}