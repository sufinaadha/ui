flutter create football_livescore_app
cd football_livescore_app
import 'package:flutter/material.dart';

void main() {
  runApp(FootballLiveScoreApp());
}

class FootballLiveScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Live Score',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Live Score'),
      ),
      body: ScoreList(),
    );
  }
}

class ScoreList extends StatelessWidget {
  final List<Match> matches = [
    Match("Team A", "Team B", "2", "1"),
    Match("Team C", "Team D", "1", "1"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: matches.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${matches[index].team1} vs ${matches[index].team2}'),
          subtitle: Text('${matches[index].score1} - ${matches[index].score2}'),
        );
      },
    );
  }
}

class Match {
  final String team1;
  final String team2;
  final String score1;
  final String score2;

  Match(this.team1, this.team2, this.score1, this.score2);
}
flutter run

