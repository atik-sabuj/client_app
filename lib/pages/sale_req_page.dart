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
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

              Container(width: 150,
                child: TextFormField(
                  decoration: const InputDecoration(
                    //icon: Icon(Icons.man_sharp),
                    hintText: '0',
                    labelText: 'Customer BL',
                  ),
                ),
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(width: 250,
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Customer Name',
              ),
            ),
          ),
            ],
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 150,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter Phone Number',
                    labelText: 'Phone',
                  ),
                ),
              ),

              Container(width: 150,
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
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text('Total: 0'),
                ),
              ),

              Container(
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
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
    );
  }
}
