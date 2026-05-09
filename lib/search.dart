import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/components/defaultTextFormField.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 20.w,),

                Column(
                  children: [
                    DefaultTextFormField(
                      hintText:"Search" ,
                      prefixIconData: Icons.search,
                      suffixIcon:Icon( Icons.close),
                
                    ),
                  ],
                ),
                SizedBox(width: 20.w,),
                Text("cancel",
                style: TextStyle(color: Color(0xff577CD9)),
                ),

              ],
            ),
          ),
    );
  }
}