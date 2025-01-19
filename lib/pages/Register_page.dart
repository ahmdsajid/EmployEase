import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            height: 250.h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset("images/undraw_welcome_cats_thqn.png"),
            ),
          ),
          SizedBox(height: 20.h,),
          Text(
            "Sign Up",
            style: TextStyle(
              fontSize: 30.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700
            ),
          ),
          SizedBox(height: 20.h,),
          Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 60.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Image.asset("images/google icon.png"),
                      ),
                    )),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Expanded(
                        child: Container(
                      height: 60.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Image.asset("images/facebook icon.png"),
                      ),
                    )),
                    SizedBox(
                      width: 10.0.w,
                    ),
                    Expanded(
                        child: Container(
                      height: 60.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Image.asset("images/apple icon.png"),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Text(
                    "Or, login with...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Container(
                  
                )
        ],),
      )
    );
  }
}