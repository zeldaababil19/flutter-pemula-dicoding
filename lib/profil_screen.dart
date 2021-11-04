import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

String urlLinkedIn = "https://www.linkedin.com/in/zelda-ababil-47279b1a4";
String urlGithub = "https://github.com/zeldaababil19";

class ProfilScreen extends StatelessWidget {
  void _launchLinkedIn() async => await canLaunch(urlLinkedIn) ? await launch(urlLinkedIn) : throw 'Could not launch $urlLinkedIn';

  void _launchTwitter() async => await canLaunch(urlGithub) ? await launch(urlGithub) : throw 'Could not launch $urlGithub';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF3e150f), Colors.black],
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Author'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF3e150f), Colors.black],
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'assets/images/ZELDA ABABIL.jpg',
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'Zelda Ababil',
                style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Jember',
                style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      onPressed: () {
                        String? encodeQueryParameters(Map<String, String> params) {
                          return params.entries.map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
                        }

                        final Uri emailLaunchUri = Uri(
                          scheme: 'mailto',
                          path: 'zeldaababil01@gmail.com',
                          query: encodeQueryParameters(<String, String>{'subject': 'Feedback'}),
                        );
                        launch(emailLaunchUri.toString());
                      },
                      icon: Image.asset('assets/images/gmail.png')),
                  IconButton(
                      onPressed: () {
                        _launchLinkedIn();
                      },
                      icon: Image.asset('assets/images/linkedin.png')),
                  IconButton(
                      onPressed: () {
                        _launchTwitter();
                      },
                      icon: Image.asset('assets/images/GitHub-Mark.png')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
