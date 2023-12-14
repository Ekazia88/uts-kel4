import 'package:flutix/SelectSeat.dart';
import 'package:flutter/material.dart';

class SelectDateTime extends StatelessWidget {
  const SelectDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red.shade900, Colors.black],
          ),
        ),
        child: ListView(
          children: [
            Center(
              child: 
              Text(
                'SELECT DATE AND TIME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: [
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
                    children: [
                    
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
                            Icons.timelapse,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
'82 Menit',
textAlign: TextAlign.center,
style: TextStyle(
color: Colors.white,
fontSize: 15,
fontFamily: 'Poppins',
fontWeight: FontWeight.w500,
height: 0,
letterSpacing: 0.44,
),
)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(130, 183, 28, 28),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                '18+',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(130, 183, 28, 28),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Science Fiction',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(130, 183, 28, 28),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                'Bioskop',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            
                            Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Info',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red.shade900, Colors.black],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                      },
                      child: Text(
                        'CINEMA XXI',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                      },
                      child: Text(
                        'PREMIER',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                      },
                      child: Text(
                        'IMAX',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 3, right: 8.0),
              child:
              
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red.shade900, Colors.black],
                  ),
                ),
                  child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Text(
                        'BIG MALL XXI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Thursday, 15 Sep 2023',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {

                          },
                          child: Text(
                            '12:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '12:50',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '16:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '18:30',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '20:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Text(
                        'SCP XXI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Thursday, 15 Sep 2023',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '12:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '12:50',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '16:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '18:30',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '20:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 5),
                      child: Text(
                        'SAMARINDA SQUARE XXI',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Thursday, 15 Sep 2023',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '12:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '12:50',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '16:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '18:30',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return SelectSeat();
        },
        ));
                          },
                          child: Text(
                            '20:00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ],
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
