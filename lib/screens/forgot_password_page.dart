import 'package:flutter/material.dart';
import 'package:intermediate_practice/constants/app_colors.dart';


class Password extends StatelessWidget {
  const Password({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: APPColors.appBackgroundColor.withOpacity(0.001),
        foregroundColor: APPColors.appColor1,
      ),
      backgroundColor: APPColors.appBackgroundColor.withOpacity(0.12),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.09),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/padlock.png', width: 100),
            const SizedBox(height: 40),
            Text(
              'forgot password',
              style: TextStyle(
                color: APPColors.appColor2,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.center,
              child: Text(
                'please enter your email address to reset your password',
                textAlign: TextAlign.center,
                style: TextStyle(color: APPColors.appColor2, fontSize: 20),
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

            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(APPColors.appColor1),
                fixedSize: WidgetStatePropertyAll(Size(400, 50)),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'continue',
                style: TextStyle(color: APPColors.appColor2, fontSize: 20),
              ),
            ),

            const SizedBox(height: 20),

            Align(
              alignment: Alignment.center,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't remember your email? contact us through \n",
                      ),
                      TextSpan(
                        text: 'help@hammer.ai',
                        style: TextStyle(color: APPColors.appColor1),
                       
                        
                      ),
                    ],
                  ),
                ),
              ),
            





          ],
        ),
      ),
    );
  }
}
