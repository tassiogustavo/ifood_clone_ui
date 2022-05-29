import 'package:flutter/material.dart';

class BuildStores extends StatelessWidget {
  const BuildStores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 5),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Últimas lojas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "Ver mais",
                  style: TextStyle(fontSize: 17, color: Colors.red),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.only(right: 5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            maxRadius: 35,
                            backgroundImage: NetworkImage([
                              'https://img.freepik.com/vetores-gratis/hamburguer-vintage-mao-desenhada-ilustracao-do-logotipo_43582-60.jpg?w=2000',
                              'https://i.pinimg.com/originals/79/e6/ce/79e6ce3c1e4851f64ce193b585be805e.jpg',
                              'https://cdn.dribbble.com/users/2309601/screenshots/5267165/media/2041b924392fdb11447b6eca89cb37e0.png?compress=1&resize=400x300',
                              'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/burger-shop-logo-template-design-510f1354bbaffb1b1310714288d964f4_screen.jpg?ts=1634474166',
                              'https://i.pinimg.com/originals/a3/48/7f/a3487ff83ff2c6e1a2313a73774e331b.png',
                              'https://www.designevo.com/res/templates/thumb_small/delicious-steaming-taco.png',
                            ][index]),
                          ),
                          SizedBox(
                            height: 15,
                            child: Text([
                              'Burger Bom',
                              'Big Lanches',
                              'Salgaderia Imperial',
                              'RK Burger',
                              'Super Burger',
                              'Los Tacos',
                            ][index]),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
