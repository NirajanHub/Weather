import 'package:geolocator/geolocator.dart';

class Location {
  double latitute, longitude;
  Future<Position> getCurrentLocation() async {
    Position position = await Geolocator()
        .getLastKnownPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
    latitute = position.latitude;
    longitude = position.longitude;
    return position;
  }
}
