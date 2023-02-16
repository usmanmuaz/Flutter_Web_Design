import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTwo extends StatelessWidget {
  final NetworkImage networkImage;
  const ImageTwo({Key? key,
    required this.networkImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: 200.h,
      width: 100.w,
      image: networkImage,
      fit: BoxFit.fill,

    );
  }
}
