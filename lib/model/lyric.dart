//[al:专辑名]
// [ar:歌手名]
// [au:歌词作者-作曲家]
// [by:此LRC文件的创建者]
// [offset:+/- 时间补偿值，以毫秒为单位，正值表示加快，负值表示延后]
// [re:创建此LRC文件的播放器或编辑器]
// [ti:歌词(歌曲)的标题]
// [ve:程序的版本]

class LyricInfo {
  String? ti;
  String? ar;
  String? al;
  List<Lyric>? lyrics;
}

class Lyric {
  //	编曲：蔡政勋/陈建玮
  String? lineLyric;

  //	27.69
  String? time;
}
