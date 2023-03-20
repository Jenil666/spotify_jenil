import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_jenil/screens/home/provider/home_screen_provider.dart';
import 'package:spotify_jenil/screens/home/view/home_screen.dart';
import 'package:spotify_jenil/screens/libary/provider/libary_screen_provider.dart';
import 'package:spotify_jenil/screens/libary/view/libary_screen.dart';
import 'package:spotify_jenil/screens/search/provider/search_screen_provider.dart';
import 'package:spotify_jenil/screens/search/view/search_screen.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider(),),
        ChangeNotifierProvider(create: (context) => SearchScreenProvider(),),
        ChangeNotifierProvider(create: (context) => LibaryScreenProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'libary',
        routes: {
          '/': (context) => HomeScreen(),
          'search':(context) => Search_screen(),
          'libary': (context) => LibaryScreen(),
        },
      ),
    ),
  );
}
