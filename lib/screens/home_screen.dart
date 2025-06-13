import 'package:application/constants.dart';
import 'package:application/screens/match_screen.dart';
import 'package:application/widgets/live_match_box.dart';
import 'package:application/widgets/upcoming_matches.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Text('S', style: TextStyle(fontWeight: FontWeight.bold)),
            Icon(Icons.sports_soccer, color: kPrimaryColor),
            Text('ccer ', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Nerds',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Iconsax.notification)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Iconsax.category)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Live Matches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          // spreadRadius: 0,
                          blurRadius: 20,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/uefa-nations-league-logo-700x513.jpg',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Uefa Nations League',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 3),
                        Icon(CupertinoIcons.chevron_down, size: 18),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.only(left: 20),
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MatchScreen()),
                      );
                    },
                    child: LiveMatchBox(
                      awayScore: 4,
                      homeScore: 0,
                      time: 83,
                      awayLogo: "assets/images/spain.png",
                      homeLogo: "assets/images/portugal.png",
                      awayTeam: "Spain",
                      homeTeam: "Portugal",
                      color: kBoxColor,
                      textColors: Colors.white,
                      backgroundImage: DecorationImage(
                        image: AssetImage(
                          "assets/images/uefa-nations-league-logo-700x513.jpg",
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomLeft,
                        opacity: 0.3,
                      ),
                    ),
                  ),
                  LiveMatchBox(
                    awayScore: 3,
                    homeScore: 2,
                    time: 65,
                    awayLogo: "assets/images/man_united.png",
                    homeLogo: "assets/images/west_ham.png",
                    awayTeam: "Man United",
                    homeTeam: "West Ham",
                    color: kSecondBoxColor,
                    textColors: Colors.black,
                    backgroundImage: DecorationImage(
                      image: AssetImage("assets/images/pl.png"),
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomLeft,
                      opacity: 0.3,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    'Upcoming Matches',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: kPrimaryColor),
                    child: Text('See All'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,
                primary: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  UpComingMatches(
                    awayLogo: "assets/images/man_united.png",
                    awayTeam: "Man United",
                    homeLogo: "assets/images/liverpool.png",
                    homeTeam: "Liverpool FC",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: true,
                  ),
                  UpComingMatches(
                    awayLogo: "assets/images/swansea.png",
                    awayTeam: "Swansea AFC",
                    homeLogo: "assets/images/tottenham.png",
                    homeTeam: "Tottenham",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatches(
                    awayLogo: "assets/images/stoke.png",
                    awayTeam: "Stoke City",
                    homeLogo: "assets/images/arsenal.png",
                    homeTeam: "Arsenal",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                  UpComingMatches(
                    awayLogo: "assets/images/southampton.png",
                    awayTeam: "Southhampton",
                    homeLogo: "assets/images/sunderland.png",
                    homeTeam: "Sunderland",
                    date: "30 Dec",
                    time: "06:30",
                    isFavorite: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
