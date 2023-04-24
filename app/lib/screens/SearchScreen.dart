import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_page/search_page.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class SearchItem implements Comparable<SearchItem> {
  final String title, subtitle;
  final num info;
  final String url;
  final String md;
  const SearchItem(this.title, this.subtitle, this.info, this.url, this.md);
  @override
  int compareTo(SearchItem other) => title.compareTo(other.title);

  void onPressed(BuildContext? context) {
    if (context != null) {
      launch(url);
    }
  }
}

const searchItems = [
  SearchItem('Nghia', 'Nguyen', 111, 'https://github.com/nghia-t-nguyen', ''),
  SearchItem('Cassidy', 'Meyers', 222, 'https://github.com/Clmeyers-Dev', ''),
  SearchItem('William', 'Sutton', 333, 'https://github.com/Wsutton424', ''),
  SearchItem('Tatiana', 'Washington', 444, 'https://github.com/tsw5', ''),
  SearchItem('Kyle', 'Meiler', 555, 'https://github.com/kmeiler', ''),
  SearchItem('Pohnpei Basics', 'Nghia Nguyen', 2022, '',
      'Assets/PDF/Pohnpei-Basics.md'),
  SearchItem('How to get around the island', 'Will Sutton', 2019, '',
      'Assets/PDF/How-To-Get-Around-The-Island.md'),
];

Future<void> launch(String url) async {
  final UrlLauncherPlatform launcher = UrlLauncherPlatform.instance;
  if (!await launcher.launch(
    url,
    useSafariVC: true,
    useWebView: true,
    enableJavaScript: false,
    enableDomStorage: false,
    universalLinksOnly: false,
    headers: <String, String>{'my_header_key': 'my_header_value'},
  )) {
    throw 'Could not launch $url';
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page', style: customStyle.appBarText),
        backgroundColor: customStyle.light,
        automaticallyImplyLeading: false,
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Use the magnifying glass to search for interesting articles!"),
                Image.asset(
                  'Assets/gif/lorikeet_idle.gif',
                  height: 200,
                  width: 150,
                )
              ])),
      backgroundColor: customStyle.primary,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Search profiles, articles',
        onPressed: () => showSearch(
          context: context,
          delegate: SearchPage(
            onQueryUpdate: print,
            items: searchItems,
            searchLabel: 'Search',
            barTheme: ThemeData(
                primarySwatch: const MaterialColor(0xfff4f5f8, <int, Color>{
              50: Color(0xfff4f5f8),
              100: Color(0xfff4f5f8),
              200: Color(0xfff4f5f8),
              300: Color(0xfff4f5f8),
              400: Color(0xfff4f5f8),
              500: Color(0xfff4f5f8),
              600: Color(0xfff4f5f8),
              700: Color(0xfff4f5f8),
              800: Color(0xfff4f5f8),
              900: Color(0xfff4f5f8),
            })),
            suggestion: Container(
                color: customStyle.primary,
                child: const Center(
                  child: Text('Filter items by title, subtitle or info'),
                )),
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
              onTap: () async {
                if (item.url != '') {
                  launch(item.url);
                } else {
                  final markdown = await rootBundle.loadString(item.md);
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Scaffold(
                        appBar: AppBar(
                          title: Text(item.title),
                        ),
                        body: Markdown(data: markdown),
                      ),
                    ),
                  );
                }
              },
            ),
          ),
        ),
        backgroundColor: customStyle.tertiary,
        child: const Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
