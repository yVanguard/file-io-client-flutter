
import 'package:file_io_client/models/result_upload.dart';
import 'package:file_io_client/utils/upload_task_flutter_uploader.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class UploadPage extends StatefulWidget {
  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {

  double _expirationTime = 14;
  String _filePath;
  ResultUpload result;

  var _resultField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Divider(),
          Text('Choose a file', style: TextStyle(fontSize: 25.0),),
          Divider(),
          Container(
            color: Colors.blue[100],
            child: IconButton(
              icon: Icon(Icons.folder),
              iconSize: 60.0,
              onPressed: () async {
                _filePath = await FilePicker.getFilePath(type: FileType.ANY);
                },
              ),
          ),
          Divider(),
          Text('Set expiration time', style: TextStyle(fontSize: 25.0),),
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
          RaisedButton(onPressed: (){
            print("Upload function was called.");
            //uploadCat();
          },
          child: Text('Upload')
          ),

          TextFormField(controller: _resultField,),


          RaisedButton(onPressed: (){

          },
          child: Text('Debug'),)
        ],
      ),
    );
  }
}