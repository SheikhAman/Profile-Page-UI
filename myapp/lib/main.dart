import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/numbers_widget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: [
        buildTop(),
        buildContent(),
      ],
    ));
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(
              bottom: bottom,
            ),
            child: buildCoverImage()),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://images.unsplash.com/photo-1610563166150-b34df4f3bcd6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1076&q=80',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://scontent.fdac39-1.fna.fbcdn.net/v/t39.30808-6/219347011_2911019935828923_8148884444639200226_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=0t7_b3cHheAAX-x7WcB&_nc_ht=scontent.fdac39-1.fna&oh=ec6fec55ab3e788a7996d107e53b69d5&oe=617C6F2B'),
      );
}

Widget buildContent() => Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Text(
          'Sheikh Aman',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Flutter Software Engineer',
          style: TextStyle(fontSize: 20, color: Colors.black54),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(FontAwesomeIcons.slack),
            SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.github),
            SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.twitter),
            SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.linkedin),
            SizedBox(
              width: 12,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Divider(),
        SizedBox(
          height: 16,
        ),
        NumbersWidget(),
        Divider(),
        SizedBox(
          height: 16,
        ),
        buildAbout(),
        SizedBox(
          height: 32,
        ),
      ],
    );

Widget buildAbout() => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Flutter Software Engineer and Google Developer Expert for Flutter & Dart with years of experience as a consltant for multiple companies in Europe, USA and Asia.\nMy mission is to create a better world with beautiful Flutter app design and software!',
            style: TextStyle(fontSize: 18, height: 1.4),
          )
        ],
      ),
    );
Widget buildSocialIcon(IconData icon) => CircleAvatar(
      radius: 25,
      child: Material(
        shape: CircleBorder(),
        clipBehavior: Clip.hardEdge,
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Icon(
              icon,
              size: 32,
            ),
          ),
        ),
      ),
    );
