import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';

import 'dio_client.dart';

class Api {
  final _dio = DioClient();

  Future<List<Show>> getShows() async {
    final response = await _dio.get('/shows');
    final List<Show> shows = [];

    response.data.forEach((show) {
      shows.add(Show.fromJson(show as Map<String, dynamic>));
    });

    return shows;
  }

  Future<Show> getShow(int showId) async {
    final response = await _dio.get('/shows/$showId');

    final Show show = Show.fromJson(response.data as Map<String, dynamic>);

    return show;
  }

  Future<List<Episode>> getEpisodes(int showId) async {
    final response = await _dio.get('/shows/$showId/episodes');
    final List<Episode> episodes = [];

    response.data.forEach((episode) {
      episodes.add(Episode.fromJson(episode as Map<String, dynamic>));
    });

    return episodes;
  }
}
