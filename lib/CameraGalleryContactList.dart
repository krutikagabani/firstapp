import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraGalleryContactList extends StatefulWidget {
  @override
  State<CameraGalleryContactList> createState() =>
      _CameraGalleryContactListState();
}

class _CameraGalleryContactListState extends State<CameraGalleryContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter packages"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  ImagePicker _picker = ImagePicker();

                  XFile photo =
                      await _picker.pickImage(source: ImageSource.camera);
                  XFile video =
                      await _picker.pickVideo(source: ImageSource.camera);
                },
                child: Text("Camera"),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  ImagePicker _picker = ImagePicker();
                  XFile image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  XFile img =
                      await _picker.pickVideo(source: ImageSource.gallery);
                },
                child: Text("Gallery"),
              ),
              SizedBox(height: 35),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  // Contacts = _contacts;
                  // contacts = await FlutterCntacts.getContacts();
                  // await FlutterContacts.requestPermission();
                  // Contact contact = await FlutterContacts.getContact(contacts.first.id);
                },
                child: Text("Contact List"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
