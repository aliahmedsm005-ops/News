import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultTextFormField extends StatelessWidget {
  const DefaultTextFormField ({
    super.key,this.prefixIconData,
    this.suffixIcon,this.hintText,
  });
  final String? hintText;
  final IconData? prefixIconData;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 308.w,
      child: TextFormField(

       decoration: InputDecoration(
           hintText:hintText,
         hintStyle: TextStyle(color: Color(0xff231F20), fontSize: 14),
           prefixIcon: Icon(prefixIconData),
           suffixIcon: suffixIcon,
         fillColor: Color(0xffF0EFF0),
         border:OutlineInputBorder(
           borderRadius:  BorderRadius.circular(8),
           borderSide: BorderSide(color: Color(0xff577CD9),width: 1)
         ),
         enabledBorder: OutlineInputBorder(
             borderRadius:  BorderRadius.circular(8),
             borderSide: BorderSide(color: Color(0xff577CD9),width: 1)
         ),
         focusedBorder: OutlineInputBorder(
             borderRadius:  BorderRadius.circular(8),
             borderSide: BorderSide(color: Color(0xff577CD9),width: 1)
         ),
       ),
        style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xff231F20)
        ),
      ),
    );
  }
}