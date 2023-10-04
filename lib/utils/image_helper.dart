import 'dart:io';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:pandovie/configuration/pandovie_configuration.dart';

class ImageHelper {
  static Future<Uint8List?> compressImage(File image) async {
    return await FlutterImageCompress.compressWithFile(
      image.absolute.path,
      minHeight: 1280,
      minWidth: 1980,
      quality: 90,
      format: CompressFormat.png,
    );
  }

  static Future<Uint8List?> getNetworkImage(String? path) async {
    if (path == null) {
      return null;
    }

    final uri = Uri.parse('${PandovieConfiguration.imageUrl}$path');

    final response = await http.get(uri);

    return response.bodyBytes;
  }
}
