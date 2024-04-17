import 'package:flutter/material.dart';
import 'package:paragon_heroes/domain/game_hero.dart';
import 'package:paragon_heroes/stats_widget.dart';

class HeroDetailScreen extends StatelessWidget {
  // Attribute
  final GameHero hero;

  // Konstruktor
  const HeroDetailScreen({
    super.key,
    required this.hero,
  });

  // Methode
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          hero.name,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        onPressed: () {},
        child: const Icon(Icons.shuffle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(height: 150, width: 150, hero.imageUrl),
              const SizedBox(
                height: 16,
              ),
              const StatsWidget(),
              const SizedBox(
                height: 16,
              ),
              Text(
                hero.quote,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(hero.description),
            ],
          ),
        ),
      ),
    );
  }
}
