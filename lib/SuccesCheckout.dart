import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/myticket.dart';
import 'package:flutter/material.dart';

class SucsesCheckout extends StatelessWidget {
  const SucsesCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF841818), Color(0xFF000000)],
            stops: [0.0, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Success Checkout',
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
              SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/imgs/Logo.png',
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Happy Watching!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'You have successfully bought the ticket',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[300], 
                ),
              ),
              SizedBox(height: 20), 
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyTicket();
                      },
                    ),
                  );
                },
                child: Text('My Ticket'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.white.withOpacity(0.15000000596046448),
        shape: CircleBorder(
          side: BorderSide(width: 2, color: Color(0xFFD02626)),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
      bottomNavigationBar: BtnBar(),
    );
  }
}
