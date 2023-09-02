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
        title: Text('Home Page'),
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
                    primary: Colors.green,
                    // side: BorderSide(color: Colors.yellow, width: 5),
                    textStyle: const TextStyle(
                        color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(height: 10,),

              ElevatedButton(
                child: Text('Daily Visit'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {},
              ),

              const SizedBox(height: 10,),

              ElevatedButton(
                child: Text('Sale Request'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  // side: BorderSide(color: Colors.yellow, width: 5),
                  textStyle: const TextStyle(
                      color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {},
              ),
            ],
          ),

        ),
    );
  }
}
