import 'package:flutix/SigInPage.dart';
import 'package:flutix/SignupPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/Splash.png"),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child:
        Column(
          children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
              child:Image(image: 
              AssetImage("assets/imgs/Logo.png"),
              )
            ),
          SizedBox(height: 10),
          Text("New Experience",  
          textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
          ),
        
          Padding(padding: EdgeInsets.all(30),
          child:
          Text(
          " Watching new movie much easier than any before",
          textAlign:TextAlign.center,
        style: GoogleFonts.getFont(
                    'Inter',
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
        ) 
          )
          ),
          SizedBox(
            height: 130,
          ),
          TextButton(onPressed:(){
                       Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SignupPage();
        },
      ));
          },
          child:
            Container(
              width: 290,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment(-1, -0.03),
                    end: Alignment(1.00, 0.03),
                    colors: [Color(0xFFD02626), Color(0xFF1F0B0B)],
                ), 
              ),
              child: Padding(padding: EdgeInsets.all(12),
              child:
                Text(
                  "Get Started",
                textAlign:TextAlign.center,
                style: GoogleFonts.getFont(
                    'Inter',
                    color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                ),
            ),
          ),
          ),
          TextButton(
            onPressed: (){
                  Navigator.of(context).push(
        MaterialPageRoute(builder: (context){
          return SignInPage();
        })
            );
            }, 
            child: Text("Sign In to My Account",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFAB9292),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
              )
            ),
          ),
        ]),
        ),
      ),
    );
  }
}