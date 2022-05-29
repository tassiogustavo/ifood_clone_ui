import 'package:flutter/material.dart';

class BuildTypeFoods extends StatelessWidget {
  const BuildTypeFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 90,
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              width: 90,
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              height: 30,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: [
                                    Colors.lightGreen,
                                    Colors.deepPurple,
                                    Colors.deepOrange,
                                    Colors.red,
                                    Colors.deepPurple,
                                  ][index],
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Image.network([
                                'https://imagensemoldes.com.br/wp-content/uploads/2020/07/Ilustra%C3%A7%C3%A3o-Carrinho-de-Compras-PNG-1280x720.png',
                                'https://ss-lp-uploads.s3.amazonaws.com/c/308462290/landingPage/5a4fdef02c8fc/meal.png',
                                'https://static.wixstatic.com/media/7d5ed7_2da23de8870745e4b2ef0c64b2862a4c~mv2.png/v1/fill/w_560,h_472,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/kiffa-hamburguer-lanches-artesanais-campinas-lanche.png',
                                'https://www.alsultan.com.br/wp-content/uploads/2018/12/esfirra-vegetariana.png',
                                'https://i.pinimg.com/originals/d6/1b/f9/d61bf95755e08ee9e10af273669df608.jpg',
                              ][index]
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: FittedBox(
                      child: Text([
                        'Mercado',
                        'Vale-refeição',
                        'Lanches',
                        'Vegetariano',
                        'Brasileira'
                      ][index]),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
