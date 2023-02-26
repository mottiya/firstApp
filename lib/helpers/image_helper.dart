import 'package:flutter/material.dart';

abstract class ImageHelper {
  static const _path = 'assets/images/';
  static AssetImage getimage(String imageName) => AssetImage('$_path$imageName.png');
}