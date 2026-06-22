import 'package:byte_store/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: .bold,
            color: AppColors.darkPrimaryText,
          ),
        ),
        TextButton.icon(
          style: ButtonStyle(
            foregroundColor: .all(AppColors.nightSnow),
            padding: .all(.zero),
          ),
          onPressed: () {},
          label: const Text(
            'SEE ALL',
            style: TextStyle(wordSpacing: 3.0, letterSpacing: 0.5),
          ),
          icon: const Icon(Icons.arrow_forward_ios_rounded),
          iconAlignment: .end,
        ),
      ],
    );
  }
}

@Preview(name: 'Home Header widget preview')
Widget homeHeaderWidgetPreview() => const HomeHeader(title: 'Featured Tech');
