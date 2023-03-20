import 'package:flutter/cupertino.dart';

class LibaryScreenProvider extends ChangeNotifier
{
  List images = [
   "assets/libary/libaryScreen1.jpg",
   "assets/libary/libaryScreen2.jpg",
   "assets/libary/libaryScreen3.jpg",
   "assets/libary/libaryScreen4.jpg",
   "assets/libary/libaryScreen5.jpg",
   "assets/libary/libaryScreen6.jpg",
   "assets/libary/libaryScreen7.jpg",
   "assets/libary/libaryScreen8.jpg",
   "assets/libary/libaryScreen9.jpg",
   "assets/libary/libaryScreen10.jpg",
  ];

  List decorationlist = [
   BorderRadius.circular(0),
   BorderRadius.circular(0),
   BorderRadius.circular(0),
   BorderRadius.circular(0),
   BorderRadius.circular(100),
   BorderRadius.circular(100),
   BorderRadius.circular(100),
   BorderRadius.circular(100),
   BorderRadius.circular(100),
   BorderRadius.circular(100),
  ];

  List Details = [
   "Liked Songs",
   "Yo Yo Honey Sing",
   "Tulsi Kumar",
   "Badsha",
   "Darshal Raval",
   "Kinjal Dave",
   "Gita Rabari",
   "Arjit Singh",
   "A.R. Rahman",
   "Carry Minati",
  ];
}