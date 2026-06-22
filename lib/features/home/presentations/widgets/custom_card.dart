import 'package:byte_store/core/theme/app_colors.dart';
import 'package:byte_store/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.width});
  final double? width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        clipBehavior: .antiAlias,
        color: AppColors.darkAndStormy,
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/strix_g16.jpeg',
                  width: width,
                  height: 150.0,
                  fit: .cover,
                ),
                Align(
                  alignment: .topRight,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Laptop ROG Strix G16',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: .bold,
                      color: AppColors.darkPrimaryText,
                    ),
                    overflow: .ellipsis,
                    maxLines: 2,
                  ),
                  Row(
                    mainAxisSize: .min,
                    spacing: 4.0,
                    children: [
                      Icon(
                        Icons.star,
                        color: AppColors.darkTertiary,
                        size: 20.0,
                      ),
                      Text(
                        '4.9 (128)',
                        style: TextStyle(
                          color: AppColors.darkTertiary,
                          fontWeight: .w600,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const .symmetric(vertical: 8.0),
                    child: Text(
                      '\$500',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: AppColors.darkSecondaryText,
                        fontWeight: .w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        shape: .all(
                          RoundedRectangleBorder(
                            borderRadius: .all(.circular(8.0)),
                          ),
                        ),
                        iconSize: .all(20.0),
                        textStyle: .all(TextStyle(fontSize: 18.0)),
                        backgroundColor: .all(AppColors.darkSurfaceContainer),
                        foregroundColor: .all(AppColors.nightSnow),
                      ),
                      onPressed: () {},
                      label: Text('Add'),
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

PreviewThemeData darkTheme() =>
    PreviewThemeData(materialDark: AppTheme.darkTheme);
@Preview(
  name: 'Custom Card widget preview',
  size: Size(344, 350),
  brightness: .dark,
  theme: darkTheme,
)
Widget categoryListWidgetPreview() {
  return const Scaffold(body: CustomCard(width: double.infinity));
}
