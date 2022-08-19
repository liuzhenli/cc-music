class Address {
  static const String empty = "/";
  static const String baseUrl = "http://www.kuwo.cn";
  static const String search = "/api/www/search/searchKey";
  static const String searchMusic =
      "http://search.kuwo.cn/r.s?client=kt&all={key}&pn={page}&rn={limit}&uid=794762570&ver=kwplayer_ar_9.2.2.1&vipver=1&show_copyright_off=1&newver=1&ft=music&cluster=0&strategy=2012&encoding=utf8&rformat=json&vermerge=1&mobi=1&issubtitle=1";

  static const String kwLyric =
      "http://m.kuwo.cn/newh5/singles/songinfoandlrc?musicId={musicId}";

  static const String kwAudio = "http://ts.tempmusic.tk/url/kw/{musicId}/{type}?";
}
