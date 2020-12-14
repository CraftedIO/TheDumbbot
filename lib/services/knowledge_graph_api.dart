import 'package:http/http.dart' as http;
import 'dart:convert';

class KnowledgegraphApi{

  final _apiKey = "AIzaSyAuKuCowL87rIB4N8DK1og7oLQtgyRhBYQ";
  
  KnowledgegraphApi();

  Future getData(String query, int limit) async{
    try{
      final url = 'https://kgsearch.googleapis.com/v1/entities:search?query=$query&key=${this._apiKey}&limit=$limit&indent=True';
      final response = await http.get(url);
      final jsonMap = json.decode(response.body);
      print('$jsonMap');
    }catch(e){
      print('Request failed');
    }
  }
  
}