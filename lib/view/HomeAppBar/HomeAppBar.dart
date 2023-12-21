import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(),
              color: Colors.white,
              child: Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text(
                "Kerala, India",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
