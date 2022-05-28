import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fornikitacoarese/Constants/colors.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(CupertinoIcons.house,color: kred,),
            SizedBox(width: 10,),
            Text('Taskoo',style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
             RichText(text: TextSpan(
               text: 'Manage your\nteam & everything \nwith',
              style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
               children: [
                 TextSpan(
                     text: ' ',
                     style: TextStyle(color: kred,
                       fontWeight: FontWeight.bold,
                         fontSize: 30

                     )
                 ),
                 TextSpan(
                   text: 'taskoo',
                   style: TextStyle(color: kred,
                   fontWeight: FontWeight.bold,
                   decoration: TextDecoration.underline,
                       fontSize: 30
                   )
                 )
               ]
             )),

              SizedBox(height: 20,),

              Container(
                height: 200,
                width: width,
                child: ClipRRect(child: Image.asset('asset/cartoonlion.png',fit: BoxFit.fill,)),
              ),
              SizedBox(height: 10,),
              Container(
                width: width*0.6,
                child: Text(
                    'When you are overwhelmed by the amount of work you have on your wallet, stop and work',
                    style: TextStyle(color: Colors.grey,
                        fontSize: 14
                    )
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.brown.shade800,
                    child: Icon(

                      CupertinoIcons.arrowtriangle_right_circle,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Text('HOW'),
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 1,
                            color: Colors.grey,
                          ),

                          Text(
                               'taskoo',
                              style: TextStyle(color: kred,


                                  fontSize: 14
                              )
                          )
                        ],
                      ),
                      Text('HOW'),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),

              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {  }, child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
                    child: Text('Lets Start',style: TextStyle(fontSize: 25),),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kred),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),

                    ))
                  ),

                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
