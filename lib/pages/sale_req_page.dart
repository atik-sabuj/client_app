import 'package:client_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class SaleRequestPage extends StatefulWidget {
  const SaleRequestPage({Key? key}) : super(key: key);

  @override
  State<SaleRequestPage> createState() => _SaleRequestPageState();
}

class _SaleRequestPageState extends State<SaleRequestPage> {
  // Initial Selected Value
  String profilevalue = 'General';
  // List of items in our dropdown menu
  var profiletypes = [
    'General',
    'Special',
    'Admin',
  ];

  String branchvalue = 'Main Branch';
  var branchtypes = [
    'Main Branch',
    'Sub Branch',
    'Regional Branch',
  ];

  String customervalue = 'Customer';
  var customertypes = [
    'Customer',
    'Admin',
  ];

  String brandvalue = 'Brand';
  var brandtypes = [
    'Brand',
    'Food',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Request Page"),
        leading: InkWell(
            onTap :(){
              Navigator.pop(context);
              print('This is On Tap');
            },
            onDoubleTap: (){
              print('This is Double Press');
            },
            onLongPress: (){
              print('This is Long Press');
            },
            child: Icon(Icons.arrow_back)),

        actions: [
          IconButton(
            icon: const Icon(Icons.video_camera_back_sharp),
            onPressed: () async{
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton(
                  // Initial Value
                  value: profilevalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: profiletypes.map((String profiletypes) {
                    return DropdownMenuItem(
                      value: profiletypes,
                      child: Text(profiletypes),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newProfileValue) {
                    setState(() {
                      profilevalue = newProfileValue!;
                    });
                  },
                ),
                DropdownButton(
                  // Initial Value
                  value: branchvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: branchtypes.map((String branchtypes) {
                    return DropdownMenuItem(
                      value: branchtypes,
                      child: Text(branchtypes),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newBranchValue) {
                    setState(() {
                      branchvalue = newBranchValue!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DropdownButton(
                  // Initial Value
                  value: customervalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: customertypes.map((String customertypes) {
                    return DropdownMenuItem(
                      value: customertypes,
                      child: Text(customertypes),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newCustomerValue) {
                    setState(() {
                      customervalue = newCustomerValue!;
                    });
                  },
                ),
                Container(
                  width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      //icon: Icon(Icons.man_sharp),
                      hintText: '0',
                      labelText: 'Customer BL',
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Customer Name',
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 1)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Enter Phone No',
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.blue, width: 1)),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Enter Address',
                      labelText: 'Address',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Total: 0'),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: DropdownButton(
                    // Initial Value
                    value: brandvalue,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: brandtypes.map((String brandtypes) {
                      return DropdownMenuItem(
                        value: brandtypes,
                        child: Text(brandtypes),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newBrandValue) {
                      setState(() {
                        brandvalue = newBrandValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}