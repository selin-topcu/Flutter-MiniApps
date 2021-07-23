import 'package:healthyapp/user_data.dart';

class Result{
  UserData _userData;
  Result(this._userData);

  double rstl(){
    double x;
    x=90+_userData.sportDayNo-_userData.cigaretteNo;
    x=x+(_userData.height/_userData.weight);
    if(_userData.selectGender=="WOMEN"){
      return x+3;
    }
    else{
      return x;
    }
  }
}