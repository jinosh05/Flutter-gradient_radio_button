import 'package:flutter/material.dart';

class CustomRadioWidget<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;
  final double width;
  final double height;

  CustomRadioWidget(
      {this.value,
      this.groupValue,
      this.onChanged,
      this.width = 32,
      this.height = 32});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          onChanged(this.value);
        },
        child: Container(
          height: this.height,
          width: this.width,
          decoration: ShapeDecoration(
            shape: CircleBorder(),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.yellow,
              ],
            ),
          ),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(3),
              height: this.height - 8,
              width: this.width - 8,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Container(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  gradient: LinearGradient(
                    colors: value == groupValue
                        ? [
                            Colors.yellow,
                            Colors.red,
                          ]
                        : [
                            Theme.of(context).scaffoldBackgroundColor,
                            Theme.of(context).scaffoldBackgroundColor,
                          ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
