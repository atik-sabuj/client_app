import 'package:client_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [

        ],
      ),
      body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        TextFormField(
        decoration: const InputDecoration(
          icon: Icon(Icons.person),
        hintText: 'Enter Your Name',
        labelText: 'Name',
      ),
    ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Enter Phone Number',
                  labelText: 'Phone',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Enter Your Email',
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.man_sharp),
                  hintText: 'Enter Your NID Number',
                  labelText: 'NID',
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Submit'),
                  ),
              ),
            ]
    ),

    );
  }
}
