import 'package:flutter/material.dart';

class CustomRadioWidget<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final double width;
  final double height;
  final List<Color> gradients;
  final double borderRadius;
  final double margin;
  final Widget? label;
  final bool isVertical;

  CustomRadioWidget({
    required this.value,
    this.groupValue,
    this.onChanged,
    this.width = 32,
    this.height = 32,
    this.gradients = const [
      Colors.red,
      Colors.yellow,
    ],
    this.borderRadius = 8,
    this.margin = 15,
    this.label,
    this.isVertical = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged!(this.value);
      },
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: isVertical ? Axis.vertical : Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.all(margin),
            height: this.height,
            width: this.width,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: CircleBorder(),
              gradient: LinearGradient(colors: gradients),
            ),
            child: Container(
              padding: EdgeInsets.all(3),
              height: this.height - borderRadius,
              width: this.width - borderRadius,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Container(
                decoration: ShapeDecoration(
                  shape: CircleBorder(),
                  gradient: LinearGradient(
                    colors: value == groupValue
                        ? gradients
                        : [
                            for (var i = 0;
                                i <
                                    (gradients.length <= 2
                                        ? 2
                                        : gradients.length);
                                i++)
                              Theme.of(context).scaffoldBackgroundColor,
                          ],
                  ),
                ),
              ),
            ),
          ),
          label ?? SizedBox()
        ],
      ),
    );
  }
}
