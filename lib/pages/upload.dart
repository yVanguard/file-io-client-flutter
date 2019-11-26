import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {

  double _expirationTime = 14;
  String _filePath = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Divider(),
          Text('Choose a file', style: TextStyle(fontSize: 30.0),),
          Divider(),
          Container(
            color: Colors.blue[100],
            child: IconButton(icon: Icon(Icons.folder), iconSize: 100.0, onPressed: (){},),
          ),
          Divider(),
          Text('Set expiration time', style: TextStyle(fontSize: 30.0),),
          Slider(
            value: _expirationTime,
            max: 14,
            label: '${_expirationTime.toStringAsFixed(0)} days',
            divisions: 14,
            onChanged: (newValue){
              setState(() {
                _expirationTime = newValue;
              });
            },
          ),
          Divider(),
          // TODO: create or find a better looking widget for this.
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(30.0),
                right: Radius.circular(30.0)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text('Upload', style: TextStyle(fontSize: 30, color: Colors.white),),
              Icon(Icons.file_upload, color: Colors.white)
                        ],
                      )
                  )
        ],
      ),
    );
  }
}