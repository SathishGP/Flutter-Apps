import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {

  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
    try {
      //Make request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);

      //Get properties of data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
//    print(datetime);
//    print(offset);

      //Create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //Set to time property
      isDaytime = now.hour > 6 && now.hour < 20? true: false;
      time = DateFormat.jm().format(now);

    }
    catch(e) {
      print('Caught error: $e');
      time = 'Could not get time data!!';
    }
  }
}
