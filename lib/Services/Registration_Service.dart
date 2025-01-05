import 'package:dio/dio.dart';

import '../Models/Registration_Model.dart';

class RegistrationService{
  static Dio FromDio = Dio();
  static Future<RegistrationModel> LoginPostData({required String email , required String password})async{
    try{
      Response response = await FromDio.post('https://student.valuxapps.com/api/login', data:{
        "email":email,
        "password":password,
      });
      if(response.statusCode == 200){
        print(response.data);
        return RegistrationModel.FromJson(response.data);
      }
      else
        throw Exception("error");
    }
    catch(e){
      throw Exception(e);
    }
  }

  static Future<RegistrationModel> SignUpPostData({required String Email , required String Password,
  required String Phone , required String Name})async{
    try{
      Response response = await FromDio.post('https://student.valuxapps.com/api/register',data:{
        "name":Name,
        "email":Email,
        "password":Password,
        "phone":Phone,
      });
      if(response.statusCode == 200){
        print(response.data);
        return RegistrationModel.FromJson(response.data);
      }
      else
        throw Exception("errorr");
    }
    catch(er){
      throw Exception(er);
    }
  }
}