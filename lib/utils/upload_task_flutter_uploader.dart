import 'package:file_io_client/models/result_upload.dart';
import 'package:flutter_uploader/flutter_uploader.dart';

final uploader = FlutterUploader();

// Trying to figure out how to send a cat to file.io
// https://pub.dev/documentation/flutter_uploader/latest/

Future<ResultUpload> uploadCat({filename: '/storage/emulated/0/Download/catpeek.png'}) async {

  UploadTaskResponse result;

  await uploader.enqueue(
    url: "https://file.io",
    files: [FileItem(filename: filename, savedDir: '', fieldname:"file")],
    method: UploadMethod.POST,
  );

  uploader.result.listen((result) {
      //... code to handle result
      print('result.response:');
      print('---------------------');
      print(result.response);
      print('---------------------');
  }, onError: (ex, stacktrace) {
    print("$ex, $stacktrace");
      // ... code to handle error
  });

  return ResultUpload.fromJson(result.response);
}