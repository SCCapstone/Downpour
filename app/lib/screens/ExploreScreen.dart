import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Screen"),
        backgroundColor: const Color.fromARGB(255, 117, 178, 221),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: _listTile,
      ),
    );
  }
}

Future<void> _launchInWebView(String url) async {
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

class BackGroundTile extends StatelessWidget {
  final Color backgroundColor;
  final String path;
  final String launchpath;
  final String description;

  const BackGroundTile({
    super.key,
    required this.backgroundColor,
    required this.path,
    required this.launchpath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: InkWell(
        onTap: () {
          _launchInWebView(launchpath);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(1),
              child: Image.asset(
                path,
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _listTile = <Widget>[
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath: 'https://en.wikipedia.org/wiki/Micronesia',
    path: 'Assets/Images/Micronesia.jpg',
    description: 'Learn more about Micronesia on Wikipedia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath: 'https://animalia.bio/micronesia-animals',
    path: 'Assets/Images/PohnpeiFlycatcher.jpg',
    description: 'Explore the animals of Micronesia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath:
        'https://visit-micronesia.fm/local-food-drink/#:~:text=The%20main%20staple%20foods%20in,%2C%20shellfish%2C%20pig%20and%20chicken.',
    path: 'Assets/Images/localfood.jpg',
    description: 'Discover the local food and drink of Micronesia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath:
        'https://naturalhistory2.si.edu/botany/micronesia/introduction.htm',
    path: 'Assets/Images/Palm-Tree.jpg',
    description: 'Explore the flora of Micronesia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath: 'https://www.britannica.com/topic/flag-of-Micronesia',
    path: 'Assets/Images/flag.jpg',
    description: 'Learn about the flag of Micronesia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath: 'https://visit-micronesia.fm/waterfalls-and-caves/',
    path: 'Assets/Images/Sights.jpg',
    description: 'Discover the waterfalls and caves of Micronesia',
  ),
  const BackGroundTile(
    backgroundColor: Color.fromARGB(255, 0, 161, 222),
    launchpath: 'http://talkingdictionary.swarthmore.edu/pohnpeian/',
    path: 'Assets/Images/MicronesianLanguage.png',
    description: 'Learn the Pohnpeian language with the Talking Dictionary',
  ),
];
List<StaggeredTile> _cardTile = <StaggeredTile>[
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
];
