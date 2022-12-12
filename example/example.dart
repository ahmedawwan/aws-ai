import 'package:aws_ai/aws_ai.dart';
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
  // Rekognition Handler
  // ===========================================================================
  RekognitionHandler rekognition =
      new RekognitionHandler(accessKey, secretKey, region);
  String labelsArray = await rekognition.detectLabels(sourceImagefile!);
  print(labelsArray);
  // ===========================================================================
  // Translate Handler
  // ===========================================================================
  TranslateHandler translate = new TranslateHandler(accessKey, secretKey, region);
  String output = await translate.translate(TranslateLanguages.ar, TranslateLanguages.en, "اسمي محمد");
  print(output);

}
