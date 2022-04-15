import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

enum IconName { search, lib, setting }

class IconFonts extends StatelessWidget {
  final IconName name;
  final String color;
  final List<String> colors;
  final double size;

  const IconFonts(this.name, {this.size = 18, required this.color, required this.colors});

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
        <svg  viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"  width="72" height="72"><path d="M439.264 208a16 16 0 0 0-16 16v67.968a239.744 239.744 0 0 0-46.496 26.896l-58.912-34a16 16 0 0 0-21.856 5.856l-80 138.56a16 16 0 0 0 5.856 21.856l58.896 34a242.624 242.624 0 0 0 0 53.728l-58.88 34a16 16 0 0 0-6.72 20.176l0.848 1.68 80 138.56a16 16 0 0 0 21.856 5.856l58.912-34a239.744 239.744 0 0 0 46.496 26.88V800a16 16 0 0 0 16 16h160a16 16 0 0 0 16-16v-67.968a239.744 239.744 0 0 0 46.512-26.896l58.912 34a16 16 0 0 0 21.856-5.856l80-138.56a16 16 0 0 0-4.288-20.832l-1.568-1.024-58.896-34a242.624 242.624 0 0 0 0-53.728l58.88-34a16 16 0 0 0 6.72-20.176l-0.848-1.68-80-138.56a16 16 0 0 0-21.856-5.856l-58.912 34a239.744 239.744 0 0 0-46.496-26.88V224a16 16 0 0 0-16-16h-160z m32 48h96v67.376l28.8 12.576c13.152 5.76 25.632 12.976 37.184 21.52l25.28 18.688 58.448-33.728 48 83.136-58.368 33.68 3.472 31.2a194.624 194.624 0 0 1 0 43.104l-3.472 31.2 58.368 33.68-48 83.136-58.432-33.728-25.296 18.688c-11.552 8.544-24.032 15.76-37.184 21.52l-28.8 12.576V768h-96v-67.376l-28.784-12.576c-13.152-5.76-25.632-12.976-37.184-21.52l-25.28-18.688-58.448 33.728-48-83.136 58.368-33.68-3.472-31.2a194.624 194.624 0 0 1 0-43.104l3.472-31.2-58.368-33.68 48-83.136 58.432 33.728 25.296-18.688a191.744 191.744 0 0 1 37.184-21.52l28.8-12.576V256z m47.28 144a112 112 0 1 0 0 224 112 112 0 0 0 0-224z m0 48a64 64 0 1 1 0 128 64 64 0 0 1 0-128z" 
        fill="''' +
            getColor(1, color, colors, '#4A4A4A') +
            ''''"></path></svg>
        ''';
        break;
      case IconName.lib:
        break;
    }

    if (svgXml == null) {
      return const SizedBox(width: 0, height: 0);
    }

    return SvgPicture.string(svgXml, width: size, height: size);
  }
}
