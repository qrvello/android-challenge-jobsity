import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_series/models/episode.dart';

class EpisodeDetails extends StatelessWidget {
  const EpisodeDetails({Key? key, required this.episode}) : super(key: key);
  final Episode episode;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              slivers: <Widget>[
                SliverAppBar(
                  elevation: 2.0,
                  expandedHeight: 200.0,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text(
                      episode.name ?? '',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    background: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: episode.image?.original ?? '',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(episode.summary ?? ''),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Chapter ${episode.number}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('Season ${episode.season}'),
                      ),
                    ],
                  ),
                ),
                //episodesList
              ],
            ),
          ],
        ),
      ),
    );
  }
}
