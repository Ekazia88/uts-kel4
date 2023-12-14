import 'package:flutix/ConfirmRegPage.dart';
import 'package:flutter/material.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({super.key});

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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              IconButton(
                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Select Your \nGenre',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 19),
              Padding(padding: EdgeInsets.only(left: 12),
              child:
              Row(
              children: [
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(
                    child: 
                      Text(
                        'Horror',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'Musical',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
              )
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.only(left: 12),
              child:
              Row(
              children: [
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'Action',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'Biopic',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
              )
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.only(left: 12),
              child:
              Row(
              children: [
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'War',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'Crime',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
              )
              ),
              Padding(padding: EdgeInsets.only(left: 16,top: 10),
              child:
              Text(
                  'which Movie Language \nYou Prefer?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
               Padding(padding: EdgeInsets.only(left: 12),
              child:
              Row(
              children: [
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(

                    child: 
                      Text(
                        'English',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                Card(
                  child: Container(
                    width: 115,
                    height: 75,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin:Alignment(-1, 0),
                       end:  Alignment(0.8, 0.00),
                        colors: [Color(0xFFD02626), Colors.black.withOpacity(0.9)],
                      )
                    ),
                    child:Center(
                    child: 
                      Text(
                        'Indonesia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Color(0xFFF2C94C),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    ),
                  ),
                ),
              ],
              )
              ),
                Padding(
                      padding: EdgeInsets.only(top: 80,right: 10),
                      child:
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 66,
                        height: 59,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.15000000596046448),
                         shape: OvalBorder(
                          side: BorderSide(width: 2, color: Color(0xFFD02626)),
                          ),
                        ),
                        child: IconButton(
                          icon:Icon(
                          Icons.arrow_forward,
                            size: 40,
                            color: Colors.white,
                          ), onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context){
                                  return ConfirmRegPage();
                                })
                              );
                          },
                        ),
                        ),
                      ),
                    ),
            ]
          )
        )
      ),
    
    );
  }
}