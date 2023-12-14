import 'package:flutix/BottomNavbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage ({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
   TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  bool _isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
              Row(
                children:[
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(width: 55,),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Edit Profil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ],
              ),
              SizedBox(height: 2),
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
                child:
                    Text(
                      'Full Name',
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
                child:
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
                     SizedBox(height: 10),
                Padding(
                padding: EdgeInsets.only(left: 15),
                child:
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
                child:
                    Text(
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
                  CupertinoButton(child:
                  Container(
                    width: 321,
                    height: 42,
                   decoration: ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-1, -0.03),
                          end: Alignment(1.00, 0.03),
                          colors: [Color(0xFFD02626), Color(0xFF1F0B0B)],
                        ),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child:Center(
                      child: 
                    Text(
                      'Update Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ), 
                  onPressed: (){}),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BtnBar(),
    );
  }

  bool isValidEmail(String email) {
    // Add your email validation logic here
    // For demonstration, I'll consider it valid if it contains '@'
    return email.contains('@');
  }
}