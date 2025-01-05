import 'package:flutter/cupertino.dart';

import '../Models/Registration_Model.dart';
import '../Services/Registration_Service.dart';

class RegistrationProvider extends ChangeNotifier{
  RegistrationModel?user;
   Future<void> RecieveLoginData({required String password , required String email})async{
     user = await RegistrationService.LoginPostData(email: email, password: password);
     notifyListeners();
   }

   Future<void>RecieveSignUpData({required String Email , required String Password,
   required String Name , required String Phone})async{
     user = await RegistrationService.SignUpPostData(Email: Email, Password: Password, Phone: Phone, Name: Name);
     notifyListeners();
   }
}