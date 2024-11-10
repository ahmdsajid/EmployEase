import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_basic_app/pages/employee.dart';
import 'package:firebase_basic_app/services/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController agecontroller = new TextEditingController();
  TextEditingController locationcontroller = new TextEditingController();

  Stream? Employeestream;

  getontheload() async {
    Employeestream = await DatabaseMethods().getEmployeeDetails();
    setState(() {});
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

  Widget allEmployeeDetails() {
    return StreamBuilder(
        stream: Employeestream,
        builder: (context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(10),
                        elevation: 5.0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Name : " + ds["Name"],
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20.0.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      namecontroller.text =ds["Name"];
                                      agecontroller.text = ds["Age"];
                                      locationcontroller.text = ds["Location"];
                                      EditEmployeeDetails(ds["Id"]);
                                    },
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  SizedBox(width: 5.0.w,),
                                  GestureDetector(
                                    onTap: ()async {
                                      await DatabaseMethods().deleteEmployeeDetails(ds["Id"]);
                                    },
                                    child: Icon(Icons.delete, color: Colors.black,))
                                ],
                              ),
                              Text(
                                "Age : " + ds["Age"],
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20.0.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Location : " + ds["Location"],
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 20.0.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Employee()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Fluter",
              style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              "Firebase",
              style: TextStyle(
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            )
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
        child: Column(
          children: [
            Expanded(child: allEmployeeDetails()),
          ],
        ),
      ),
    );
  }

  Future EditEmployeeDetails(String id) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.cancel)),
                        SizedBox(
                          width: 40.0.w,
                        ),
                        Text(
                          "Edit",
                          style: TextStyle(
                              fontSize: 24.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 24.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange),
                        )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: namecontroller,
                          decoration: InputDecoration(border: InputBorder.none),
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.0.sp),
                        )),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Text(
                      "Age",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: agecontroller,
                          decoration: InputDecoration(border: InputBorder.none),
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.0.sp),
                        )),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: locationcontroller,
                          decoration: InputDecoration(border: InputBorder.none),
                          style:
                              TextStyle(color: Colors.black, fontSize: 20.0.sp),
                        )),
                        SizedBox(height: 30.0,),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal
                            ),
                            onPressed: ()async{
                              Map<String, dynamic> updateInfoMap={
                                "Name": namecontroller.text,
                                "Age": agecontroller.text,
                                "Id": id,
                                "Location": locationcontroller.text,
                              };
                              await DatabaseMethods().updateEmployeeDetails(id, updateInfoMap).then((value){
                                Navigator.pop(context);
                              });
                            }, child: Text("Update",style: TextStyle(color: Colors.black),)),
                        )
                  ],
                ),
              ),
            ),
          ));
}
