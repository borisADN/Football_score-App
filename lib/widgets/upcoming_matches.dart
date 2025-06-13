import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:application/constants.dart';

class UpComingMatches extends StatelessWidget {
  const UpComingMatches({
    super.key,
    required this.homeLogo,
    required this.awayLogo,
    required this.awayTeam,
    required this.homeTeam,
    required this.date,
    required this.time,
    required this.isFavorite,
  });

  final String homeLogo, awayLogo, awayTeam, homeTeam, date, time;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: kBackgroundColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Nom de l'équipe à domicile
              Expanded(
                flex: 2,
                child: Text(
                  homeTeam,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              // Logos superposés avec heure/date au centre
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset(homeLogo, height: 40, width: 40),
                            const SizedBox(height: 4),
                            const Text('home', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              time,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(date, style: const TextStyle(fontSize: 12)),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Image.asset(awayLogo, height: 40, width: 40),
                            const SizedBox(height: 4),
                            const Text('away', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Nom de l'équipe à l'extérieur
              Expanded(
                flex: 2,
                child: Text(
                  awayTeam,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Ligne supérieure colorée
        Positioned(
          top: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 5,
            decoration: BoxDecoration(
              color: isFavorite ? kPrimaryColor : Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        ),
        // Icône favorite
        if (isFavorite)
          const Positioned(
            top: 10,
            left: 10,
            child: Icon(Iconsax.star5, color: kPrimaryColor, size: 15),
          ),
      ],
    );
  }
}
