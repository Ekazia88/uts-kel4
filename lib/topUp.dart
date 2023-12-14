import 'package:flutix/SucsesTopUp.dart';
import 'package:flutter/material.dart';

import 'BottomNavbar.dart';
class TopUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
              padding: EdgeInsets.only(left: 12),
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
              child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 35),
          Center(
            child:
          SizedBox(
    width: 272,
    height: 26,
    child: Text(
        'Top Up Balance',
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
          ),
SizedBox(height: 20,),
          SizedBox(
width: 248,
height: 50,
child: Text(
'How would you like to top up your Balance ?',
style: TextStyle(
color: Colors.white,
fontSize: 18,
fontFamily: 'Roboto',
fontWeight: FontWeight.w500,
),
),
),
SizedBox(height: 30),
SizedBox(
width: 117,
height: 19,
child: Text(
'BANK TRANSFER',
style: TextStyle(
color: Colors.white,
fontSize: 14,
fontFamily: 'Roboto',
fontWeight: FontWeight.w500,
height: 0.10,
),
),
),
          buildButtonRow(context,['BCA', 'BRI', 'BNI', 'MANDIRI']),
          SizedBox(height: 20),
          Text(
            'OTHER E-WALLET',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          buildButtonGrid(4, ['DANA', 'SHOOPE', 'GOPAY', 'OVO', 'ISAKU', 'LINK AJA']),
          SizedBox(height: 20),
          Text(
            'MERCHANT',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          buildButtonRow(context,['Alfamart', 'Eramart', 'Indomaret']),
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
  Widget buildButtonRow(BuildContext context, List<String> buttons) {
    return Row(
      children: buttons.map((label) {
        return Expanded(
          child: ElevatedButton(
            onPressed: () {
               Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SucsesTopUp();
        },
      ),
    );
            },
            child: Text(label),
          ),
        );
      }).toList(),
    );
  }

  Widget buildButtonGrid(int crossAxisCount, List<String> buttons) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: buttons.map((label) {
        return ElevatedButton(
          onPressed: () {
            // Tambahkan fungsi ketika tombol ditekan
          },
          child: Text(label),
        );
      }).toList(),
    );
  }
}
