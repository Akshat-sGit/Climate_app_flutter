import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:ui';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
  }

  void getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
    } catch (e) {
      print(e); 
    }
  }

  void somethingThatExpectedLessThan10(int n){ 
    try{ 
      somethingThatExpectedLessThan10(12); 
    } catch (e){ 
      print(e); 
    }
  }

  Widget build(BuildContext context) {
    String myMargin = 'abc';
    double myMarginAsDouble;

    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }

    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(30),
      color: Colors.red,
    ));
  }
}
