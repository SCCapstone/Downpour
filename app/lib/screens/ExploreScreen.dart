import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Explore Screen"),
        backgroundColor: const Color.fromARGB(255, 117, 178, 221),
      ),
      body: Container(
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          staggeredTiles: _cardTile,
          children: _listTile,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
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

  const BackGroundTile(
      {super.key,
      required this.backgroundColor,
      required this.path,
      required this.launchpath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: IconButton(
        icon: Image.asset(path),
        iconSize: 300,
        color: Colors.white,
        onPressed: () {
          _launchInWebView(launchpath);
        },
      ),
    );
  }
}

/*child: new IconButton(
                          icon: Image.asset(
                              'Assets/Images/MicronesianLanguage.png'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView(
                              'http://talkingdictionary.swarthmore.edu/pohnpeian/'),
                        )*/
List<Widget> _listTile = <Widget>[
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 200, 244),
      launchpath: 'https://en.wikipedia.org/wiki/Micronesia',
      path: 'Assets/Images/Micronesia.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 244, 244),
      launchpath: 'https://animalia.bio/micronesia-animals',
      path: 'Assets/Images/PohnpeiFlycatcher.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 244, 219),
      launchpath:
          'https://visit-micronesia.fm/local-food-drink/#:~:text=The%20main%20staple%20foods%20in,%2C%20shellfish%2C%20pig%20and%20chicken.',
      path: 'Assets/Images/localfood.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 244, 244),
      launchpath:
          'https://naturalhistory2.si.edu/botany/micronesia/introduction.htm',
      path: 'Assets/Images/Palm-Tree.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 244, 244),
      launchpath: 'https://www.britannica.com/topic/flag-of-Micronesia',
      path: 'Assets/Images/flag.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 238, 244),
      launchpath: 'https://visit-micronesia.fm/waterfalls-and-caves/',
      path: 'Assets/Images/Sights.jpg'),
  const BackGroundTile(
      backgroundColor: Color.fromARGB(255, 54, 190, 244),
      launchpath: 'http://talkingdictionary.swarthmore.edu/pohnpeian/',
      path: 'Assets/Images/MicronesianLanguage.png'),
];
List<StaggeredTile> _cardTile = <StaggeredTile>[
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
];
