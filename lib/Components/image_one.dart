import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageOne extends StatelessWidget {
  final NetworkImage networkImage;
  const ImageOne({Key? key,
    required this.networkImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 150.h,
      width: 200.w,
      image: networkImage,
      fit: BoxFit.fill,

    );
  }
}
