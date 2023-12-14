import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/HomePage.dart';
import 'package:flutter/material.dart';

class SucsesTopUp extends StatelessWidget {
  const SucsesTopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF841818), Color(0xFF000000)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            SizedBox(
    width: 272,
    height: 26,
    child: Text(
        'SUCCESS TOP UP',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 0.72,
        ),
    ),
),
SizedBox(height: 70,),
            Center(
              child: Icon(
                Icons.check_circle,
                size: 150,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Payment Successful.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Thank you for patronizing us today.\nWe value you!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                   Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomePage();
        },
      ));
              },
              child:
            Container(
    width: 321,
    height: 51.17,
    padding: const EdgeInsets.symmetric(vertical: 18),
    decoration: ShapeDecoration(
        gradient: LinearGradient(
            begin: Alignment(1.00, 0.03),
            end: Alignment(-1, -0.03),
            colors: [Color(0xFFD02626), Color(0xFF1F0B0B)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Text(
                'Return Home',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
        ],
    ),
)
            ),
          ],
        ),
      ),
      bottomNavigationBar: BtnBar(),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back,color: Colors.white,),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor:  Colors.white.withOpacity(0.15000000596046448),
        shape: CircleBorder(
          side: BorderSide(width: 2, color: Color(0xFFD02626)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}
