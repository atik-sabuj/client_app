import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<File> selectedImages = [];
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.teal,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              selectedImages.isEmpty
                  ? InkWell(
                onTap: (){
                  getImages();
                },
                    child: ClipOval(
                child: SizedBox.fromSize(
                    size: Size.fromRadius(60), // Image radius
                    child: Image.asset("images/avatar.png",fit:BoxFit.cover,),
                ),
              ),
                  )
                  :
              /*CircleAvatar(
                radius: 82, // Image radius
                foregroundImage: FileImage(selectedImages[0]),
              ),*/

              InkWell(
                onTap: (){
                getImages();
              },
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(60), // Image radius
                    child: Image.file(selectedImages[0],fit:BoxFit.cover,),
                  ),
                ),
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(height: 42,
                      child: TextFormField(
                        //keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Enter Name',
                          labelText: 'Name',
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
                          icon: Icon(Icons.phone),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
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
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.man_sharp),
                      hintText: 'Enter NID Number',
                      labelText: 'NID',
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue, width: 1)),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }



  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
      imageQuality: 100,
      maxHeight: 2000,
      maxWidth: 2000,
    );
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
         selectedImages.clear();
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < 1; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        }
/*        else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }*/
      },
    );
  }
}
