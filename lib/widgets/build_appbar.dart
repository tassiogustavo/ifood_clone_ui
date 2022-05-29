import 'package:flutter/material.dart';

class BuildAppbar extends StatelessWidget {
  const BuildAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: InkWell(
        onTap: () {},
        child: Row(
          children: const [
            Text(
              "R. Nome da Rua, 000",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.red,
            )
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.qr_code_scanner,
            color: Colors.red,
          ),
          splashRadius: 25,
        )
      ],
      floating: true,
      bottom: buildBottomBar(),
    );
  }


  PreferredSize buildBottomBar() {
    return const PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Align(
        alignment: Alignment.centerLeft,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.red,
          indicatorColor: Colors.red,
          isScrollable: true,
          tabs: [
            Align(
              alignment: Alignment.centerLeft,
              child: Tab(
                child: Text(
                  'Mercados',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Tab(
                child: Text(
                  'Restaurantes',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
