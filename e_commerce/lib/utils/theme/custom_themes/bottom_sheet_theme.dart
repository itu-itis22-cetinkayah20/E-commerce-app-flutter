import 'package:flutter/material.dart';

class TBottomSheetTheme{
  TBottomSheetTheme._();
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white, 
    modalBackgroundColor: Colors.white, // This is the background color of the bottom sheet when it is displayed as a modal bottom sheet.
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  ); 
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.black, 
    modalBackgroundColor: Colors.black, // This is the background color of the bottom sheet when it is displayed as a modal bottom sheet.
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
  );
  
}