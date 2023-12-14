import 'package:flutix/BottomNavbar.dart';
import 'package:flutix/MovieDetail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/imgs/Splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:Padding(padding: EdgeInsets.all(25),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              Container(
                width: 86,
                height: 86,
                child:
              CircleAvatar(
                backgroundImage: AssetImage("assets/imgs/Profile.png"),
              )
              ),
            SizedBox(width: 10,),
            Column(
              children: [
            Text('Khairul Rasid',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            Text('IDR 2000,000',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
              ]
            )
            ],
            ),
            SizedBox(height: 10,),
            Text('Categories',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
             scrollDirection: Axis.horizontal,
            child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 77,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF403C2F),
                ),
                child: Align(alignment: Alignment.center,
                child: 
                Text(
                  'Action',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 77,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF403C2F),
                ),
                child: Align(alignment: Alignment.center,
                child: 
                Text(
                  'Drama',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 77,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF403C2F),
                ),
                child: Align(alignment: Alignment.center,
                child: 
                Text(
                  'Love',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 77,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF403C2F),
                ),
                child: Align(alignment: Alignment.center,
                child: 
                Text(
                  'War',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                ),
              ),                    
            ],
          ),
          ),
          SizedBox(height: 10,),
          Text('Now Playing',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return MovieDetail();
        },
      ),
    );
  },
  child: Container(
    width: 198,
    height: 114,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      image: DecorationImage(
        image: AssetImage("assets/imgs/pkblnd.jpeg"),
        fit: BoxFit.fill,
      ),
    ),
  ),
),

                SizedBox(width: 10,),
                 Container(
                  width: 198,
                  height: 114,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/shangi.png"),
                      fit: BoxFit.fill,
                      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                 SizedBox(width: 10,),
                 Container(
                  width: 198,
                  height: 114,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/NUN.jpeg"),
                      fit: BoxFit.fill,
                      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )
              ],
            ),
          ),
            SizedBox(height: 10,),
          Text('Coming Soon',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 198,
                  height: 114,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/pkblnd.jpeg"),
                      fit: BoxFit.fill,
                      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(width: 10,),
                 Container(
                  width: 198,
                  height: 114,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/shangi.png"),
                      fit: BoxFit.fill,
                      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                 SizedBox(width: 10,),
                 Container(
                  width: 198,
                  height: 114,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/imgs/NUN.jpeg"),
                      fit: BoxFit.fill,
                      ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                )
              ],
            ),
          ),
        ]),
       ),
       ),
       bottomNavigationBar: BtnBar(),
    );
  }
}