import 'package:flutter/material.dart';
import 'package:paragon_heroes/domain/game_hero.dart';
import 'package:paragon_heroes/hero_detail_screen.dart';

void main() {
  GameHero steel = GameHero(
    name: "Steel",
    imageUrl:
        "https://static.wikia.nocookie.net/paragonthegame/images/a/a0/Hero_Portrait_Steel.png/revision/latest?cb=20171114083115",
    health: 500,
    power: 80,
    difficulty: "easy",
    quote: "You may...",
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  );

  GameHero dekker = GameHero(
    name: "Dekker",
    imageUrl:
        "https://static.wikia.nocookie.net/paragonthegame/images/6/63/Hero_Portrait_Dekker.png/revision/latest?cb=20171114084852",
    health: 1000,
    power: 40,
    difficulty: "middle",
    quote: "My name is dekker...",
    description:
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
  );

  runApp(MaterialApp(
    home: HeroDetailScreen(
      hero: dekker,
    ),
  ));
}
