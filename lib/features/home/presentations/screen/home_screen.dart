import 'package:byte_store/core/theme/app_theme.dart';
import 'package:byte_store/features/home/presentations/widgets/category_list.dart';
import 'package:byte_store/features/home/presentations/widgets/custom_card.dart';
import 'package:byte_store/features/home/presentations/widgets/custom_carousel.dart';
import 'package:byte_store/features/home/presentations/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 32.0,
        children: [
          const CustomCarousel(),
          const CategoryList(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const HomeHeader(title: "Trending Tech"),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  padding: .only(top: 16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    crossAxisCount: 2,
                    childAspectRatio: 0.46,
                  ),
                  itemBuilder: (context, index) {
                    return const CustomCard();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const HomeHeader(title: 'New Arrivals'),
                Padding(
                  padding: const .only(bottom: 16.0),
                  child: SizedBox(
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: .horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        padding: .only(right: 8.0),
                        width: 200,
                        child: const CustomCard(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

PreviewThemeData darkTheme() =>
    PreviewThemeData(materialDark: AppTheme.darkTheme);
@Preview(
  name: 'Home Screen preview',
  size: Size(344, 800),
  theme: darkTheme,
  brightness: .dark,
)
Widget homeScreenPreview() {
  return Scaffold(body: HomeScreen());
}
