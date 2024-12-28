import 'package:http/http.dart' as http;
import 'dart:convert';

class APIService {
  static Future<List<dynamic>> fetchDisasters() async {
    final response = await http.get(Uri.parse('https://api.example.com/disasters'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
