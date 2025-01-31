import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addEmployeeDetails(
      Map<String, dynamic> employeeInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Employee")
        .doc(id)
        .set(employeeInfoMap);
        
  }

  Future<Stream<QuerySnapshot>> getEmployeeDetails()async{
    return await FirebaseFirestore.instance.collection("Employee").snapshots();
  }

  Future updateEmployeeDetails( String id, Map<String, dynamic> updateInfoMap,)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).set(updateInfoMap);
  }

  Future deleteEmployeeDetails( String id)async{
    return await FirebaseFirestore.instance.collection("Employee").doc(id).delete();
  }
}

