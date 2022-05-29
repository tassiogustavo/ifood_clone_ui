import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BuildCarouselPromotion extends StatefulWidget {
  const BuildCarouselPromotion({Key? key}) : super(key: key);

  @override
  State<BuildCarouselPromotion> createState() => _BuildCarouselPromotionState();
}

class _BuildCarouselPromotionState extends State<BuildCarouselPromotion> {
  int indexCarousel = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          children: [
            CarouselSlider(
              items: List.generate(5, (index) {
                return Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/ifood.PNG'),
                      )),
                );
              }),
              options: CarouselOptions(
                  height: 140,
                  disableCenter: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      indexCarousel = index;
                    });
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  width: 5,
                  height: 5,
                  margin:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indexCarousel == index ? Colors.black : Colors.grey,
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
