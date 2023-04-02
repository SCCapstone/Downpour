import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/models/userModel.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as style;

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

int whichImageNo = UserPreferences.myUser.imageNo;

class _MyGridViewState extends State<MyGridView> {
  // Set an int with value -1 since no card has been selected
  int selectedCard = UserPreferences.myUser.imageNo;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(30),
        shrinkWrap: false,
        itemCount: profileImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                // Ontap of each card, set the defined int to the grid view index
                selectedCard = index;
                whichImageNo = index;
              });
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
                side: BorderSide(
                  color: selectedCard == index ? Colors.amber : style.dark,
                  width: 3.0,
                ),
              ),
              // Check if the index is equal to the selected Card integer
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(profileImages[index]))
                  //child: Image.asset(images[index]),
                  ),
            ),
          );
        });
  }
}

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController =
      TextEditingController(text: UserPreferences.myUser.name);
  TextEditingController aboutController =
      TextEditingController(text: UserPreferences.myUser.about);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(255, 117, 178, 221),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 200,
            child: MyGridView(),
          ),
          Container(
              margin: const EdgeInsets.all(30),
              child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    labelStyle: TextStyle(color: Colors.black),
                  ))),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 30),
              child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 7,
                  controller: aboutController,
                  decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    labelText: 'About Me',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ))),
          Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: style.secondary,
                ),
                child: const Text('Submit Changes'),
                onPressed: () {
                  // state conditions for changing name
                  if (nameController.text != "") {
                    UserPreferences.myUser.name = nameController.text;
                  }
                  UserPreferences.myUser.about = aboutController.text;
                  UserPreferences.myUser.imageNo = whichImageNo;
                  UserPreferences.myUser.saveData();
                  Navigator.pop(context);
                },
              ))
        ],
      ),
    );
  }
}
