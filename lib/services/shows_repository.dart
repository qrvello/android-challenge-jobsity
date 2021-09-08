import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/i_shows_repository.dart';

import 'dio/dio_client.dart';

class ShowsRepository extends IShowsRepository {
  final DioClient _dio;

  const ShowsRepository(this._dio);

  @override
  Future<List<Show>> getShows() async {
    final response = await _dio.get('/shows');
    final List<Show> shows = [];

    response.data.forEach((show) {
      shows.add(Show.fromJson(show as Map<String, dynamic>));
    });

    return shows;
  }

  @override
  Future<Show> getShow(int showId) async {
    final response = await _dio.get('/shows/$showId');

    final Show show = Show.fromJson(response.data as Map<String, dynamic>);

    return show;
  }

  @override
  Future<List<Episode>> getEpisodes(int showId) async {
    final response = await _dio.get('/shows/$showId/episodes');
    final List<Episode> episodes = [];

    response.data.forEach((episode) {
      episodes.add(Episode.fromJson(episode as Map<String, dynamic>));
    });

    return episodes;
  }

  @override
  Future<List<Show>> searchShows(String query) async {
    final response = await _dio.get('/search/shows?q=$query');

    final List<Show> shows = [];

    response.data.forEach((data) {
      shows.add(Show.fromJson(data['show'] as Map<String, dynamic>));
    });

    return shows;
  }
}
