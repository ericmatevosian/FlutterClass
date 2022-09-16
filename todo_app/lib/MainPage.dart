import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   int _selectedIndex=0;

   void _onItemTapped(int index){
     setState((){
       _selectedIndex = index;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.change_circle_outlined),
      //         label: "Change Password"
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.logout),
      //         label: "Logout"
      //     ),
      //   ],
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "logo",
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                height: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                  //color: Colors.green.shade300,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/RizElectron.png"),
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Signed in successfully!",
            style: GoogleFonts.lato(
              color: Colors.grey.shade800,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            )
          ),
        ],
      ),
    );
  }
}
