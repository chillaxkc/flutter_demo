import 'package:flutter/material.dart';

class LinearProgressIndicatorPage extends StatefulWidget {
  @override
  State<LinearProgressIndicatorPage> createState() => _LinearProgressIndicatorPageState();
}

class _LinearProgressIndicatorPageState extends State<LinearProgressIndicatorPage> {

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
        title: const Text('线性进度条'),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        createLinearProgressIndicator(context),
      ]),
    );
  }


  Widget createLinearProgressIndicator(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LinearProgressIndicator(
          value: _progress,
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        SizedBox(height: 20),
        LinearProgressIndicator(
          backgroundColor: Colors.grey[300],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
      ],
    );
  }
}
