import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class TechNewsScreen extends StatefulWidget {
  @override
  _TechNewsScreenState createState() => _TechNewsScreenState();
}

class _TechNewsScreenState extends State<TechNewsScreen> {
  List<dynamic> articles = [];

  @override
  void initState() {
    super.initState();
    fetchTechNews();
  }

  Future<void> fetchTechNews() async {
    final apiKey = '3ac79dba0674406f80270019b2c3938d'; // Replace with your News API key
    final url = 'https://newsapi.org/v2/top-headlines?category=technology&language=en&apiKey=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        setState(() {
          articles = data['articles'];
        });
      } else {
        print('Failed to load tech news: ${response.statusCode}');
      }
    } catch (error) {
      print('Error fetching tech news: $error');
    }
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/bg_icon.jpg', // Replace with your background image URL
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),

          // Articles List
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0), // Adjust the height to move the "Tech News" text down
                Text(
                  'Latest Tech News!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40, // Adjust text size
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.0), // Add some space between title and articles list
                Expanded(
                  child: ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      final article = articles[index];
                      return Card(
                        color: Colors.transparent, // Set color to transparent
                        margin: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(
                            article['title'],
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          onTap: () {
                            // Open the real article in a web browser or a WebView
                            // You can use the 'url' field from the article data
                            // For simplicity, let's use the url_launcher package to open in the default browser
                            launchURL(article['url']);
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TechNewsScreen(),
  ));
}