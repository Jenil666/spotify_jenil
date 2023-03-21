import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_screen_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenProvider? T,F;
  @override
  Widget build(BuildContext context) {
    T = Provider.of<HomeScreenProvider>(context,listen: true);
    F = Provider.of<HomeScreenProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Good afternoon",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.notifications_none_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.access_time_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Music",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 30,
                    width: 145,
                    alignment: Alignment.center,
                    child: Text(
                      "Prodcast & Shows",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10) ),
                                        child: Image.asset("${F!.SingerImages1[index]}",fit: BoxFit.cover,)),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("${F!.albumname1[index]}",style: TextStyle(fontSize: 16,color: Colors.white),),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10) ),
                                        child: Image.asset("${F!.SingerImages2[index]}",fit: BoxFit.cover,)),
                                  ),
                                  SizedBox(width: 10,),
                                  Text("${F!.albumname2[index]}",style: TextStyle(fontSize: 16,color: Colors.white),),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset("${F!.familyParty}",fit: BoxFit.cover,),
                  ),
                  SizedBox(width: 8),
                  Text("Filmy Party",style: TextStyle(fontSize: 25,color: Colors.white),),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                height: 300,
                width: double.infinity,
                child: GridView.builder(scrollDirection: Axis.horizontal,itemCount: F!.familyPartyImages.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.4), itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 280,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 230,
                          width: double.infinity,
                          color: Colors.yellowAccent,
                          child: Image.asset("${F!.familyPartyImages[index]}",fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          height: 45,
                          width: double.infinity,
                          child: Text("${F!.familyPartySingerNames[index]}",style: TextStyle(fontSize: 15,color: Colors.white70),),
                        ),
                      ],
                    ),
                  );
                },)
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Boom Box",style: TextStyle(fontSize: 30,color: Colors.white),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  height: 300,
                  width: double.infinity,
                  child: GridView.builder(scrollDirection: Axis.horizontal,itemCount: F!.boomBoxSongsImages.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.4), itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 280,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 230,
                            width: double.infinity,
                            color: Colors.yellowAccent,
                            child: Image.asset("${F!.boomBoxSongsImages[index]}",fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: Text("${F!.familyPartySingerNames[index]}",style: TextStyle(fontSize: 15,color: Colors.white70),),
                          ),
                        ],
                      ),
                    );
                  },)
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Recently Played",style: TextStyle(fontSize: 30,color: Colors.white),),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  height: 300,
                  width: double.infinity,
                  child: GridView.builder(scrollDirection: Axis.horizontal,itemCount: F!.recentlyPlayedImages.length,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.4), itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      height: 280,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Container(
                            height: 230,
                            width: double.infinity,
                            color: Colors.yellowAccent,
                            child: Image.asset("${F!.recentlyPlayedImages[index]}",fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: Text("${F!.recentlyPlayeddetails[index]}",style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                        ],
                      ),
                    );
                  },)
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
