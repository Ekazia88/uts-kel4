import 'package:flutix/HomePage.dart';
import 'package:flutter/material.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                  'Confirm \nNew Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 15,),
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
              SizedBox(height: 20,),
              Center(
                child: Text(
                  'Welcome,\nKhairul Rasid',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  )
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                      padding: EdgeInsets.only(top:320, right: 10),
                      child:
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 66,
                        height: 59,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.15000000596046448),
                         shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFFD02626)),
                          ),
                        ),
                        child: IconButton(
                          icon:Icon(
                          Icons.arrow_forward,
                            size: 40,
                            color: Colors.white,
                          ), onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context){
                                  return HomePage();
                                })
                              );
                          },
                        ),
                        ),
                      ),
                    ),
              )
            ]
          )
          )
        )

    );
  }
}