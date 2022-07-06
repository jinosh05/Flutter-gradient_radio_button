import 'package:flutter/material.dart';
import 'package:gradient_radio_button/custom_radio_button.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: CustomGradient(),
  ));
}

class CustomGradient extends StatefulWidget {
  CustomGradient({Key? key}) : super(key: key);

  @override
  _CustomGradientState createState() => _CustomGradientState();
}

class _CustomGradientState extends State<CustomGradient> {
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
        title: Text("Custom Gradient Button"),
      ),
      body: Column(
        children: [
          Row(
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
              ),
              Text(" Option 1")
            ],
          ),
          Row(
            children: [
              CustomRadioWidget(
                value: "1",
                height: 25,
                groupValue: _radioValue,
                onChanged: (String? value) {
                  setState(() {
                    _radioValue = value;
                  });
                },
              ),
              Text(" Option 2")
            ],
          ),
          Row(
            children: [
              CustomRadioWidget(
                value: "2",
                height: 25,
                groupValue: _radioValue,
                onChanged: (String? value) {
                  setState(() {
                    _radioValue = value;
                  });
                },
              ),
              Text(" Option 3")
            ],
          )
        ],
      ),
    );
  }
}
