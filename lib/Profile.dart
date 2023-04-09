import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex=3;
    return Scaffold(
      bottomNavigationBar: Container(color: Colors.deepPurple.shade100,
        padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
        child: BottomNavigationBar(
          backgroundColor: Colors.deepPurple.shade100,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),label: ""
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),label: ""
            ),

          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          iconSize: 30,
          elevation: 0,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
              if(index==0){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              }
            });
          },
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade100,
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Enquiry System",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(color: Colors.deepPurple[300],
                alignment:Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 10,left: 20),
                child: const Text("Profile",style: TextStyle(fontSize:25,fontFamily: 'Calibri',fontWeight: FontWeight.bold),)),
            Center(
              child: Container(color: Colors.deepPurple[300],
                padding: const EdgeInsets.all(25),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  child: Image.asset("assets/rectangle.png"),
                ),
              ),
            ),Container(color: Colors.deepPurple[300],
                alignment:Alignment.centerLeft,
                padding: const EdgeInsets.only(bottom: 15,left: 10),
                child: const Center(child: Text("Sourav Kumar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25,fontFamily: 'Calibri'
                ),))),
            Container(width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: 230,
              padding: EdgeInsets.all(0),
              child: ListView(
                children: [
                  const ListTile(
                    subtitle: Text("24100132",style: TextStyle(color: Colors.blueGrey,fontFamily: 'Calibri')),
                    title:Text("ID:  ",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Calibri')),
                    trailing: Icon(Icons.content_copy,size: 30,color: Color(0xff9575cd
                    ),),
                  ),
                  const ListTile(
                    subtitle: Text("7082071862",style: TextStyle(color: Colors.blueGrey,fontFamily: 'Calibri')),
                    title:Text("Phone: ",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Calibri')),
                    trailing: Icon(Icons.wifi_calling_3_rounded,size: 30,color: Color(0xff9575cd
                    ),),
                  ),
                  ListTile(
                    subtitle: const Text("21MCA2040@cuchd.in\nsouravkumar91132@gmail.com",style: TextStyle(color: Colors.blueGrey,fontFamily: 'Calibri')),
                    title:const Text("Email: ",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Calibri')),
                    trailing: Transform.rotate(
                      angle: 100,
                      child: const Icon(Icons.send_outlined,size: 30,color: Color(0xff9575cd
                      ),),
                    ),
                  ),
                ],),
            ),
            Center(child: Container(padding:EdgeInsets.symmetric(horizontal: 8),color:Colors.black,child: TextButton(onPressed: (){}, child: Text("+Add Contact",style: TextStyle(color: Colors.white,fontFamily: 'Calibri'),)))),
            SizedBox(height: 5,),
            Center(child: Container(padding:EdgeInsets.symmetric(horizontal: 5),color:Colors.deepPurple.shade300,child: TextButton(onPressed: (){}, child: Text("Send Message",style: TextStyle(color: Colors.white,fontFamily: 'Calibri'),))))
          ],
        ),
      ),
    );
  }
}