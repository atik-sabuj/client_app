import 'package:client_app/models/listview_value.dart';
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
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Daily Visit Page'),
        leading: InkWell(
            onTap :(){
              Navigator.pop(context);
              print('This is On Tap');
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                    labelText: 'Representative',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),


              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(height: 42,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        // Initial Value
                        value: profilevalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down,),

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
                    child: Container(height: 42,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        // Initial Value
                        value: customervalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down,),

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
                    ),
                  ),
                ],
              ),


              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                    labelText: 'Customer Name',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Enter Short Name',
                    labelText: 'Short Name',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Enter Email',
                    labelText: 'Email',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Phone',
                    labelText: 'Phone',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Website',
                    labelText: 'Website',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Address',
                    labelText: 'Address',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                    labelText: 'Contact Person',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  //keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Designation',
                    labelText: 'Designation',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: 'Enter Contact No',
                    labelText: 'Contact No',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),


              SizedBox(
                height: 10,
              ),

              Container(height: 42,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Remark',
                    labelText: 'Remark',
                    border: OutlineInputBorder(
                        borderSide:
                        const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

