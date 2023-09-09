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
        backgroundColor: Colors.teal,
      ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/md.jpeg",height: 100,width: 100,),
                  const Text("Muskan Digital",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      //backgroundColor: Colors.blue,
                      fontWeight: FontWeight.w900,),),
                ],
              ),

              SizedBox(height: 20,),
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
                                height: 70,
                                width: 70,
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
                                  MaterialPageRoute(builder: (context) => const DailyVisitPage()));
                            },
                              child: Image.asset(
                                "images/daily_visit.png",
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Daily Visit",
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
                                  MaterialPageRoute(builder: (context) => const SaleRequestPage()));
                            },
                              child: Image.asset(
                                "images/sale_req.png",
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Sale Request",
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
            ],
            ),
          ),
        ),
    );
  }
}
