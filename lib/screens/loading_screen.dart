import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';


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
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void somethingThatExpectedLessThan10(int n) {
    try {
      somethingThatExpectedLessThan10(12);
    } catch (e) {
      print(e);
    }  
  }

  Widget build(BuildContext context) {

    String myMargin = 'abc';
    // ignore: unused_local_variable
    late double myMarginAsDouble;
    try {
      myMarginAsDouble = double.parse(myMargin);
    } catch (e) {
      print(e);
    }

    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(30),
          color: Colors.red,
          )
    );
  }
}