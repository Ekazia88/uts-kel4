import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/detailticket.dart';
import 'package:flutter/material.dart';

class MyTicket extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF841818), 
              Color(0xFF000000), 
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Center(
              child: Text(
'My Ticket',
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
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Ticket',
                      style: TextStyle(fontSize: 20,color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 80),
                  Expanded(
                    child: Text(
                      'Transaction',
                      style: TextStyle(fontSize: 20, color: Colors.white ,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Waiting for Payment',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap:(){
                  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return TicketDetail();
        },
      ),
    );
                }
                ,
                child:
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/imgs/ticket.png',
                      width: 300,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      child: Container(
                        width: 50,
                        height: 110,
                        child: Center(
                          child: Image.asset(
                            'assets/imgs/pkblnd.jpeg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Peaky Blinders',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2 Ticket',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.chair,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'FI , F2',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '12 : 50 WIB | 15 SEP 2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Samarinda Square',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Previous Transaction',
                  style: TextStyle(fontSize: 20,color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/imgs/ticket.png',
                      width: 300,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      child: Container(
                        width: 50,
                        height: 110,
                        child: Center(
                          child: Image.asset(
                            'assets/imgs/shangi.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SHANG CHI',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '1 Ticket',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.chair,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'G 11',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '09 : 00 WIB | 11 MEI 2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Big Mall Samarinda XXI',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/imgs/ticket.png',
                      width: 300,
                      height: 130,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 10,
                      child: Container(
                        width: 50,
                        height: 110,
                        child: Center(
                          child: Image.asset(
                            'assets/imgs/NUN.jpeg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'THE NUN 3',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.confirmation_number,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '2 Ticket',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.chair,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'H9 , H10',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '11 : 50 WIB | 05 JAN 2023',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            'Samarinda Square XXI',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
      bottomNavigationBar: BtnBar(),
    );
  }
}
