import 'package:flutix/BottomNavbar.dart';
import 'package:flutter/material.dart';


class TicketDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
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
              child: TicketWidget(),
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

class TicketWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30,),
          Center(
            child:
          Text(
    'Ticket Details',
    textAlign: TextAlign.center,
    style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w700,
        height: 0,
    ),
)
          ),
          SizedBox(height: 45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/imgs/pkblnd.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Film: PEAKY BLINDERS',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, // Ubah teks menjadi putih
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'PLAZA MULIA CGV.',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white, // Ubah teks menjadi putih
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Selasa,09 Sep 2023,19:50',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white, // Ubah teks menjadi putih
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nama:',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Ubah teks menjadi putih
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Khairul Rasid',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Ubah teks menjadi putih
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nomor Kursi',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Ubah teks menjadi putih
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'A12',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white, // Ubah teks menjadi putih
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Image.asset(
                    'assets/imgs/pkblnd.jpeg', // Ganti dengan path gambar yang sesuai
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Harga',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Ubah teks menjadi putih
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Rp. 50.000',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white, // Ubah teks menjadi putih
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'ID Order',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Ubah teks menjadi putih
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'ABC123DEF456',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white, // Ubah teks menjadi putih
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
