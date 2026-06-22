import 'package:byte_store/core/theme/app_colors.dart';
import 'package:byte_store/core/theme/app_theme.dart';
import 'package:byte_store/features/home/data/constants/image_list_dummy.dart';
import 'package:byte_store/features/home/presentations/widgets/tag.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentViewIndex = 0;
  final int animatedDuration = 1000;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageMapDummy.values.map((item) {
            return Container(
              clipBehavior: .antiAlias,
              decoration: BoxDecoration(borderRadius: .circular(8.0)),
              child: Stack(
                children: [
                  Padding(
                    padding: const .symmetric(horizontal: 16.0),
                    child: Opacity(
                      opacity: 0.7,
                      child: Container(
                        clipBehavior: .antiAlias,
                        width: MediaQuery.of(context).size.width,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: const .all(.circular(8.0)),
                        ),
                        child: Image.asset(item, fit: .fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 32.0,
                      bottom: 16.0,
                      right: 24.0,
                    ),
                    child: Column(
                      spacing: 8.0,
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .end,
                      children: [
                        Tag(
                          backgroundColor: Color.fromARGB(230, 30, 5, 54),
                          label: 'exclusive',
                          fontSize: 12.0,
                          labelColor: AppColors.darkSecondary,
                          icon: Icon(
                            Icons.verified_outlined,
                            color: AppColors.darkSecondary,
                          ),
                        ),
                        Text(
                          'Future of Gaming Laptop',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: .bold,
                            color: AppColors.darkPrimaryText,
                            letterSpacing: 3.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 1.4,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 1.0,
            autoPlayAnimationDuration: Duration(milliseconds: animatedDuration),
            onPageChanged: (index, reason) => setState(() {
              _currentViewIndex = index;
            }),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Row(
            mainAxisAlignment: .center,
            spacing: 8.0,
            children: imageMapDummy.entries.map((entry) {
              return AnimatedContainer(
                curve: Curves.decelerate,
                duration: Duration(
                  milliseconds: (animatedDuration / 2).toInt(),
                ),
                width: entry.key == _currentViewIndex ? 30.0 : 10.0,
                height: 10.0,
                decoration: BoxDecoration(
                  borderRadius: .circular(16.0),
                  color: entry.key == _currentViewIndex
                      ? AppColors.nightSnow
                      : AppColors.darkSurfaceContainer,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

PreviewThemeData darkTheme() =>
    PreviewThemeData(materialDark: AppTheme.darkTheme);
@Preview(
  name: 'Custom Carousel widget preview',
  size: Size(360, 800),
  brightness: .dark,
  theme: darkTheme,
)
Widget customCarouselPreview() {
  return Scaffold(body: const CustomCarousel());
}
