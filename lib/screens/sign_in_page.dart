import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';
import 'package:intermediate_practice/screens/forgot_password_page.dart';
import 'package:intermediate_practice/widgets/custom_button.dart';


// ignore: camel_case_types
class SignIn extends StatelessWidget {
  const SignIn({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: APPColors.appBackgroundColor.withOpacity(0.001),
      appBar: AppBar(
        foregroundColor: APPColors.appColor1,
        backgroundColor: APPColors.appBackgroundColor.withOpacity(0.001),
      ),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.hammer_fill,
              color: APPColors.appColor1,
              size: 100,
            ),
            const SizedBox(height: 40),
            Text(
              'sign in to hammer',
              style: TextStyle(
                color: APPColors.appColor2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email Adress',
                style: TextStyle(
                  color: APPColors.appColor2,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                label: Row(
                  children: [
                    Icon(Icons.mail, color: APPColors.appColor1),
                    const SizedBox(width: 10),
                    Text(
                      'Enter your email',
                      style: TextStyle(color: APPColors.appColor2),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
                style: TextStyle(
                  color: APPColors.appColor2,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                label: Row(
                  children: [
                    Icon(Icons.lock, color: APPColors.appColor1),
                    const SizedBox(width: 10),
                    Text(
                      'Enter your Password',
                      style: TextStyle(color: APPColors.appColor2),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Password()),
                  );
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: APPColors.appColor1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            custom_button(text: 'Submit', onpressed: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
