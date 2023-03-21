import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/search_screen_provider.dart';

class Search_screen extends StatefulWidget {
  const Search_screen({Key? key}) : super(key: key);

  @override
  State<Search_screen> createState() => _Search_screenState();
}

class _Search_screenState extends State<Search_screen> {
  SearchScreenProvider? T, F;

  @override
  Widget build(BuildContext context) {
    T = Provider.of<SearchScreenProvider>(context, listen: true);
    F = Provider.of<SearchScreenProvider>(context, listen: false);
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
                      "Search",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 55,
                width: double.infinity,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search, color: Colors.black),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "What do you want to listrn to?",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Browse all",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 701,
                child: GridView.builder(
                  itemCount: F!.details.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 130),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      alignment: Alignment.bottomRight,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10,top: 10),
                            child: Text(
                              "${F!.details[index]}",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 30,),
                              ClipRect(
                                child: Container(
                                  height: 150,
                                  width: 142,
                                  alignment: Alignment.bottomRight,
                                  child: Transform.rotate(
                                      angle: pi / 180 * (30),
                                      child: Padding(
                                        padding: EdgeInsets.only(),
                                        child: Container(
                                          height: 60,
                                          width: 60,
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(
                                                "${F!.images[index]}",
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                      ),
                                    ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: F!.Containercolors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
