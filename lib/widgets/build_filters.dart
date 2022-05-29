import 'package:flutter/material.dart';

class BuildFilters extends StatelessWidget {
  const BuildFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 35,
        margin: const EdgeInsets.only(
          bottom: 20,
          left: 15,
          top: 20,
        ),
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return false;
          },
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side:
                          const BorderSide(width: .5, color: Colors.grey))),
                  child: Row(
                    children: [
                      Text([
                        "Ordenar",
                        "Pra retirar",
                        "Entrega grátis",
                        "Vale Refeição",
                        "Promoção",
                        "Descontos",
                        "Novidades",
                      ][index]),
                      const Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              );
            },
            itemCount: 7,
          ),
        ),
      ),
    );
  }
}
