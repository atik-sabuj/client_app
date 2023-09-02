import 'package:client_app/pages/daily_visit_page.dart';
import 'package:client_app/pages/profile_page.dart';
import 'package:client_app/pages/sale_req_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  child: Text('My Profile'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    //side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 30, fontStyle: FontStyle.normal),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),

                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ProfilePage()));
                  },
                ),
              ),

              const SizedBox(height: 10,),

              ElevatedButton(
                child: Text('Daily Visit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 30, fontStyle: FontStyle.normal),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DailyVisitPage()));
                },
              ),

              const SizedBox(height: 10,),

              ElevatedButton(
                child: Text('Sale Request'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 30, fontStyle: FontStyle.normal),
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SaleRequestPage()),
                    );
                  }
              ),
            ],
          ),

        ),
    );
  }
}
