import 'package:flutter/painting.dart';

class ColorfulGradients {

  static const LinearGradient wavefulGradient = LinearGradient(
    colors: [Color(0xFF448AFF), Color(0xFF03A9F4)],
    end: FractionalOffset(0.6, 0.0),
    stops: [0.0, 1.0],
  );

  static const LinearGradient negativeActionGradient = LinearGradient(
    colors: [Color(0xFFF44336), Color(0xFFFF5252)],
    end: FractionalOffset(0.6, 0.0),
    stops: [0.0, 1.0],
  );

  static const LinearGradient superlikeGradient = LinearGradient(
    colors: [Color(0xFFF44336), Color(0x96FF5252)],
    end: FractionalOffset(1.4, 0.0),
    stops: [0.0, 1.0],
  );

  static const List<Gradient> colorfulGradients = [
    wavefulGradient,
    LinearGradient(
      colors: [Color(0xFF64FFDA), Color(0xFF448AFF)],
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF448AFF), Color(0xFFE040FB)],
      end: FractionalOffset(0.6, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFFF44336), Color(0xFFFFEB3B)],
      end: FractionalOffset(1.2, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFFB2FF59), Color(0xFF4CAF50)],
      end: FractionalOffset(0.8, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF3F51B5), Color(0xFF536DFE)],
      end: FractionalOffset(1.2, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF0F70FF), Color(0xFF7B82FF), Color(0xFFC384F4)],
      end: FractionalOffset(1.2, 0.0),
      stops: [0.0, 0.5, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF15F4EE), Color(0xFFFF1493)],
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFFFF80AB), Color(0xFFB3E5FC)],
      begin: FractionalOffset(0.3, 0.0),
      end: FractionalOffset(1.1, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF001170), Color(0xFFC02942), Color(0xFFFFE26E)],
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 0.5, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF67A295), Color(0xFFE6B062), Color(0xFFE4614A)],
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 0.4, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF212121), Color(0xFF434343),],
      end: FractionalOffset(1.2, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFFE6D4D2), Color(0xFFFFF6F5),],
      end: FractionalOffset(1.2, 0.0),
      stops: [0.0, 1.0],
    ),
    LinearGradient(
      colors: [Color(0xFF1DE9B6), Color(0xFF64FFDA), Color(0xFFA7FFEB)],
      end: FractionalOffset(1.0, 0.0),
      stops: [0.0, 0.5, 1.0],
    ),
  ];

  static const blackEleganceGradientVariation = LinearGradient(
    colors: [Color(0xFF434343), Color(0xFF656565),],
    end: FractionalOffset(1.2, 0.0),
    stops: [0.0, 1.0],
  );

  static Gradient getColorfulGradient(int? id) {
    if(id != null && id >= 0 && id < colorfulGradients.length) {
      return colorfulGradients[id];
    }else {
      return colorfulGradients.first;
    }
  }

  static Gradient getColorfulGradientOnSecondaryColor(int id) {
    // On secondary color background in dark theme the 'Black Elegance' gradient isn't fully visible so its variation should be used.
    if(id == 11) {
      return blackEleganceGradientVariation;
    }else {
      return getColorfulGradient(id);
    }
  }

  static Gradient getSingleColorGradient(Color color) {
    return LinearGradient(colors: [color]);
  }
}