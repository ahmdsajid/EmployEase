import 'package:firebase_basic_app/pages/Home.dart';
import 'package:firebase_basic_app/pages/Register_page.dart';
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
      resizeToAvoidBottomInset: false,
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
                  child: Image.asset("images/20945301.jpg"),
                )),
            SizedBox(
              height: 10.h,
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
                      border: Border.all(width: 0.7),
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
                      border: Border.all(width: 0.7),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(top: 15, right: 15),
                          child: Text(
                            "Forgot?",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        )),
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHome()));
                  },
                  child: Center(
                    child: Container(
                        height: 50.h,
                        width: 300.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF1a1aff),
                        ),
                        child: Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20.0.sp, fontWeight: FontWeight.bold),
                        ))),
                  ),
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
                  height: 20.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to EmployeEase?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                          });
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                          ),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
