import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Registration_Provider.dart';
import 'SignUp_Screen.dart';

class LoginScreen extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Providerobject = Provider.of<RegistrationProvider>(context , listen:false);
    return Scaffold(appBar: AppBar(title: Text("Login"),centerTitle: true,),
    body: Form(key: formkey,child: Column(children: [
      TextFormField(decoration: InputDecoration(labelText: "Email"),
      validator: (value){
        if(value == null || value.isEmpty){
          return "Enter Your Email";
        }
        return null;
      },controller: emailcontroller,
      ),

      TextFormField(decoration: InputDecoration(labelText: "Password"),
        obscureText: true,
        validator: (value){
          if(value == null || value.isEmpty){
            return "Enter Your password";
          }
          return null;
        },controller: passwordcontroller,
      ),

      ElevatedButton(onPressed: ()async{
        if(formkey.currentState!.validate()){
          await Providerobject.RecieveLoginData(email:emailcontroller.text , password:passwordcontroller.text);
          var value = Providerobject.user?.status;
          if(value != null){
            if(value){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
            }
          }
        }
      }, child: Text("Login")),
      TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));},
          child: Text("Already have an account")),
    ],)),);
  }
}
