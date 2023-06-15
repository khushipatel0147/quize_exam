import 'package:flutter/material.dart';
import 'package:quize_exam/model/animalModel.dart';
import 'package:quize_exam/utiels/apiHelper.dart';

class AnimalProvider extends ChangeNotifier {
  AnimalModel animalModal = AnimalModel();

  Future<void> ajson() async {
    animalModal = await AnimalApiHelper.animalApiHelper.animal();
    notifyListeners();
  }
int io=0;
void plus()
{
  if(io<9)
    {
      io++;
    }
  notifyListeners();

}

}
