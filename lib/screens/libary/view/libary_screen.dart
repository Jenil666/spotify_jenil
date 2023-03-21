import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/libary_screen_provider.dart';

class LibaryScreen extends StatefulWidget {
  const LibaryScreen({Key? key}) : super(key: key);

  @override
  State<LibaryScreen> createState() => _LibaryScreenState();
}

class _LibaryScreenState extends State<LibaryScreen> {
  LibaryScreenProvider? T, F;
  @override
  Widget build(BuildContext context) {
    T = Provider.of<LibaryScreenProvider>(context, listen: true);
    F = Provider.of<LibaryScreenProvider>(context, listen: false);

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
                      width: 15,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      alignment: Alignment.center,
                      child: Text(
                        "J",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.teal, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Your Libary",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Expanded(child: SizedBox()),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Icon(
                      Icons.add,
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
                    width: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Playlist",
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
                    width: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "Artist",
                      style: TextStyle(fontSize: 14, color: Colors.white),
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
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(
                      "Download",
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
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.swap_vert,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Recent",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(
                    Icons.grid_view,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Container(
                height: 773,
                child: ListView.builder(
                  itemCount: F!.images.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                                borderRadius: F!.decorationlist[index],
                                child: Image.asset("${F!.images[index]}",fit: BoxFit.cover,)),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                          ),
                          SizedBox(width: 10,),
                          Text("${F!.Details[index]}",style: TextStyle(fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
