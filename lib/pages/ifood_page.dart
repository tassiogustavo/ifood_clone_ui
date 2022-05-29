import 'package:clone_ifood/widgets/bottom_navigation_bar.dart';
import 'package:clone_ifood/widgets/build_appbar.dart';
import 'package:clone_ifood/widgets/build_carousel_promotion.dart';
import 'package:clone_ifood/widgets/build_filters.dart';
import 'package:clone_ifood/widgets/build_promotion.dart';
import 'package:clone_ifood/widgets/build_stores.dart';
import 'package:clone_ifood/widgets/build_type_foods.dart';
import 'package:flutter/material.dart';

class IFoodPage extends StatefulWidget {
  const IFoodPage({Key? key}) : super(key: key);

  @override
  State<IFoodPage> createState() => _IFoodPageState();
}

class _IFoodPageState extends State<IFoodPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: CustomScrollView(
          slivers: [
            BuildAppbar(),
            BuildFilters(),
            BuildTypeFoods(),
            BuildCarouselPromotion(),
            BuildStores(),
            BuildPromotion(),
          ],
        ),
      ),
      bottomNavigationBar: BuilderBottomNavigationBar(),
    );
  }

}
