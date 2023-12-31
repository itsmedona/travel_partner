import 'package:flutter/material.dart';
import 'package:travel_partner/view/Bars/PostAppBar.dart';
import 'package:travel_partner/view/Bars/PostBottBar.dart';


class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/trvel.png"),
        fit: BoxFit.cover,
        opacity: 0.7,
      ),),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(preferredSize: Size.fromHeight(90),
         child: PostAppBar(),
         ),
         bottomNavigationBar: PostBottBar(),
      ),
    );
  }
}
