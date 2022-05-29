import 'package:flutter/material.dart';

class BuildPromotion extends StatelessWidget {
  const BuildPromotion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 80,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/ifood-promotion.PNG'))),
      ),
    );
  }
}
