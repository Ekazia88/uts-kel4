import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutix/SignupPage.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isEmailValid = true;
  bool empty = false;
  bool _isLoading = false;
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imgs/Splash.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 100, left: 15, right: 15, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back \nExplorer!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                SizedBox(height: 130),
                Text(
                  'Email Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: TextField(
                    controller: _emailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Type here ...',
                      hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFC5BFBF)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      errorText: _isEmailValid ? null : 'Invalid email',
                    ),
                    onChanged: (value) {
                      // You can add your email validation logic here
                      setState(() {
                        _isEmailValid = isValidEmail(value);
                      });
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: TextField(
                    controller: _passwordController,
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Type here ...',
                      hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFC5BFBF)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      errorText: empty ? null : 'Tidak boleh kosong',
                    ),
                    onChanged: (value) {
                      // You can add your email validation logic here
                      setState(() {
                        empty = isnotEmpty(value);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                _isLoading
                    ? CircularProgressIndicator()
                    : GestureDetector(
                      onTap: () async {
                        if (_isEmailValid) {
                          setState(() {
                            _isLoading = true;
                          });
                          try {
                            await auth.signInWithEmailAndPassword(
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                            );
                            // Navigate to the next screen or perform any other action on successful login
                          } catch (e) {
                            print(e);
                            // Handle errors here (show a snackbar, for example)
                          } finally {
                            setState(() {
                              _isLoading = false;
                            });
                            
                          }
                               Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return HomePage();
                        }),
                      );
                        
                        }
                      },
                      child: Container(
                        width: 290,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            begin: Alignment(-1, -0.03),
                            end: Alignment(1.00, 0.03),
                            colors: [Color(0xFFD02626), Color(0xFF1F0B0B)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "Sign In",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) {
                          return SignupPage();
                        }),
                      );
                    },
                    child: Text(
                      "Create New Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFAB9292),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    // Add your email validation logic here
    // For demonstration, I'll consider it valid if it contains '@'
    return email.contains('@');
  }
  bool isnotEmpty(String text){
    return text.isNotEmpty;
  }
}
