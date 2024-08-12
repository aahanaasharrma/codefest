import 'package:flutter/material.dart';
import 'drawer.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_icon.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/Rectangle4143.png'),
                ),
              ),
              SizedBox(height: 16.0),
              buildInfoBox('Full Name', 'John Doe'),
              buildInfoBox('Date of Birth', 'January 1, 1990'),
              buildInfoBox('Position', 'Software Engineer'),
              buildInfoBox('Address', '123 Main St, Cityville'),
              buildInfoBox('Email', 'john.doe@example.com'),
              buildInfoBox('Phone Number', '+1 (555) 123-4567'),
              SizedBox(height: 16.0),
              buildSocialIcons(),
              buildBottomAppBar(context), // Pass the context
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(), // Replace with your FloatingActionButton logic
      drawer: DrawerWidget(),
    );
  }

  Widget buildInfoBox(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'YourPreferredFont', // Replace with your preferred font
          ),
        ),
        SizedBox(height: 8.0),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(8.0),
          child: Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'YourPreferredFont',
            ),
          ),
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget buildSocialIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Image.asset('assets/images/linkedin_icon.png', height: 40.0, width: 40.0),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/images/facebook_icon.png', height: 40.0, width: 40.0),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset('assets/images/instagram_icon.png', height: 40.0, width: 40.0),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildBottomAppBar(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Image.asset('assets/images/home.png', height: 40.0, width: 40.0),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/images/search.png', height: 40.0, width: 40.0),
            onPressed: () {
              Navigator.pushNamed(context, '/events');
            },
          ),
          IconButton(
            icon: Image.asset('assets/images/chatbot.png', height: 90.0, width: 80.0),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
