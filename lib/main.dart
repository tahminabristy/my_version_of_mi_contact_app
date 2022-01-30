import 'package:bismillah_21/View/contact_details_page.dart';
import 'package:bismillah_21/View/form_page.dart';
import 'package:bismillah_21/Widgets/homepage_row_widget.dart';
import 'package:flutter/material.dart';

import 'View/homepage.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,

      ),
      debugShowCheckedModeBanner: false,
       home: HomePage(),
      routes: {
        HomePage.routeName :(context)=> HomePage(),
        HomeRowWidets.routeName :(context)=> HomeRowWidets(),
        FormContactPage.routeName :(context)=> FormContactPage(),
        ContactDetailsPage.routeName :(context)=> ContactDetailsPage(),

      },


    );
  }
}
