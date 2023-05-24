import 'package:flutter/material.dart';
import 'package:gradient_radio_button/custom_radio_button.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: CustomGradient(),
  ));
}

class CustomGradient extends StatefulWidget {
  const CustomGradient({Key? key}) : super(key: key);

  @override
  CustomGradientState createState() => CustomGradientState();
}

class CustomGradientState extends State<CustomGradient> {
  String? _radioValue;
  @override
  void initState() {
    super.initState();
    _radioValue = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Gradient Button"),
      ),
      body: Column(
        children: [
          CustomRadioWidget(
            value: "0",
            height: 25,
            groupValue: _radioValue,
            onChanged: (String? value) {
              setState(() {
                _radioValue = value;
              });
            },
            label: const Text(" Option 1"),
          ),
          CustomRadioWidget(
            value: "1",
            height: 25,
            groupValue: _radioValue,
            onChanged: (String? value) {
              setState(() {
                _radioValue = value;
              });
            },
            label: const Text(" Option 2"),
          ),
          CustomRadioWidget(
            value: "2",
            height: 25,
            groupValue: _radioValue,
            onChanged: (String? value) {
              setState(() {
                _radioValue = value;
              });
            },
            label: const Text(" Option 3"),
          )
        ],
      ),
    );
  }
}
