import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'camera_with_mask_filters_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: SplashScreen(
        seconds: 3,
        navigateAfterSeconds: new CameraWithMaskFiltersScreen(),
        title: Text(
          'AR Face Masks App',
          style: TextStyle(
            fontSize: 45,
            color: Colors.deepPurpleAccent,
            fontFamily: 'Signatra',
          ),
        ),
        image: Image.asset('assets/images/icon.png'),
        backgroundColor: Colors.white,
        photoSize: 140,
        loaderColor: Colors.deepPurpleAccent,
        loadingText: Text(
          'Loading',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 16,
              fontFamily: 'Brand Bold'),
        ),
      ),
    );
  }
}
