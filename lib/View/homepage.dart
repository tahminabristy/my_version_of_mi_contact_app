import 'package:bismillah_21/DB/contact_details_db.dart';
import 'package:bismillah_21/Model/contact_details_model.dart';
import 'package:bismillah_21/Widgets/homepage_row_widget.dart';
import 'package:flutter/material.dart';

import 'form_page.dart';

class HomePage extends StatefulWidget {
  static final String routeName='/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.local_phone_rounded,color: Colors.grey,size: 25,)),
          SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.person_sharp,color: Colors.grey,size: 25,)),
          SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.grey,size: 25,)),
          SizedBox(width: 10,),
        ],

      ),
      body:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              height: 3000,
              width: MediaQuery.of(context).size.width,

              child: ListView.builder(itemBuilder: (context,index){
                return HomeRowWidets();
              },
              itemCount:contactDetailsDb.length,),




            ),

        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
         Navigator.pushNamed(context, FormContactPage.routeName,arguments: true);
        },
        child: Icon(Icons.add,color: Colors.white,size: 34,),


      ),




    );
  }
}
