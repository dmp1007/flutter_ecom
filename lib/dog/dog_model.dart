import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:logging/logging.dart';

class Dog {
  final Logger log = new Logger('Dog');
  final String name;
  final String location;
  final String description;
  String imageUrl;

  // All dogs start out at 10, because they're good dogs.
  int rating = 10;

  Dog(this.name, this.location, this.description);

  Future getImageUrl() async {
    if (imageUrl != null) {
      return;
    }
    HttpClient http = new HttpClient();
    try {
      var uri = new Uri.http('dog.ceo', '/api/breeds/image/random');
      var request = await http.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();
      var json = jsonDecode(responseBody);
      // The dog.ceo API returns a JSON object with a property
      // called 'message', which actually is the URL.
      var url = json['message'];
      imageUrl = url;
    } catch (exception) {
      log.info(exception);
    }
  }
}
