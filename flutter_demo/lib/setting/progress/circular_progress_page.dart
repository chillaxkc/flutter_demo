import 'package:flutter/material.dart';

class CircularProgressIndicatorPage extends StatefulWidget {
  @override
  State<CircularProgressIndicatorPage> createState() => _CircularProgressIndicatorPageState();
}

class _CircularProgressIndicatorPageState extends State<CircularProgressIndicatorPage> {

  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startProgress();
  }

  void _startProgress() {
    Future.delayed(Duration(seconds: 1), () {
      if (_progress < 1.0) {
        setState(() {
          _progress += 0.1;
        });
        _startProgress();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircularProgressIndicator 示例'),
      ),
      body: Column(children: [
        SizedBox(height: 10,),
        createCircularProgressIndicator(context),
      ]),
    );
  }

  Widget createCircularProgressIndicator(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircularProgressIndicator(
          value: _progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        SizedBox(height: 20),
        CircularProgressIndicator(
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ],
    );
  }
}
