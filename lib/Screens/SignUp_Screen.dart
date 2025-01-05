import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_revision/Screens/Login_Screen.dart';
import 'package:provider/provider.dart';

import '../Providers/Registration_Provider.dart';

class SignUpScreen extends StatelessWidget {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var Providerobject = Provider.of<RegistrationProvider>(context , listen:false);
    return Scaffold(appBar: AppBar(title: Text("Sign Up"),centerTitle: true,),
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

        TextFormField(decoration: InputDecoration(labelText: "Name"),
          validator: (value){
            if(value == null || value.isEmpty){
              return "Enter Your Name";
            }
            return null;
          },controller: namecontroller,
        ),

        TextFormField(decoration: InputDecoration(labelText: "Phone"),
          validator: (value){
            if(value == null || value.isEmpty){
              return "Enter Your Password";
            }
            return null;
          },controller: phonecontroller,
        ),

        ElevatedButton(onPressed: ()async{
          if(formkey.currentState!.validate()){
            await Providerobject.RecieveSignUpData(Email:emailcontroller.text , Password:passwordcontroller.text,
            Phone:phonecontroller.text , Name:namecontroller.text);
            var value = Providerobject.user?.status;
            if(value != null){
              if(value){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              }
            }
          }
        }, child: Text("Sign Up")),
        TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));},
            child: Text("Already have an account")),
      ],)),);
  }
}
