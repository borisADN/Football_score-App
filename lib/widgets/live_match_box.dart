import 'package:application/constants.dart';
import 'package:flutter/material.dart';

class LiveMatchBox extends StatelessWidget {
  const LiveMatchBox({
    super.key,
    required this.homeLogo,
    required this.awayLogo,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.time,
    required this.color,
    required this.textColors,
    required this.backgroundImage,
  });

  final String homeLogo, awayLogo, homeTeam, awayTeam;
  final int homeScore, awayScore, time;
  final Color color, textColors;
  final DecorationImage backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        image: backgroundImage,
      ),
      child: Column(
        children: [
          Text(
            'Allianz Arena',
            style: TextStyle(
              fontSize: 16,
              color: textColors,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text('final', style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 10),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(homeLogo, width: 90, height: 90),
                  SizedBox(height: 10),
                  Text(
                    homeTeam,
                    style: TextStyle(
                      color: textColors,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Home',
                    style: TextStyle(color: textColors, fontSize: 14),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    "$time'",
                    style: TextStyle(color: textColors, fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$homeScore : ',
                          style: TextStyle(color: textColors, fontSize: 36),
                        ),
                        TextSpan(
                          text: '$awayScore',
                          style: TextStyle(color: kPrimaryColor, fontSize: 36),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Image.asset(awayLogo, width: 90, height: 90),
                  SizedBox(height: 10),
                  Text(
                    awayTeam,
                    style: TextStyle(
                      color: textColors,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Away',
                    style: TextStyle(color: textColors, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
