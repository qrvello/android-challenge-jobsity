import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_series/models/episode.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({Key? key, required this.episodes}) : super(key: key);

  final List<Episode> episodes;

  @override
  Widget build(BuildContext context) {
    int? season;
    Widget seasonWidget;

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: episodes.length,
      itemBuilder: (context, index) {
        // If the season changes, we need to add a new header
        if (season != episodes[index].season) {
          season = episodes[index].season;
          seasonWidget = Padding(
            padding: const EdgeInsets.all(8.0) + const EdgeInsets.only(top: 16),
            child: Text(
              'Season $season',
              style: const TextStyle(fontSize: 24),
            ),
          );
        } else {
          seasonWidget = const SizedBox.shrink();
        }

        return Column(
          children: [
            seasonWidget,
            Card(
              child: ListTile(
                title: Text(episodes[index].name ?? ''),
                leading: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: episodes[index].image?.medium ?? '',
                ),
                trailing: Text(episodes[index].number?.toString() ?? ''),
                onTap: () => Navigator.pushNamed(
                  context,
                  '/episode_details',
                  arguments: episodes[index],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
