import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Weather extends StatelessWidget{
  const Weather ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    children: [

                      SizedBox(width: 32.w,),
                        Text("Good Morning,\n Ahmed Saber",
                        style: TextStyle(color: Color(0xff6D6265),
                        fontFamily: "Body 2/regular",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                        ),
                       Spacer(),
                      IconButton(onPressed: (){},
                        icon: ImageIcon(
                          AssetImage("assets/icons/sunny.png"),
                          size: 32,
                          color: Colors.amberAccent,
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Text("Sunny 32oC",
                      style:TextStyle(
                        color: Color(0xff6D6265),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ) ,
                      ),
                      SizedBox(width: 32.w,),
                    ],
                  ),
                  SizedBox(width: 32.w,),
                  Text("Sun 9 April, 2023",
                  style: TextStyle(
                    color: Color(0xff231F20),
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  ),
                ],
              ),
          ),
      ),
    );
  }
}