import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quize_exam/model/animalModel.dart';

class AnimalApiHelper {
  static AnimalApiHelper animalApiHelper = AnimalApiHelper();
  AnimalModel animalModel = AnimalModel();

  String link ="https://opentdb.com/api.php?amount=10&category=27&difficulty=medium&type=multiple";

  Future<AnimalModel> animal() async {
    var response = await http.get(Uri.parse(link));
    var ajson = jsonDecode(response.body);
    animalModel = AnimalModel.fromJson(ajson);
    return animalModel;
  }
}
