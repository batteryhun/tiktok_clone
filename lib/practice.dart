import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Discovery"),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w500,
            ),
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "User",
              ),
              Tab(
                text: "News",
              ),
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Home",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 9 / 16,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.teal,
                child: Center(child: Text("$index")),
              ),
            ),
            for (var x in [1, 1, 1, 1])
              const Center(
                child: Text("1"),
              )
          ],
        ),
      ),
    );
  }
}
