import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: Theme.of(context).textTheme.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResources(context),
            buildLicenses(context),
          ],
        ),
      ),
    );
  }

  Widget buildResources(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader(context, 'Resources'),
        Container(
            padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    "Due to the lack of API for creeds and confessional, all contents were retrieved manually from various trusted sources:",
                    style: TextStyle(fontSize: 16.0)),
                buildLink(
                    site: '\nCenter for Reformed Theology and Apologetics',
                    url: 'https://reformed.org/'),
                buildLink(
                    site: '\nChristian Apologetics & Research Ministry',
                    url: 'https://carm.org/'),
                buildLink(
                  site: '\nLigonier Ministries',
                  url: 'https://www.ligonier.org/',
                ),
              ],
            ))
      ],
    );
  }

  Widget buildLicenses(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildHeader(context, 'Licenses'),
        Container(
          padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              buildLicense(
                  packageName: 'Flutter Sticky Headers',
                  description:
                      "MIT License\n\nCopyright (c) 2018 Simon Lightfoot\n\nPermission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the \"Software\"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in allcopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS ORIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.",
                  url: 'https://pub.dartlang.org/packages/sticky_headers'),
              buildLicense(
                  packageName: 'URL Launcher',
                  description:
                      "Copyright 2017 The Chromium Authors. All rights reserved.\n\nRedistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met: \n\n* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\n\n* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.\n\n * Neither the name of Google Inc. nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.\n\nTHIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.",
                  url: 'https://pub.dartlang.org/packages/url_launcher')
            ],
          ),
        ),
      ],
    );
  }

  Widget buildLicense({String packageName, String description, String url}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildLink(site: packageName, url: url),
        Container(
            color: Color(0xff16316664),
            padding: EdgeInsets.all(8.0),
            child: Text(description, style: TextStyle(fontSize: 10)),
            margin: EdgeInsets.only(bottom: 8.0))
      ],
    );
  }

  Widget _buildHeader(BuildContext context, String title) {
    return Container(
      height: 50.0,
      color: Colors.blueGrey[700],
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      alignment: Alignment.centerLeft,
      child: Text('$title', style: Theme.of(context).textTheme.display1),
    );
  }

  Widget buildLink({String site, String url}) {
    return GestureDetector(
      child: Text(
        site,
        style: TextStyle(color: Colors.blue, fontSize: 16.0),
      ),
      onTap: () => _launchURL(url),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
