import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider 示例'),
      ),
      body: Column(children: [
        SizedBox(height: 20),
        createNormalSlider(context),
        SizedBox(height: 20),
        createCustomSlider(context)
      ]),
    );
  }

  Widget createNormalSlider(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '当前值: ${_currentSliderValue.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 20),
        ),
        Slider(
          value: _currentSliderValue,
          min: 0.0,
          max: 100.0,
          divisions: 100,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget createCustomSlider(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '当前值: ${_currentSliderValue.toStringAsFixed(2)}',
          style: TextStyle(fontSize: 20),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.blue[700],
            inactiveTrackColor: Colors.blue[100],
            trackShape: RoundedRectSliderTrackShape(),
            trackHeight: 4.0,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            thumbColor: Colors.blue[900],
            overlayColor: Colors.blue.withAlpha(32),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
            tickMarkShape: RoundSliderTickMarkShape(),
            valueIndicatorShape: PaddleSliderValueIndicatorShape(),
            valueIndicatorColor: Colors.blue[900],
            valueIndicatorTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Slider(
            value: _currentSliderValue,
            min: 0.0,
            max: 100.0,
            divisions: 100,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

/*
* SliderTheme:
activeTrackColor: 活动部分的轨道颜色。
inactiveTrackColor: 非活动部分的轨道颜色。
trackShape: 轨道的形状。
trackHeight: 轨道的高度。
thumbShape: 滑块的形状。
thumbColor: 滑块的颜色。
overlayColor: 滑块周围的覆盖层颜色。
overlayShape: 滑块周围的覆盖层形状。
tickMarkShape: 刻度标记的形状。
valueIndicatorShape: 值指示器的形状。
valueIndicatorColor: 值指示器的颜色。
valueIndicatorTextStyle: 值指示器的文本样式。
* */
