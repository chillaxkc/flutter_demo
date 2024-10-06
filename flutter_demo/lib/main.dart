import 'package:flutter/material.dart';
import 'home/home.dart';
import 'search/search.dart';
import 'setting/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 选中的索引
  final List<Widget> _pages = [
    HomeTab(),
    SearchTab(),
    SettingsTab(),
  ];

  final titleArray = ['Home', 'Search', 'Settings'];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // 更新选中索引
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(titleArray[_selectedIndex]),
      ),
      body: _pages[_selectedIndex], // 根据选中索引显示对应页面
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex, // 当前选中项
        selectedItemColor: Colors.blue, // 选中项颜色
        onTap: _onItemTapped, // 点击事件
      ),
    );
  }
}






