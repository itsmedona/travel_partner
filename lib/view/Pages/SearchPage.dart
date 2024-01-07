import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Search destination...",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

