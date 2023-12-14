import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/SuccesCheckout.dart';
import 'package:flutter/material.dart';

class Checkoutpage extends StatelessWidget {
  const Checkoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red.shade900, Colors.black],
          ),
        ),
        child: Column(
          children: [
          SizedBox(height: 30,),
          SizedBox(
                  width: 272,
                  height: 40,
                  child: Text(
                  'CHECK DETAIL BELOW \nBEFORE CHEKOUT',
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
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 12,),
                  Container(
    width: 131,
    height: 182,
    decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("assets/imgs/pkblnd.jpeg"),
            fit: BoxFit.fitHeight,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
        ),
    ),
),
SizedBox(width: 10,),
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:[
SizedBox(
width: 221,
height: 26,
child: Text(
'PEAKY BLINDERS',
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
Row(
children: [
  Icon(
    Icons.timelapse
  ),
  SizedBox(width: 10,),
  Text(
'82 Menit',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 11,
fontFamily: 'Poppins',
fontWeight: FontWeight.w500,
height: 0,
letterSpacing: 0.44,
),
)
],
),
SizedBox(height: 5,),
Row(
  children: [
    Container(
    width: 30,
    height: 20,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: ShapeDecoration(
        color: Color(0x33FF0000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child:
            Text(
                '18+',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6000000238418579),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
),
SizedBox(width: 10,),
Container(
    width: 102,
    height: 19,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: ShapeDecoration(
        color: Color(0x33FF0000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child:
            Text(
                'Science fiction',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6000000238418579),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
),
SizedBox(width: 10,),
Container(
    width: 55,
    height: 19,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: ShapeDecoration(
        color: Color(0x33FF0000),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child:
            Text(
                'Bioskop',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6000000238418579),
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    height: 0,
                ),
            ),
)
  ],
),
Row(
  children: [
    Container(
    width: 24,
    height: 24,
    child: 
            Container(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                )
    ),
),
Container(
    width: 24,
    height: 24,
    child: 
            Container(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                )
    ),
),
Container(
    width: 24,
    height: 24,
    child: 
            Container(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                )
    ),
),

            Container(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                )
    ),
     Container(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.star_border_outlined,
                  color: Color(0xFFF990033),
                ),
    ),
    Text(
'9,4',
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontFamily: 'Montserrat',
fontWeight: FontWeight.w400,
height: 0,
),
)
  ],
)
  ]),
  
                ],
              ),
              SizedBox(height: 30,),
              Container(
width: 320,
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(
width: 1,
strokeAlign: BorderSide.strokeAlignCenter,
color: Color(0xFFFAE6E6),
),
),
),
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'ID Order',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        '2208199612389',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Cinema',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Big Mall XXI',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Date & Time ',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Thue 15, 18:30',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Tickets',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'F1 , F2',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Seat',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Rp 500.000x2',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Fees',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Rp 30.000x2',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(height: 5,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Total',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Rp 1.600.000',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
Container(
width: 320,
decoration: ShapeDecoration(
shape: RoundedRectangleBorder(
side: BorderSide(
width: 1,
strokeAlign: BorderSide.strokeAlignCenter,
color: Color(0xFFFAE6E6),
),
),
),
),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
   SizedBox(
width: 136,
height: 26,
child: Text(
'Saldo Wallet',
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w400,
height: 0,
letterSpacing: 0.60,
),
),
),
SizedBox(
    width: 136,
    height: 26,
    child: Text(
        'Rp 2.100.000',
        textAlign: TextAlign.right,
        style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: 0.60,
        ),
    ),
)
  ],
),
SizedBox(
  height: 10,
),
GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SucsesCheckout();
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
                'Checkout Now',
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
        ]),
      ),
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
      bottomNavigationBar: BtnBar(),
    );
  }
}