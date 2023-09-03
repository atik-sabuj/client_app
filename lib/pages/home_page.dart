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

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  //set border radius more than 50% of height and width to make circle
                ),
                child: SizedBox(
                    height: 140,
                    width: 170,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => const ProfilePage()));
                            },
                              child: Image.asset(
                                "images/my_profile.png",
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "My Profile",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  height: .2),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
/*              Center(
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
              ),*/
            ],
          ),

        ),
    );
  }
}
