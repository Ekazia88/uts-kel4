import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/SelectDateTime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Gunakan constraints untuk mendapatkan lebar layar
        double screenWidth = constraints.maxWidth;

        // Sesuaikan ukuran tombol berdasarkan lebar layar
        double buttonWidth = screenWidth * 0.9;

        return Scaffold(
          bottomNavigationBar: BtnBar(),
          body: SingleChildScrollView(
            child: Container(
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
                children: [
                  Stack(
                    children: [
                      Image(
                        image: AssetImage('assets/imgs/pkblnd.jpeg'),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 500,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Column(
                          children: [
                            Text(
                              'PEAKY',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'BLINDERS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            style: TextStyle(color: Colors.white),
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
                            style: TextStyle(color: Colors.white),
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.orange.shade600,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.orange.shade600,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.orange.shade600,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.orange.shade600,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 30,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        '9,4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid, odit? Aspernatur nihil voluptas odit! Voluptatum sit excepturi ex maxime, et quam amet debitis autem blanditiis ab facilis, doloribus nam temporibus?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        'The Cast',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://awsimages.detik.net.id/community/media/visual/2020/02/20/1d6ed779-d414-43a5-bfbd-b841933da80e_43.jpeg?w=1200'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://www.themoviedb.org/t/p/w500/yVWop3BSHbjIecYGqI1ToZIPR3T.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://www.boston.com/wp-content/uploads/2021/04/Obit_Helen_McCrory_81086-6079d90d6cc35.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://image.tmdb.org/t/p/w500/nds5rTBZvJ4rEsP4N6OaoEgQDkW.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://www.themoviedb.org/t/p/w500/aoWGL80w8Ddztfg90DAgUpT61Vx.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            height: 80,
                            width: 80,
                            child: Image(
                              image: NetworkImage('https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/269411_v9_bd.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
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
          return SelectDateTime();
        },
      ),
    );
                      },
                      child: Text(
                        'Continue Booking',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
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
        );
      },
    );
  }
}
