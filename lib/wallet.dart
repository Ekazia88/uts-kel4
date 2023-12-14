import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/topUp.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  final List<String> amounts = ['\$50', '\$100', '\$200', '\$500', '\$1000', '\$2000'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red.shade900,
                    Colors.black,
                  ],
                ),
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
    width: 272,
    height: 26,
    child: Text(
        'Wallet',
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
              SizedBox(height: 30.0),
              Container(
width: 267,
height: 60,
decoration: ShapeDecoration(
color: Color(0xFFD9D9D9),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    SizedBox(width: 10,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
         Text(
'CREDITS',
style: TextStyle(
color: Color(0xFF2E2E2E),
fontSize: 14,
fontFamily: 'Roboto',
fontWeight: FontWeight.w400,
height: 0,
),
),
Text(
'100.000.00',
style: TextStyle(
color: Color(0xFF2E2E2E),
fontSize: 24,
fontFamily: 'Roboto',
fontWeight: FontWeight.w700,
height: 0,
),
),
      ],
    ),
   
Spacer(),

Icon(
  Icons.wallet,
  size: 30,
),
SizedBox(width: 10,),
]),
),
              SizedBox(height: 12.0),
              Align(
                alignment: Alignment.bottomLeft,
                child:
                Padding(padding: EdgeInsets.only(left: 10),
                child:
             Text(
'Choose Amount',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Roboto',
fontWeight: FontWeight.w600,
height: 0,
),
)
              ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 2.5,
                ),
                itemCount: amounts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2.0,
                    child: Center(
                      child: Text(
                        amounts[index],
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 50.0),
              GestureDetector(
                onTap: () {
                    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return TopUpPage();
        },
      ),
    );
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
                'Top Up Now',
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
