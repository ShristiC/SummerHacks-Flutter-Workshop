import 'package:flutter/material.dart';
import './Design.dart';

class HomePage extends StatefulWidget {
  final String _title;

  HomePage(this._title);

  @override
  _HomePageState createState() => _HomePageState(this._title);
}

class _HomePageState extends State<HomePage> {
  final String _title;

  // dealing with the list of images
  List<String> _imagePaths = [
      './assets/images/sunset.jpg',
      './assets/images/mountains.jpg',
      './assets/images/ocean.jpg'
    ];
  List<Image> _images = List<Image>();

  _HomePageState(this._title);

  // adds images to _images
  void _populateImages() {
    for(var i = 0; i < _imagePaths.length; i++) {
      Image pic = Image(
        image: AssetImage(_imagePaths[i]),
      );
      _images.add(pic);
    }
  }

  // creates the UI for each list view
  Widget _buildItemsForListView(BuildContext context, int index) {
    print("Inside list view");
    return Design(_images[index]);
  }

  @override
  Widget build(BuildContext context) {
    // creates list of images first
    _populateImages();
    print(_images.length);

    // controls main view
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: Text(
          this._title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      // generates list view
      body: ListView.builder(
        itemCount: _images.length,
        itemBuilder: _buildItemsForListView,
      ),
    );
  }
}