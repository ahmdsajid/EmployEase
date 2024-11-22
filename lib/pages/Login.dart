import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Image.asset("images/20945301.jpg"),
                )),
            SizedBox(
              height: 20.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30.0.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  //padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email_rounded)),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                Container(
                  //padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Text(
                          "Forgot?",
                          style: TextStyle(color: Colors.blue),
                        )),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Center(
                  child: Container(
                      height: 50.h,
                      width: 300.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue.shade600,
                      ),
                      child: Center(
                          child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20.0.sp,fontWeight: FontWeight.bold),
                      ))),
                ),
                SizedBox(height: 20.h,),
                Center(
                  child: Text("Or, login with...",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                SizedBox(height: 20.0.h,),
                Row(children: [
                  Expanded(child: Container(
                    height: 60.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Image.asset("images/google icon.png"),
                    ),
                  )),
                  SizedBox(width: 10.0.w,),
                  Expanded(child: Container(
                    height: 60.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Image.asset("images/facebook icon.png"),
                    ),
                  )),
                  SizedBox(width: 10.0.w,),
                  Expanded(child: Container(
                    height: 60.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Image.asset("images/apple icon.png"),
                    ),
                  )),
                ],)
              ],
            )
          ],
        ),
      ),
    );
  }
}
