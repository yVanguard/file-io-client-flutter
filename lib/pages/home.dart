import 'package:file_io_client/pages/about.dart';
import 'package:file_io_client/pages/upload.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // https://www.youtube.com/watch?v=n_FRmFm9Tyw
  int _selectedPage = 0;
  List _pageOptions = [
    UploadPage(),
    Text('Content of History page'),
    AboutPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('File.io Cloud Client ☁', style: TextStyle(),),
      actions: <Widget>[
        Icon(Icons.lightbulb_outline)
        ],
      ),
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_upload),
            title: Text('Upload')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('History')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('About')
          ),
        ],
      ),
    );
  }
}