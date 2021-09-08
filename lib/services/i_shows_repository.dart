import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';

abstract class IShowsRepository {
  const IShowsRepository();

  Future<List<Show>> getShows(int page);

  Future<Show> getShow(int showId);

  Future<List<Episode>> getEpisodes(int showId);

  Future<List<Show>> searchShows(String query);
}
