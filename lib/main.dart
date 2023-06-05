import 'package:basic_page_navigation_flutter/view/Page_3.dart';
import 'package:basic_page_navigation_flutter/view/page_1.dart';
import 'package:basic_page_navigation_flutter/view/page_2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomeActivity()
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  int selectedIndex = 0;
  var views = [
    PageOne(), PageTwo(), PageThree()
  ];
  var colorsList = [
    Colors.blue, Colors.lightGreen, Colors.deepOrangeAccent
  ];
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Hello"),),
        body: views[selectedIndex],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Assignment, Module 05',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Nabil Akhunjee'),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withAlpha(65)
                ),
              ),
              myListTile('Page 1', Icon(Icons.home), 0),
              myListTile('Page 2', Icon(Icons.newspaper), 1),
              myListTile('Page 3', Icon(Icons.settings), 2),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: colorsList[selectedIndex],
          elevation: 8,
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: colorsList[selectedIndex],
            items: [
              BottomNavigationBarItem(label: "Page 1", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Page 2", icon: Icon(Icons.newspaper)),
              BottomNavigationBarItem(label: "Page 3", icon: Icon(Icons.settings)),
            ],
            onTap: onItemTap
        ),
      ),
    );
  }

  ListTile myListTile(String title, Icon icon, int index) {
    return ListTile(
              title: Text(title),
              leading: icon,
              iconColor: colorsList[selectedIndex],
              onTap: (){
                setState(() {
                  selectedIndex = index;
                  Navigator.pop(context);
                });
              },
            );
  }
}