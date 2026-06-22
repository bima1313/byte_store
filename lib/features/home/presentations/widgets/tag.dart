import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    this.backgroundColor = Colors.white,
    this.padding = 4.0,
    required this.label,
    this.fontWeight = FontWeight.normal,
    this.fontSize,
    this.labelColor = Colors.black,
    this.icon,
  });
  final double? padding;
  final Color? backgroundColor;
  final String label;
  final Color? labelColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Icon? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: .all(color: labelColor!),
        borderRadius: const .all(.circular(8.0)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: .all(padding!),
        child: Row(
          mainAxisSize: .min,
          spacing: icon != null ? 4.0 : 0.0,
          children: [
            icon != null ? icon! : SizedBox(),
            Text(
              label.toUpperCase(),
              style: TextStyle(
                fontSize: fontSize,
                color: labelColor,
                fontWeight: fontWeight,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'Tag widget preview', size: Size(300, 300))
Widget tagWidgetPreview() {
  return const Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Tag(
        label: 'exclusive',
        labelColor: Colors.amber,
        backgroundColor: Colors.blue,
        fontSize: 16.0,
        fontWeight: .bold,
        icon: Icon(Icons.telegram),
      ),
    ),
  );
}
