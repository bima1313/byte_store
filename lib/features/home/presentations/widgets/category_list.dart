import 'package:byte_store/core/theme/app_colors.dart';
import 'package:byte_store/core/theme/app_theme.dart';
import 'package:byte_store/features/home/data/constants/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ListView.builder(
          scrollDirection: .horizontal,
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories.elementAt(index);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisSize: .min,
                crossAxisAlignment: .center,
                spacing: 8.0,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      border: .all(color: AppColors.darkAndStormy),
                      borderRadius: const .all(.circular(16.0)),
                      color: AppColors.darkSurfaceContainer,
                    ),
                    child: Icon(category.icon, color: AppColors.nightSnow),
                  ),
                  Text(
                    category.name,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: AppColors.darkPrimaryText,
                      fontWeight: .w500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

PreviewThemeData darkTheme() =>
    PreviewThemeData(materialDark: AppTheme.darkTheme);
@Preview(
  name: 'Category List widget preview',
  size: Size(344, 100),
  brightness: .dark,
  theme: darkTheme,
)
Widget categoryListWidgetPreview() {
  return const Scaffold(body: CategoryList());
}
