import 'package:fantacy_app/sign_in/ui.dart';
import 'package:fantacy_app/sign_up.dart/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/png/Free11.png',height: 600,),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // change the radius to your desired value
                    ),
                  ),
                  onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (
                        context) => const SignUp(),
                      ),
                    );
                  }, 
                  child: Text("Sing Up"),
                ),
              ),
            ),
            
            InkWell(
              onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder:
                      (context) => const SignIn(),
                  ),
                );
              }, 
              child: Align( alignment: Alignment.bottomRight ,child: ListTile(title: Text("Already a User?"), subtitle: Text("Sign In"),)),
            ),
            
      
          const SizedBox(height: 30,)
          
      
          ]
        ),
      ),
    );
  }
}