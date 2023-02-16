import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/Colors/app_colors.dart';
import 'package:task_one/Components/action_button.dart';
import 'package:task_one/Components/image_one.dart';
import 'package:task_one/Components/image_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [blueShade, blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
          ),
        ),
        elevation: 0,
        title: Row(
          children: [
            SizedBox(width: 20.w,),
            Image(
              height: 30.h,
              width: 75.w,
              image: const AssetImage("flutter.png"),
              fit: BoxFit.fill,

            ),
          ],
        ),
        actions:   [
          const ReusableButton(title: 'Multi-Platform'),
          const ReusableButton(title: 'Development'),
          const ReusableButton(title: 'Ecosystem'),
          const ReusableButton(title: 'Showcase'),
          const ReusableButton(title: 'Docs'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            child: const Center(child: Icon(Icons.search, color: white,)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
            height: 20.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child:Center(child: Text('Get Started' , style:  GoogleFonts.poppins(textStyle: TextStyle(color: blue, fontSize: 9.sp, fontWeight: FontWeight.w500)),)),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.h),
            height: 20.h,
            width: 80.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.purple,
            ),
            child:Center(child: Text('Flutter Forward' , style:  GoogleFonts.poppins(textStyle: TextStyle(color: white, fontSize: 9.sp, fontWeight: FontWeight.w500)),)),
          ),

        ],

      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [blueShade, blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
        ),
        child: ListView(
          children: [

            SizedBox(height: 50.h,),
            Center(child: Text('Build apps for any screen' , style:  GoogleFonts.poppins(textStyle: TextStyle(color: white, fontSize: 34.sp, fontWeight: FontWeight.w600)),)),
            SizedBox(height: 50.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // First three pictures
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ImageOne(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/5932d4e90754eb6996bb.jpg")),
                    Row(
                      children: [

                        Padding(
                          padding:  EdgeInsets.only(top: 100.h),
                          child: const ImageTwo(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/42b50a45c3cfd815e2aa.png")),
                        ),
                        SizedBox(width: 5.w,),

                        const ImageTwo(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/32c264af3b738a0d5a5e.png")),

                      ],
                    )
                  ],
                ),
                SizedBox(width: 10.w,),


                // Mobile App Image
                Container(
                  height: 550.h,
                  width: 200.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/90e34daecca082eb9b28.png"),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                SizedBox(width: 10.w,),


                // Second Last Two Images Column
                Column(
                  children: [
                    const ImageTwo(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/7c827ed46aa7efe0109b.png")),
                    SizedBox(height: 10.h,),
                    const ImageTwo(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/b8bd15d096f0557123b1.jpg")),

                  ],
                ),
                SizedBox(width: 10.w,),


                // Last Two Images Column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h,),
                    const ImageOne(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/4e15fea30ba9d8a14208.png")),
                    SizedBox(height: 10.h,),
                    const ImageTwo(networkImage: NetworkImage("https://storage.googleapis.com/cms-storage-bucket/389ff8f9e4d6becae73a.png")),

                  ],
                ),

              ],
            ),


            // Page Bio line Text
            SizedBox(height: 50.h,),
            Text("Flutter transforms the app development process. Build, \n test, and deploy beautiful mobile, web, desktop, and \n embedded apps from a single codebase." ,
              style:  GoogleFonts.poppins(textStyle: TextStyle(color: white, fontSize: 15.sp, fontWeight: FontWeight.w400)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h,),


            // Get Started Button
            Container(
              margin: EdgeInsets.symmetric(horizontal: 450.w),
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: white,
              ),
              child:Center(child: Text('Get Started' , style:  GoogleFonts.poppins(textStyle: TextStyle(color: blue, fontSize: 10.sp, fontWeight: FontWeight.w400)),)),
            )


          ],
        ),
      ),
    );
  }
}
