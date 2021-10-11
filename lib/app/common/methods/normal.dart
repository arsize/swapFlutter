/*
 * @Author: Arsize 
 * @Date: 2021-09-03 16:28:13 
 * @Describe: 常用的简便函数
 */

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';

/// 判断list中是否有某元素
bool isInTheList(e, List list) {
  return list.any((element) => element == e);
}

// png转bitmap
Future<Uint8List> getBytesFromAsset(String path, int width) async {
  ByteData data = await rootBundle.load(path);
  ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
      targetWidth: width);
  ui.FrameInfo fi = await codec.getNextFrame();
  return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
      .buffer
      .asUint8List();
}
