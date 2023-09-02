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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sale Request Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
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
      ),
    );
  }
}
