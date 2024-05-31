import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePicture());
}

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: ProfilePictureWidget(),
      ),
    );
  }
}

class ProfilePictureWidget extends StatefulWidget {
  @override
  _ProfilePictureWidgetState createState() => _ProfilePictureWidgetState();
}

class _ProfilePictureWidgetState extends State<ProfilePictureWidget> {
  String _currentProfilePicture = 'data:image/jpeg;base64,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';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              _showProfilePictureBottomSheet(context);
            },
            child: Stack(
              alignment: Alignment.bottomRight,
           children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(_currentProfilePicture),
          ),

          Padding(padding: EdgeInsets.only(top: 150, left: 100, right: 40)),
          Icon(Icons.camera_alt, color: Colors.black87,size: 40,),
          ],
          ),
          ),
        ],
      ),
    );
  }


  void _showProfilePictureBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a photo'),
                onTap: () {
                  // Implement logic to take a photo
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from gallery'),
                onTap: () {
                  // Implement logic to choose from gallery
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.remove_circle),
                title: Text('Remove current photo'),
                onTap: () {
                  // Implement logic to remove current photo
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

