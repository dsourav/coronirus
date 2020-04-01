import 'package:coronirus/Theme/Colors.dart';
import 'package:coronirus/model/staticModel/homePageCardModel.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'Widget/homeButon.dart';
import 'Widget/homeCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<HomePageCardModel>_homePageCardsMdel=[];

  @override
  void initState() {
    initiLizeCardResource();


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Stack(children: <Widget>[
          Container(
            height: 200.0,
            decoration: BoxDecoration(
                color: AppColor.topBarColor,
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(40.0, 30.0))),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(
                top: kToolbarHeight * 0.5, left: 20.0, right: 20.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView(
                children: <Widget>[
                  buildHomeProfileRow(),
                  SizedBox(height: 55.0),

                  Container(
                    height: 75.0,

                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      color: AppColor.defaultBackgroundColorWhite,
                      elevation: 8.0,
                      child: Container(

                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5.0),
                              height: 40.0,
                              child: Image.asset('assets/images/selfAssessmentCard.jpeg'),
                            ),
                            Expanded(
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Self assesment",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold ),
                                  ),

                                  Text(
                                    "self assess yourself and get instant results",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10.0,

                                        fontWeight:FontWeight.w300 ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            HomeButton(
                              onTap: () {},
                              buttonColor: AppColor.lightGreen,
                              title: 'START',
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
//                  Container(
//                    height: 75.0,
//                    child: Card(
//                      shape: RoundedRectangleBorder(
//                          borderRadius: BorderRadius.circular(15.0)),
//                      elevation: 8.0,
//                      child: Container(
//                        margin: EdgeInsets.symmetric(horizontal: 10.0),
//                        child: Row(
//                          children: <Widget>[
//                            Container(
//                              margin: EdgeInsets.only(right: 5.0),
//                            ),
//                            Expanded(
//                              child: Text(
//                                "I am feeling",
//                                style: TextStyle(
//                                    fontSize: 14.0,
//                                    fontWeight: FontWeight.bold),
//                              ),
//                            ),
//                            SizedBox(
//                              width: 5,
//                            ),
//                            Expanded(
//                                child: HomeButton(
//                              onTap: () {},
//                              buttonColor: AppColor.goodButtonColor,
//                              title: 'GOOD',
//                            )
//
////
//                                ),
//                            SizedBox(
//                              width: 15,
//                            ),
//                            Expanded(
//                              child: HomeButton(
//                                onTap: () {},
//                                buttonColor: AppColor.badButtonColor,
//                                title: 'BAD',
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ),
//                  ),

                  SizedBox(height: 10.0),
                  Container(
                    height: 75.0,

                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      color: AppColor.defaultBackgroundColorWhite,
                      elevation: 8.0,
                      child: Container(

                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5.0),
                              height: 40.0,
                              child: Image.asset('assets/images/safetyChallengeCard.jpeg'),
                            ),
                            Expanded(
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Safety Challenge",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight:FontWeight.bold ),
                                  ),

                                  Text(
                                    "Take a 14 day challenge and get  corona free tag",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 10.0,

                                        fontWeight:FontWeight.w300 ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            HomeButton(
                              onTap: () {},
                              buttonColor: AppColor.lightGreen,
                              title: 'START',
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: HomeCard(
                          isthreeLine: true,
                          title: "Health Unit" ,
                          icon: 'assets/images/hospitalCard.jpeg',
                          subtitle: 'Find the one closest to you',
                          onTap: (){

                          },

                  )
                      ),
                      Expanded(
                        child: HomeCard(
                          isthreeLine: true,
                          title: "News" ,
                          icon: 'assets/images/newsCard.jpeg',
                          subtitle: 'Updates around the world',
                          onTap: (){

                          },

                        )
                      ),
                    ],
                  ),


                  Row(
                    children: <Widget>[
                      Expanded(
                          child: HomeCard(
                            isthreeLine: true,
                            title: "Report Corona" ,
                            icon: 'assets/images/avoidCard.jpeg',
                            subtitle: 'Report about the hidden corona patient',
                            onTap: (){

                            },

                          )
                      ),
                      Expanded(
                          child: HomeCard(
                            isthreeLine: true,
                            title: "Survivor" ,
                            icon: 'assets/images/patinetCard.jpeg',
                            subtitle: 'Chat with the available corona survivor ',
                            onTap: (){

                            },

                          )
                      ),
                    ],
                  ),


//                  GridView.builder(
//                    physics: ScrollPhysics(),
//                      shrinkWrap: true,
//                      itemCount: _homePageCardsMdel.length,
//                      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ),
//                    itemBuilder: (context,index){
//                      return HomeCard(
//                        onTap: (){
//
//                        },
//                        icon: _homePageCardsMdel[index].imageIcon,
//                        isthreeLine: false,
//                        subtitle: _homePageCardsMdel[index].subtitle,
//                        title: _homePageCardsMdel[index].title,
//
//                      );
//
//                    },
//                  ),
                  SizedBox(height: 20.0,),



                ],
              ),
            ),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          elevation: 8.0,
          shape: CircularNotchedRectangle(),
          clipBehavior: Clip.antiAlias,
          notchMargin: 5.0,
          child: Container(
            decoration:
                BoxDecoration(color: AppColor.bottomBarColor),
            height: kToolbarHeight,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                
                  bottomnavWidget(
                      title: 'Tracker',
                      imageUrl: "assets/images/tracker.png",
                      onTap: () {}),
                  bottomnavWidget(
                      title: 'Consult',
                      imageUrl: "assets/images/doctor.png",
                      onTap: () {}),

//                  bottomnavWidget(
//                      title: 'Home',
//                      imageUrl: "assets/images/virus.png",
//                      onTap: () {}),
                  bottomnavWidget(
                      title: 'Tips',
                      imageUrl: "assets/images/bulb.png",
                      onTap: () {}),
                  Icon(Icons.settings)
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Container(height:60.0,width: 60.0,
          child: FlareActor("assets/corona.flr", alignment:Alignment.center, fit:BoxFit.contain,animation: 'Untitled',),),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }

  Widget bottomnavWidget({title, imageUrl, onTap}) {
    return Column(
      children: <Widget>[
        Expanded(
            child: InkWell(
          child: Image.asset(imageUrl),
          onTap: onTap,
        )),
        SizedBox(
          height: 2.0,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 8.0),
        )
      ],
    );
  }

  buildHomeProfileRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CircleAvatar(),

        Text("Corona Virus",
            style: TextStyle(
                color: AppColor.defaultBackgroundColorWhite,
                fontWeight: FontWeight.bold,
                fontSize: 18.0)),
        IconButton(icon: Icon(Icons.power_settings_new,color: AppColor.defaultBackgroundColorWhite,), onPressed: (){

        })
      ],
    );
  }


  initiLizeCardResource(){
    _homePageCardsMdel.add(HomePageCardModel(
        title: "What is coronavirus?",
        imageIcon: 'assets/images/coronaCard.jpeg',
        subtitle: ""
    ));
    _homePageCardsMdel.add(HomePageCardModel(
        title: "What are the symptoms?",
        imageIcon: 'assets/images/coughCard.jpeg',
        subtitle: ""
    ));
    _homePageCardsMdel.add(HomePageCardModel(
        title: "How it is transmitted?",
        imageIcon: 'assets/images/avoidCard.jpeg',
        subtitle: ""
    ));

    _homePageCardsMdel.add(HomePageCardModel(
        title: "How to prevent it?",
        imageIcon: 'assets/images/soadCard.jpeg',
        subtitle: ""
    ));
  }
}
