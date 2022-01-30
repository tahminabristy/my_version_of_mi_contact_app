import 'package:bismillah_21/Model/contact_details_model.dart';
import 'package:bismillah_21/View/contact_details_page.dart';
import 'package:flutter/material.dart';
class HomeRowWidets extends StatefulWidget {
  static final String routeName='/row_widgets';
  //final ContactDetailsModel contact;
  //HomeRowWidets(this.contact);

  @override
  _HomeRowWidetsState createState() => _HomeRowWidetsState();
}

class _HomeRowWidetsState extends State<HomeRowWidets> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(


        padding: const EdgeInsets.all(0.0),
        child: Card(

          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(

                /*onTap: (){
                  Navigator.pushNamed(context, ContactDetailsPage.routeName,arguments: widget.contact);
                },

                 */
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  child: Icon(Icons.email,color: Colors.white,size: 25,),
                ),
                title: Text('b',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                subtitle: Text('b'),
                trailing: IconButton(
                  onPressed: (){
                    print('hey');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactDetailsPage()));

                  },
                  icon: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.3),size: 15,),
                )


            ),
          ),
        ),
      ),
    );
  }
}
