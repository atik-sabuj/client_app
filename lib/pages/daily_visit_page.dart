import 'package:flutter/material.dart';

class DailyVisitPage extends StatefulWidget {
  const DailyVisitPage({Key? key}) : super(key: key);

  @override
  State<DailyVisitPage> createState() => _DailyVisitPageState();
}

class _DailyVisitPageState extends State<DailyVisitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Visit Page'),
        leading: InkWell(
            onTap :(){
              Navigator.pop(context);
              print('This is On Tap');
            },
            child: Icon(Icons.arrow_back)),
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

          ]
      ),

    );
  }
}
