import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:file_picker/file_picker.dart';

import '../models/User.dart';

class StorageService {



  Future<void> uploadImage(User user) async {
    // Select a file from the device
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      withData: false,
      // Ensure to get file stream for better performance
      withReadStream: true,
      allowedExtensions: ['jpg', 'png', 'gif'],
    );

    if (result == null) {
      safePrint('No file selected');
      return;
    }

    // Upload file with its filename as the key
    final platformFile = result.files.single;
    final fileKey = platformFile.name+UUID.getUUID().toString();
    try {
      final result = await Amplify.Storage.uploadFile(
        localFile: AWSFile.fromStream(
          platformFile.readStream!,
          size: platformFile.size,
        ),
        key: fileKey ,
        onProgress: (progress) {
          safePrint('Fraction completed: ${progress.fractionCompleted}');
        },
      ).result;

      safePrint('Successfully uploaded file: ${result.uploadedItem.key}');


      

      final urlResult = await Amplify.Storage.getUrl(key: fileKey).result;

     User newUser = user.copyWith(userImagekey: fileKey, userImageurl: urlResult.url.toString());
      await Amplify.DataStore.save(newUser);

      safePrint('Successfully changed user info');
    } on StorageException catch (e) {
      safePrint('Error uploading file: $e');
      rethrow;
    }
  }

}
