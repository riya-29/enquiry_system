import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Profile.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex=0;
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
              if(index==3){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
              }
            });
          },
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade100,
        automaticallyImplyLeading: false,
        title: const Center(child: Text("Enquiry System",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
      body: Container(color: Colors.grey.shade100,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(
          children: [
            Container(color: Colors.deepPurple.shade200,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width:MediaQuery.of(context).size.width-50,
                    padding: const EdgeInsets.all(8.0),
                    child: const TextField(
                      style: TextStyle(fontStyle: FontStyle.italic),
                    decoration: InputDecoration(fillColor: Colors.black,
                      hintText: "Sourav Kumar",focusColor: Colors.black,
                    ),
                  ),),
                  Container(width:50,
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.rotate(
                      angle: 150,
                      child: Image.asset("assets/globe.png")))
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: gmail.com, +more",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: yahoo.com, +more",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: amity.edu, gmail.com, +more ",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: gmail.com, hotmail.com, 1 phone, +more ",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: yahoo.com, edelcap.com, +more ",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: gmail.com, 2 phone, outlook.com, +more ",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 8.0),
                    child: ListTile(
                      leading: CircleAvatar(child: Image.asset('assets/rectangle.png'),),
                      title: Text("Sourav Kumar",style: TextStyle(fontFamily: 'Calibri',),),
                      subtitle: Text("Search: gmail.com, 2 phone, outlook.com, +more ",style: TextStyle(fontFamily: 'Calibri',),),
                      trailing: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add_outlined,color: Colors.deepPurple.shade300,),
                          Text("Get Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Calibri',fontSize: 10),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}