import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutix/GenrePage.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _confirmController = TextEditingController();
  bool _isEmailValid = true;
  bool empty = false;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgs/Splash.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Create Your\nAccount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFa17171),
                            child: Icon(
                              Icons.person,
                              color: Color(0xFFFFFFFF),
                              size: 100,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          bottom: 10,
                          child: Container(
                            width: 25,
                            height: 25,
                            child: CircleAvatar(
                              backgroundColor: Color(0x80000000),
                              child: Icon(
                                Icons.arrow_forward,
                                size: 15,
                                color: Color(0x80000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Email Address',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
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
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                      controller: _passwordController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Type here ...',
                        hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC5BFBF)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                        errorText: empty ? null : 'tidak boleh kosong',
                      ),
                      onChanged: (value) {
                        // You can add your email validation logic here
                        setState(() {
                          empty = isnotEmpty(value);
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Username',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      controller: _usernameController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Type here ...',
                        hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC5BFBF)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                         errorText:  empty ? null : 'tidak boleh kosong',
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: TextField(
                      controller: _confirmController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Type here ...',
                        hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFC5BFBF)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                        errorText:  empty ? null : 'tidak boleh kosong',
                      ),
                      onChanged: (value) {
                        // You can add your email validation logic here
                        setState(() {
                          empty = isnotEmpty(value);
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 66,
                        height: 59,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.15000000596046448),
                          shape: CircleBorder(
                            side: BorderSide(width: 2, color: Color(0xFFD02626)),
                          ),
                        ),
                        child: _isLoading
                            ? CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                              )
                            : IconButton(
                                icon: Icon(
                                  Icons.arrow_forward,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: _isLoading ? null : _signUp,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isValidEmail(String email) {
    return email.contains('@');
  }
  bool isnotEmpty(String text){
    return text.isNotEmpty;
  }
  void _signUp() async {
    setState(() {
      _isLoading = true;
    });

    try {
      // You can replace this with your actual Firebase authentication logic
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // If sign-up is successful, navigate to the next screen
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return GenrePage();
        }),
      );
    } catch (error) {
      // Handle the sign-up error
      print("Error during sign up: $error");

      // You can show a snackbar or an alert dialog with the error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign-up failed. Please try again."),
        ),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
