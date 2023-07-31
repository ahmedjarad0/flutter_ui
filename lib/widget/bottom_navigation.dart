import 'package:api_user/models/route.dart';
import 'package:api_user/screen/photo_graph_screen.dart';
import 'package:api_user/screen/ui_screen.dart';
import 'package:flutter/material.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigationScreen> {
  int _current =0 ;
  final List<Routes> _routs =<Routes>[
    Routes(widget: const UiScreen()),
    Routes(widget: const PhotoGraphScreen())
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _routs[_current].widget,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  _current = value;
                });
              },
              currentIndex: _current,
              selectedLabelStyle: const TextStyle(color: Color(0xff090979)),
              fixedColor: const Color(0xff090979),
              elevation: 0,
              backgroundColor: Colors.grey.shade200,
              items: const [
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.person),
                    icon: Icon(Icons.person_outline),
                    label: '.'),
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.search),
                    icon: Icon(Icons.search_outlined),
                    label: '.'),
                BottomNavigationBarItem(
                    activeIcon: Icon(Icons.settings),
                    icon: Icon(Icons.settings_outlined),
                    label: '.'),
              ]),
        ),
      ),

    );
  }
}
