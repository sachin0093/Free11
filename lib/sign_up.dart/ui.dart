import 'package:fantacy_app/home/ui.dart';
import 'package:fantacy_app/sign_in/widgets/verify_otp.dart';
import 'package:fantacy_app/sign_up.dart/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
        // call unfocus() on the focus node to close the keyboard
        _focusNode.unfocus();
      },
        child: SafeArea(
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if(value==null){
                            return "Enter Email Address";
                          }
                          if (value.isEmpty) {
                            return 'Please enter your email';
                          }
                          if (!RegExp(r'^[a-zA-Z0-9_.+-]+@gmail\.com$').hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;  // return null if the input is valid
                        },
                      ),
                      const  SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter your Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if(value==null){
                            return "Enter Name";
                          }
                          if (value.isEmpty) {
                            return 'Please enter your Name';
                          }
                          if(value.length<2){
                            return 'Name should be greater than 2';
                          }
                          return null;  // return null if the input is valid
                        },
                      ),
                      const  SizedBox(
                        height: 30,
                      ),
                      
                      TextFormField(
                        
                        decoration: InputDecoration(
                          labelText: 'Age',
                          hintText: 'Enter your Age',
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if(value==null){
                            return "Enter Email Address";
                          }
                          if (value.isEmpty) {
                            return 'Please enter your Age';
                          }
                          if(int.parse(value) < 18){
                            return "Age should be greater than 18";
                          }
                          return null;  // return null if the input is valid
                        },
                      ),
                      const  SizedBox(
                        height: 30,
                      ),
                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Pasword',
                          hintText: 'Enter your Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if(value==null){
                            return "Please enter your password";
                          }
                          if (value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)) {
                            return 'Password must contain at least one uppercase letter, one lowercase letter, one symbol, and one number';
                          }
                          return null ;// return null if the input is valid
                        },
                      ),
                      const  SizedBox(
                        height: 30,
                      ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // change the radius to your desired value
                        ),
                      ),
                      onPressed: (){
                        // if(_formKey.currentState!.validate()){
                        //   Navigator.of(context).push(
                        //     MaterialPageRoute(
                        //       builder: (context) => const VerifyOtp(),
                        //     ),
                        //   );
                        // }
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                      
                      }, 
                      child:const Text("SignUP"),
                    ),
                      const  SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}