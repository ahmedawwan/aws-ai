import 'package:aws_ai/src/RekognitionHandler.dart';
import 'dart:io';

main() async {
  // ===========================================================================
  // Step 1: Load the source file here
  // ===========================================================================
  File? sourceImagefile; 
  // ===========================================================================
  // Step 2: Provide Access Key, Secret Key and Region
  // ===========================================================================
  String accessKey = "", secretKey = "", region = "";
  // ===========================================================================
  // 
  // ===========================================================================
  RekognitionHandler rekognition =
      new RekognitionHandler(accessKey, secretKey, region);
  String labelsArray = await rekognition.detectLabels(sourceImagefile!);
  print(labelsArray);

}
