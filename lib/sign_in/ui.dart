import 'package:fantacy_app/home/ui.dart';
import 'package:fantacy_app/sign_in/widgets/verify_otp.dart';
import 'package:fantacy_app/sign_up.dart/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
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
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // change the radius to your desired value
                  ),
                ),
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const VerifyOtp(),
                      ),
                    );
                  }
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (context) => const Home(),
                  //     ),
                  //   );
                
                }, 
                child:const Text("Login"),
              ),
                const  SizedBox(
                  height: 10,
                ),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[ 
                  InkWell(
                    onTap: (){
                      
                      Navigator.of(context).push(   
                        MaterialPageRoute(
                          builder: 
                          (context) => VerifyOtp(),
                        ),
                      );
                      
                    },
                    child: const Text("Forgort Password", style: TextStyle(color: Colors.orange,fontSize: 12),),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                          ),
                      );
                    },
                    child: Text("SignUp"),
                  )
                  ]),
              
              ],
            ),
          ),
        )
      ),
    );
  }
}