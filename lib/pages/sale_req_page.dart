import 'package:client_app/models/listview_value.dart';
import 'package:client_app/pages/home_page.dart';
import 'package:client_app/view_model/product_category_list.dart';
import 'package:flutter/material.dart';

class SaleRequestPage extends StatefulWidget {
  const SaleRequestPage({Key? key}) : super(key: key);

  @override
  State<SaleRequestPage> createState() => _SaleRequestPageState();
}

class _SaleRequestPageState extends State<SaleRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Sale Request Page"),
        backgroundColor: Colors.teal,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
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
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter Name',
                    labelText: 'Customer Name',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1),),

                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(height: 42,
                child: TextFormField(
                  keyboardType: TextInputType.number,
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
                  decoration: const InputDecoration(
                    hintText: 'Enter Address',
                    labelText: 'Address',
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue, width: 1)),
                  ),
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 42,
                    //padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Total: 0'),
                    ),
                  ),
                  Container(height: 42,
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
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: showCategoryList(),    //Category List like All, Telecom Devices and Accessories and others
                  ),
                ],
              ),


              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 42,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter Name/Code',
                          labelText: 'Item Name/Code',
                          border: OutlineInputBorder(
                              borderSide:
                              const BorderSide(color: Colors.blue, width: 1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/phone.png",height: 60,width: 50,),
                  const Text("Realme C11 2 GB | 32 GB (Blue) ",
                    style: TextStyle(
                        color: Color(0xAD707070),
                        fontSize: 18),),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                        Column(
                          children: [
                            Text("TP.0",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  backgroundColor: Colors.blue,
                              fontWeight: FontWeight.w600,
                              ),),
                          ],
                        ),
                      SizedBox(height: 30,),

                      Column(
                        children: [
                          Text("MRP.10490",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                backgroundColor: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),),
                        ],

                      ),

                    ],
                  ),

                  SizedBox(width: 5,),
                  Row(
                    children: [
                      Text("(PSC)",
                        style: TextStyle(color:
                        Color(0xAD707070),
                            fontSize: 18,
                          height: 3,
                        ),),
                    ],
                  ),

                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text("Minimum Order 1", style: TextStyle(color: Color(
                          0xAD707070),fontSize: 18),),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.5,color: Colors.grey),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(8)
                            )
                        ),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8)
                                    )),

                                child: InkWell(onTap: (){
                                  print('This is Remove On Tap');
                                },
                                    child: Icon(Icons.remove,size:36,color: Colors.white,))),

                            SizedBox(width: 24,),
                            Text("1",style: TextStyle(color: Colors.black, fontSize: 20),),

                            SizedBox(width: 24,),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8)
                                    )),

                                child: InkWell(onTap: (){
                                  print('This is Add On Tap');
                                },
                                    child: Icon(Icons.add,size:36,color: Colors.white,))),
                          ],
                        ),
                      ),
                      Text("Total: Tk.10490", style: TextStyle(color: Color(
                          0xAD707070),fontSize: 18),),
                    ],
                  ),

                  SizedBox(width: 1,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: ElevatedButton(
                          onPressed: (){},
                          child: Text("Add",
                            style: TextStyle(color:
                            Colors.white,
                              fontSize: 18,
                            ),),
                        ),
                      ),
                    ],
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
