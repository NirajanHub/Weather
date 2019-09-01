import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  String url;
  NetworkHelper(this.url);
  void getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var data = response.body;
      var data2 = jsonDecode(data);
      var anotherway = jsonDecode(data)['coord']['lon'];
      print(data2);
      print(anotherway);
    } else {
      print(response.statusCode);
    }
  }
}
