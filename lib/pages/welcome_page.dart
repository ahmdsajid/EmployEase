import 'dart:async';

import 'package:firebase_basic_app/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHome()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: 100.h,
                  width: 100.h,
                  child: Image.asset("images/world_4128963.png")),
            ),
            SizedBox(height: 10.0.h,),
            Text(
              "EmployeEase",
              style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold
              ),
            ),
            // SizedBox(height: 40.h,),
            // Text("data")
          ],
        ),
      ),
    );
  }
}
