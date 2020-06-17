import 'package:flutter/material.dart';
import 'NewPage.dart';

class Design extends StatelessWidget {
  final Image _image;

  //Constructor
  Design(this._image);

  // deals with the image
  Widget _thumbnailStyle() {
    return Container(
      width: 100,
      child: _image,
    );
  }

  // deals with the title and subtitles
  Widget _someTitle(String title, String subtitle) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }

  Widget _trailingIcon(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(Icons.favorite_border),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return NewPage();
            }
          ));
        },
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    // creates general card view of each image in the card
    return Container(
      width: double.infinity,
      child: Card(
        elevation: 3,
        // creates rounded card shape
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        // adds margin
        margin: EdgeInsets.all(5),
        // creates the content
        child: ListTile(
          leading: _thumbnailStyle(),
          title: _someTitle("This is a title", "Here is a subtitle"),
          trailing: _trailingIcon(context),
        ),
      ),
    );
  }
}