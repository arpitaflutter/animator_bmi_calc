import 'package:flutter/material.dart';

class bmiProvider extends ChangeNotifier
{
  bool male = false;
  bool female = false;
  double height = 40;
  int weight = 0;
  int age = 0;
  double cm = 0;
  double result = 0;

  void changeGender()
  {
    male = !male;
    notifyListeners();
  }

  void changeGender2()
  {
    female = !female;
    notifyListeners();
  }

  void changeHeight(value)
  {
    height = value;
    notifyListeners();
  }

  void addWeight()
  {
    weight+=3;
    notifyListeners();
  }

  void minweight()
  {
    if(weight > 0)
      {
        weight--;
      }
    notifyListeners();
  }

  void addage()
  {
    age+=3;
    notifyListeners();
  }

  void minage()
  {
    if(age > 0)
      {
        age--;
      }
    notifyListeners();
  }

  void answer()
  {
    cm = (height/100);
    result = ((weight) / (cm * cm));
    print(result);
    notifyListeners();
  }

  void reload()
  {
    male = false;
    female = false;
    height = 40;
    weight = 0;
    age = 0;
    cm = 0;
    result = 0;
    notifyListeners();
  }
}