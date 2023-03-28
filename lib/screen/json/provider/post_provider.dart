import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PostProvider extends ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> jsonParsing() async {
    String jsonDataString =
        await rootBundle.loadString("assets/json/post.json");
    var json = jsonDecode(jsonDataString);
    postList = json;
    notifyListeners();
  }
}
