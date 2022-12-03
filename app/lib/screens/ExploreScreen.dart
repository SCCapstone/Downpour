import 'package:flutter/material.dart';
import 'package:pohnpeian_language_app/theme/style.dart' as customStyle;
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';
class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
            appBar: AppBar(
              title:
                  const Text('Explore Screen', style: customStyle.appBarText),
              backgroundColor: Color.fromARGB(255, 117, 178, 221),
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(1),
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              crossAxisCount: 1,
              children: <Widget>[
                Container(
                    child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/Micronesia.jpg'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView('https://en.wikipedia.org/wiki/Micronesia'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'The Island',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                Container(
                  child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/PohnpeiFlycatcher.jpg'),
                          iconSize: 200,
                         onPressed: () => _launchInWebView('https://animalia.bio/micronesia-animals'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Wildlife',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                Container(
                    child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/localfood.jpg'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView('https://visit-micronesia.fm/local-food-drink/#:~:text=The%20main%20staple%20foods%20in,%2C%20shellfish%2C%20pig%20and%20chicken.'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Food',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                Container(
                   child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/Palm-Tree.jpg'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView('https://naturalhistory2.si.edu/botany/micronesia/introduction.htm'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Plant Life',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                Container(
                   child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/flag.jpg'),
                          iconSize: 200,
                         onPressed: () => _launchInWebView('https://www.britannica.com/topic/flag-of-Micronesia'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'The Flag',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                Container(
                   child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/Sights.jpg'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView('https://visit-micronesia.fm/waterfalls-and-caves/'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Sights',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                )),
                 Container(
                   child: Stack(
                  children: <Widget>[
                    new SizedBox(
                        height: 250.0,
                        width: double.infinity,
                        child: new IconButton(
                          icon: Image.asset('Assets/Images/MicronesianLanguage.png'),
                          iconSize: 200,
                          onPressed: () => _launchInWebView('http://talkingdictionary.swarthmore.edu/pohnpeian/'),
                        )),
                    Container(
                        alignment: Alignment.center,
                        child: const Text(
                          'Language',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        )),
                  ],
                ))
              ],
            )));
    /*  
          child: Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            'Assets/Images/Micronesia.jpg',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            alignment: Alignment.center,
            child: const Text(
              'The Island',
              style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            )),
      ],
    ),*/
  }
}
class informationScreen extends StatefulWidget {
  const informationScreen({Key? key}) : super(key: key);

  @override
  State<informationScreen> createState() => _InformationScreenState();
}
class _InformationScreenState extends State<informationScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Answer'),
      ),
      body: const Center(
          child: Text(
        'Incorrect',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )),
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