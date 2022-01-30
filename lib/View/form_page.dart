import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormContactPage extends StatefulWidget {
static final String routeName = '/formpage';



  @override
  _FormContactPageState createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: Icon(Icons.close,color: Colors.black,size: 30,),
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  SizedBox(width: 6),
                  Text('Save to Google',style: TextStyle(color: Colors.black87),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp,color: Colors.black87,size: 30,)),
                ],
              ),
            ),
            actions: [

              SizedBox(width: 30),
              IconButton(onPressed: (){}, icon: Icon(Icons.save,color: Colors.black,size: 30,)),
            ],
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Form(
              child: ListView(
                children: [
                  SizedBox(height: 10,),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Icon(Icons.person,color: Colors.white,size:40,),
                  ),
                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType:TextInputType.name,
                      validator:(value){
                        if(value==null || value.isEmpty){
                          return 'Please provide a valid name';

                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                       hintText: 'Name',
                        suffixIcon: IconButton(onPressed:(){},
                            icon:Icon(Icons.keyboard_arrow_down_outlined,size:16,color: Colors.grey.withOpacity(.8))),

                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                        fillColor: Colors.grey.withOpacity(0.1),
                        filled: true,

                        enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color:Colors.grey.withOpacity(0.1),
                            width: 0.1
                          ),



                          borderRadius: BorderRadius.circular(22)
                        ),
                        focusedBorder:OutlineInputBorder(

                          borderSide: BorderSide(
                            color: Colors.blue.shade700,
                            width: 2
                          ),
                          borderRadius: BorderRadius.circular(22)
                        ),
                        errorBorder:OutlineInputBorder(

                          borderSide: BorderSide(
                            color: Colors.red.shade700,
                            width: 2
                          ),
                          borderRadius: BorderRadius.circular(22)
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                        width:MediaQuery.of(context).size.width,
                            height: 120,


                            decoration: BoxDecoration(



                              color:Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(22)
                            ),

                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(

                              children: [
                                TextFormField(
                                  validator: (value){
                                    return null;
                                  },
                                  keyboardType:TextInputType.name,

                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Company',


                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                                    fillColor: Colors.transparent,
                                    filled: true,




                                  ),
                                ),

                                SizedBox(height: 8,),
                                TextFormField(
                                  validator: (value){
                                    return null;
                                  },
                                  keyboardType:TextInputType.name,

                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Title',
                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                                    fillColor: Colors.transparent,
                                    filled: true,


                                  ),
                                ),

                              ],
                          ),
                            )


                          ),



                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType:TextInputType.phone,
                      validator:(value){
                        if(value==null || value.isEmpty){
                          return 'Please provide a valid number';

                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(

                     prefixIcon: Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 2),
                       child: GestureDetector(
                         onTap: (){
                           print('2');
                         },
                         child: Container(
                           width: 150,
                           child: Row(
                             children: [
                               Text('    Mobile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                               SizedBox(width: 18,),


                               IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.grey.withOpacity(.9))),
                             Container(
                               width: 0.05,
                                   height: 40,
                                   decoration: BoxDecoration(
                                   color: Colors.black,

                             )
                         ),

                               SizedBox(width: 5,)
                             ],
                           ),
                         ),
                       ),
                     ),
                        hintText: 'Phone',

                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.8)),
                        fillColor: Colors.grey.withOpacity(0.1),
                        filled: true,

                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.grey.withOpacity(0.1),
                                width: 0.1
                            ),



                            borderRadius: BorderRadius.circular(22)
                        ),
                        focusedBorder:OutlineInputBorder(

                            borderSide: BorderSide(
                                color: Colors.blue.shade700,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(22)
                        ),
                        errorBorder:OutlineInputBorder(

                            borderSide: BorderSide(
                                color: Colors.red.shade700,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(22)
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType:TextInputType.emailAddress,
                      validator:(value){
                        if(value==null || value.isEmpty){
                          return 'Please provide a valid Email addresss';

                        }
                        else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(

                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child:  Container(
                              width: 150,
                              child: Row(
                                children: [
                                  Text('    Work   ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                                  SizedBox(width: 18,),


                                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down,color: Colors.grey.withOpacity(.9))),
                                  Container(
                                      width: 0.05,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.black,

                                      )
                                  ),

                                  SizedBox(width: 5,)
                                ],
                              ),
                            ),

                        ),
                        hintText: 'Email',

                        hintStyle: TextStyle(color: Colors.grey.withOpacity(.9)),
                        fillColor: Colors.grey.withOpacity(0.1),
                        filled: true,

                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(
                                color:Colors.grey.withOpacity(0.1),
                                width: 0.1
                            ),



                            borderRadius: BorderRadius.circular(22)
                        ),
                        focusedBorder:OutlineInputBorder(

                            borderSide: BorderSide(
                                color: Colors.blue.shade700,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(22)
                        ),
                        errorBorder:OutlineInputBorder(

                            borderSide: BorderSide(
                                color: Colors.red.shade700,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(22)
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                        title: Text('Group name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(.9)),
                      ),

                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListTile(
                      onTap: (){},
                        title: Text('Add another field',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.blue),),

                      ),

                  ),





                ],
              ),
            ),
          ),


    );
  }


}

