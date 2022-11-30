import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;

/// Simple class and list to link with database later
class SearchItem implements Comparable<SearchItem> {
  final String title, subtitle;
  final num info; // for some other future functionality

  const SearchItem(this.title, this.subtitle, this.info);

  @override
  int compareTo(SearchItem other) => title.compareTo(other.title);
}

const searchItems = [
  SearchItem('Nghia', 'Nguyen', 111),
  SearchItem('Cassidy', 'Meyers', 222),
  SearchItem('William', 'Sutton', 333),
  SearchItem('Tatiana', 'Washington', 444),
  SearchItem('Kyle', 'Meiler', 555),
  SearchItem('Pohnpei Basics', 'Nghia Nguyen', 2022),
  SearchItem('How to get around the island', 'Will Sutton', 2019),
];

/*
Debugging
*/
//void main() => runApp(const MyApp());
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'search_page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const SearchScreen(),
//     );
//   }
// }

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page', style: customStyle.appBarText),
        backgroundColor: customStyle.light,
        automaticallyImplyLeading: false,
      ),
      body: const Text("Press the search button to search"),
      backgroundColor: customStyle.primary,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search profiles, articles',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage(
            onQueryUpdate: print,
            items: searchItems,
            searchLabel: 'Search',
            suggestion: const Center(
              child: Text('Filter items by title, subtitle or info'),
            ),
            failure: const Center(
              child: Text('No items found :('),
            ),
            filter: (item) => [
              item.title,
              item.subtitle,
              item.info.toString(),
            ],
            sort: (a, b) => a.compareTo(b),
            builder: (item) => ListTile(
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: Text('${item.info}'),
            ),
          ),
        ),
        backgroundColor: customStyle.tertiary,
        child: const Icon(Icons.search),
      ),
    );
  }
}
