import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
 final  db = FirebaseFirestore.instance;
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _name = '';
  String _Adress = '';

 void SendData() {
   if (_formKey.currentState!.validate()) {
     final user = <String, String>{
       "email": _email,
        "name": _name,
       "Adress": _Adress,
     };

     db
         .collection("users")
         .doc()
         .set(user)
         .onError((e, _) => print("Error writing document: $e")); }

 }
//  void SendData() {
//    if (_formKey.currentState!.validate()) {
//      // Create a new user with a first and last name
//      final user = <String, dynamic>{
//        "email": _email,
//        "name": _name,
//        "Adress": _Adress,
//      };
//
// // Add a new document with a generated ID
//      db.collection("users").add(user).then((DocumentReference doc) =>
//          print('DocumentSnapshot added with ID: ${doc.id}'));
//    }
//
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(labelText: 'Adress'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Adress';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _Adress = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  SendData();
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
