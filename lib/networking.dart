import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.givenUrl);
  late String givenUrl;

  Future getData()async{
    var url = Uri.parse(givenUrl);
    var response = await http.post(url);
    if (response.statusCode == 200){
      String body = response.body;
      var decodeData = jsonDecode(body);
      return decodeData;
    }else{
      print(response.statusCode);
    }
  }
}