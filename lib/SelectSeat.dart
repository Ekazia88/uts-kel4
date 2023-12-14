import 'package:flutix/Checkout.dart';
import 'package:flutter/material.dart';

class SelectSeat extends StatelessWidget {
  const SelectSeat({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = MediaQuery.of(context).size.width * 0.9;

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
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'CHOOSE SEAT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: buttonWidth,
              decoration: BoxDecoration(
                color: Color.fromARGB(150, 183, 28, 28),
              ),
              child: Text(
                'Screen Area',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                      Checkbox(
                        value: false,
                        onChanged: null,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.chair,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Number Of Tickets',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: buttonWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.red.shade900, Colors.black]),
              ),
              child: TextButton(
                onPressed: () {
                    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Checkoutpage();
        },
      ),
    );
                },
                child: Text(
                  'Confirm Your Booking',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
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
    );
  }
}
