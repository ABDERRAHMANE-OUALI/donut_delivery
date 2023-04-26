import 'package:flutter/material.dart';

///Creates responsive UI for different screen sizes
///for specific [Orientation]
class SizeConfig {
  //multiplying factors
  static late double _widthMultiplyingFactor;
  static late double _heightMultiplyingFactor;

  ///Pass the width in pixels
  ///
  ///Returns responsive width as [double]
  static double setWidth(double width) => width * _widthMultiplyingFactor;

  ///Pass the height in pixels
  ///
  ///Returns responsive height as [double]
  static double setHeight(double height) => height * _heightMultiplyingFactor;

  static late Orientation _orientation;

  ///Pass the font size in pixels
  ///
  ///Returns responsive size as [double]
  static double setSp(double size) {
    if (_orientation == Orientation.landscape) {
      return setHeight(size);
    }
    return setWidth(size);
  }
}
