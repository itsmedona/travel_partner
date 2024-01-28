import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  String lastSearch = "";

  @override
  void initState() {
    super.initState();
    _loadSearchHistory();
  }

  void _loadSearchHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      lastSearch = prefs.getString('lastSearch') ?? "";
    });
  }

  void _saveSearchHistory(String query) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('lastSearch', query);
  }

  void _onSearch(String query) {
    setState(() {
      if (query.isNotEmpty) {
        lastSearch = query;
        _saveSearchHistory(query);
        // Handle the search logic here
      }
    });
  }

  void _clearSearchHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('lastSearch');
    setState(() {
      lastSearch = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _onSearch,
              decoration: InputDecoration(
                hintText: 'Search...',
              ),
            ),
          ),
          if (lastSearch.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Last Search:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Chip(
                  label: Text(lastSearch),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: _clearSearchHistory,
                    child: Text('Clear History'),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
