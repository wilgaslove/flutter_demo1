import 'package:flutter/material.dart';
import 'package:flutter_demo1/components/add_hashtag_component.dart';
import 'package:flutter_demo1/screens/views/home_view.dart';
import 'package:flutter_demo1/screens/views/list_hashtag_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final PageController _pageController;
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: PageView(
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          controller: _pageController,
          children: const <Widget>[
            HomeVieuw(),
            ListHashtagView(),
          ],
        ),
// Création du button floatan +
        floatingActionButton: const AddHashtagComponent(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(_currentIndex);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: 'Hashtags'),
            ]));
  }
}
