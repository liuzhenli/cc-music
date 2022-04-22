import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconName { search, lib, like, setting }

class IconFonts extends StatelessWidget {
  final IconName name;
  final String color;
  final List<String> colors;
  final double size;

  const IconFonts(this.name,
      {this.size = 18, required this.color, required this.colors});

  static String getColor(
      int arrayIndex, String color, List<String> colors, String defaultColor) {
    if (color != null && color.isNotEmpty) {
      return color;
    }
    if (colors != null && colors.isNotEmpty && colors.length > arrayIndex) {
      return colors.elementAt(arrayIndex);
    }
    return defaultColor;
  }

  @override
  Widget build(BuildContext context) {
    String svgXml = "";

    switch (name) {
      case IconName.search:
        svgXml = '''
            <svg  viewBox="0 0 1024 1024" xmlns="http://www.w3.org/2000/svg" width="72" height="72">
              <path d="M685.6 660.336l155.152 155.168a16 16 0 0 1 0 22.624l-11.312 11.328a16 16 0 0 1-22.624 0l-158.528-158.544a289.792 289.792 0 0 1-165.152 51.36C322.336 742.256 192 611.904 192 451.12 192 290.336 322.336 160 483.136 160c160.784 0 291.12 130.336 291.12 291.136 0 82.112-33.984 156.272-88.672 209.2z m-202.464 33.92c134.272 0 243.12-108.848 243.12-243.12C726.256 316.848 617.408 208 483.136 208 348.848 208 240 316.848 240 451.136c0 134.272 108.848 243.12 243.136 243.12z" 
                fill="''' +
            getColor(1, color, colors, '#4A4A4A') +
            '''">
              </path>
             </svg>
        ''';
        break;
      case IconName.setting:
        svgXml = '''
       <svg t="1650545657308" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3620" width="72" height="72"><path d="M396.72 320.592a141.184 141.184 0 0 1-99.824 15.92 277.648 277.648 0 0 0-45.344 74.576 141.216 141.216 0 0 1 37.52 95.952 141.248 141.248 0 0 1-41.728 100.32 274.4 274.4 0 0 0 49.952 86.224 141.264 141.264 0 0 1 107.168 14.176 141.216 141.216 0 0 1 63.984 79.296 274.72 274.72 0 0 0 86.816-1.92 141.248 141.248 0 0 1 66.016-86.304 141.216 141.216 0 0 1 101.856-15.488 277.648 277.648 0 0 0 41.92-76.544 141.184 141.184 0 0 1-36.128-94.4c0-34.912 12.768-67.68 34.816-92.96a274.736 274.736 0 0 0-38.192-70.032 141.264 141.264 0 0 1-105.792-14.56 141.312 141.312 0 0 1-67.168-90.912 274.4 274.4 0 0 0-92.784 0.016 141.152 141.152 0 0 1-63.088 76.64z m22.56-116.656c57.312-16 119.024-16.224 178.016 1.216a93.44 93.44 0 0 0 142.288 86.736 322.64 322.64 0 0 1 79.104 142.656 93.328 93.328 0 0 0-41.76 77.84 93.36 93.36 0 0 0 42.88 78.592 322.832 322.832 0 0 1-34.208 85.232 323.392 323.392 0 0 1-47.968 63.568 93.392 93.392 0 0 0-92.352 0.64 93.408 93.408 0 0 0-46.688 83.616 322.704 322.704 0 0 1-171.424 3.84 93.376 93.376 0 0 0-46.704-78.544 93.408 93.408 0 0 0-95.184 1.008A322.432 322.432 0 0 1 192 589.28a93.408 93.408 0 0 0 49.072-82.24c0-34.128-18.304-64-45.632-80.288a323.392 323.392 0 0 1 31.088-73.328 322.832 322.832 0 0 1 56.704-72.256 93.36 93.36 0 0 0 89.488-2.144 93.328 93.328 0 0 0 46.56-75.088z m92.208 385.28a68.864 68.864 0 1 0 0-137.76 68.864 68.864 0 0 0 0 137.76z m0 48a116.864 116.864 0 1 1 0-233.76 116.864 116.864 0 0 1 0 233.76z" p-id="3621"></path></svg>
        ''';
        break;
      case IconName.lib:
        svgXml = '''
      <svg t="1650545475310" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3324" width="72" height="72"><path d="M477.696 176c5.376-0.032 10.8 1.712 15.296 5.376 52.416 42.528 88.16 84.96 112.016 128.368 8.8 16 15.472 31.072 21.568 47.632l3.488 9.904c1.568-3.776 3.152-8 4.752-12.672 1.664-4.8 3.296-9.888 5.12-15.936l5.152-17.088 2-6.16 1.184-3.2c1.088-2.704 2.176-4.944 3.776-7.28 1.92-2.752 4.176-5.2 7.648-7.36a24.272 24.272 0 0 1 24.544-0.752l3.68 1.984 7.84 8.848c117.712 135.616 133.808 290.624 58.016 409.024-72.64 113.44-212.192 162.304-341.152 110.912-174.832-69.664-216.48-221.136-126.72-442.368l5.664-13.632 4.256-10.016a16 16 0 0 1 25.088-5.936l8.288 7.04a203.152 203.152 0 0 1 43.84 51.808l3.296-3.152c40.192-39.68 66.4-110.592 77.2-213.824A24 24 0 0 1 477.696 176z m17.68 71.28l-1.28 7.712c-18.528 107.232-57.072 179.84-117.232 216.608l-8.08 4.944a16 16 0 0 1-23.2-7.712l-3.52-8.8a152.208 152.208 0 0 0-20-35.52c-69.856 186.16-33.216 302.08 108.32 358.496 107.088 42.672 222.48 2.272 282.976-92.208 59.152-92.416 51.92-212.064-31.856-324.4l-2.832 8.208c-12.688 35.568-36.192 55.776-49.84 56.304-14.624 0.56-28.896-9.28-36.192-26.24a218.832 218.832 0 0 1-3.488-9.2l-6.96-19.664-3.36-8.96a284.8 284.8 0 0 0-15.872-33.968c-15.68-28.512-37.488-56.864-67.584-85.6z m4.368 368.8a16 16 0 0 1 14.88 10.128c1.056 2.672 2.24 4.72 3.52 6.128a23.984 23.984 0 0 0 38.288-4 14.512 14.512 0 0 0 1.008-2.112 16 16 0 0 1 14.896-10.16h24.4a10.208 10.208 0 0 1 10.08 11.888l-0.624 3.28a72.016 72.016 0 0 1-140.592 0.896l-0.24-1.44-0.08-1.488c0-7.248 5.888-13.12 13.136-13.12z m-43.936-128.032a16 16 0 0 1 16 16v48a16 16 0 0 1-16 16h-16a16 16 0 0 1-16-16v-48a16 16 0 0 1 16-16h16z m175.984 0a16 16 0 0 1 16 16v48a16 16 0 0 1-16 16h-16a16 16 0 0 1-16-16v-48a16 16 0 0 1 16-16h16z" p-id="3325"></path></svg>
      ''';
        break;
      case IconName.like:
        svgXml = '''
        <svg t="1650545450739" class="icon" viewBox="0 0 1040 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3176" width="72" height="72"><path d="M520 288.192l-9.552-9.552-4-3.888c-73.28-69.088-188.432-67.488-259.808 3.888-72.848 72.848-72.848 190.96 0 263.808l262.048 262.048a16 16 0 0 0 22.624 0l262.048-262.048c72.848-72.848 72.848-190.96 0-263.808-72.848-72.848-190.96-72.848-263.808 0l-9.552 9.552z m-46.736 21.232l3.488 3.408 43.248 43.232 43.488-43.488a138.544 138.544 0 0 1 195.936 0l3.184 3.296a138.544 138.544 0 0 1-3.2 192.64L520 747.92 280.576 508.512a138.544 138.544 0 0 1 189.568-201.92l3.12 2.832z" p-id="3177"></path></svg>
       ''';
        break;
    }

    if (svgXml == null) {
      return const SizedBox(width: 0, height: 0);
    }

    return SvgPicture.string(svgXml, width: size, height: size);
  }
}
