import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/EditProfilePage.dart';
import 'package:flutix/wallet.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
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
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Khairul Rasid',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            Center(
              child: Text(
                'khairulrasid@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
              ) 
              ),
              SizedBox(height: 10),
             Padding(
  padding: EdgeInsets.only(left: 20),
  child: GestureDetector(
    onTap: () {

      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return EditProfilePage();
        }),
      );
    },
    child: Row(
      children: [
        Icon(
          Icons.person,
          size: 40,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        Text(
          'Edit Profil',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
      ],
    ),
  ),
),
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.only(left: 20),
              child:
              GestureDetector(
                onTap: () {
                   Navigator.of(context).push(
        MaterialPageRoute(builder: (context) {
          return WalletScreen();
        }),
      );
                },
                child: 
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'My Wallet',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  
                ],
              )
              ),
              ),
               SizedBox(height: 10),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.language_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Change Language',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  
                ],
              )
              ),
               SizedBox(height: 10),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.help_center_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Help Center',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  
                ],
              )
              ),
               SizedBox(height: 10),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Rate Flutix App',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              )
              )           
          ],
        ),
        ),
        bottomNavigationBar: BtnBar(),
    );
  }
}