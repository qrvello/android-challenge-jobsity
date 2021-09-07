import 'package:flutter/material.dart';
import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/pages/episode_details/episode_details.dart';
import 'package:tv_series/pages/home/home_page.dart';
import 'package:tv_series/pages/show_details/show_details.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => const HomePage());
    case '/show_details':
      return MaterialPageRoute(
          builder: (context) => ShowDetails(show: settings.arguments! as Show));
    case '/episode_details':
      return MaterialPageRoute(
          builder: (context) =>
              EpisodeDetails(episode: settings.arguments! as Episode));
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}
