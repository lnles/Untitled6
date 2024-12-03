import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: height * .05,
            child: TabBar(
              tabs: const [
                TabItem(title: 'Breakfast'),
                TabItem(title: 'Lunch'),
                TabItem(title: 'Dinner'),
                TabItem(title: 'Quick'),
              ],
              unselectedLabelColor: Colors.red,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: width * .012),
            ),
          ),
          SizedBox(height: height * .02),
          SizedBox(
            height: height * .3,
            child: const TabBarView(children: [
              Text('Breakfast'),
              Text('Lunch'),
              Text('Dinner'),
              Text('Quick'),
              // HomeTabBarView(recipe: 'breakfast'),
              // HomeTabBarView(recipe: 'lunch'),
              // HomeTabBarView(recipe: 'dinner'),
              // HomeTabBarView(recipe: 'quick'),
            ]),
          )
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 9.8),
        ),
      ),
    );
  }
}