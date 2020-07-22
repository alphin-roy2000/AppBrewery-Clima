import 'package:flutter/material.dart';
// import 'location_screen.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:Clima/services/weather.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}

// class LoadingScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _LoadingScreenState();
//   }
// }

// class _LoadingScreenState extends State<LoadingScreen> {
//   @override
//   void initState() {
//     super.initState();
//     getLocationData();
//   }

//   void getLocationData() async {
//     var weatherData = await WeatherModel().getLocationWeather();

//     Navigator.push(context, MaterialPageRoute(builder: (context) {
//       return LocationScreen(
//         locationWeather: weatherData,
//       );
//     }));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SpinKitDoubleBounce(
//           color: Colors.white,
//           size: 100.0,
//         ),
//       ),
//     );
//   }
// }
