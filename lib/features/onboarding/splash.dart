import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/core/helper/navigator.dart';
import 'package:news/core/utils/app_assets.dart';
import 'start.dart';
class Splash extends StatefulWidget{
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((v)
    {
      goTo(context, Start());

    }
    );

  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppAssets.splashImage)
                ],
              ),


      ),
    );
  }
}