import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/api.dart';
import 'package:tv_series/pages/show_details/episodes_list.dart';
import 'package:tv_series/widgets/loading_widget.dart';

import 'cubit/show_details_cubit.dart';

class ShowDetails extends StatelessWidget {
  const ShowDetails({Key? key, required this.show}) : super(key: key);
  final Show show;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowDetailsCubit(Api())..showDetails(show.id!),
      child: BlocBuilder<ShowDetailsCubit, ShowDetailsState>(
        builder: (context, state) {
          final Widget episodesList = state.when(
              initial: () => const LoadingWidget(),
              loading: () => const LoadingWidget(),
              loaded: (List<Episode> episodes) =>
                  EpisodesList(episodes: episodes),
              error: (String message) => Center(child: Text(message)));

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
                        //backgroundColor: Colors.tran,
                        expandedHeight: 650.0,
                        pinned: true,
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: true,
                          title: Text(
                            show.name ?? '',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16.0),
                          ),
                          background: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: show.image?.original ?? '',
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
                              child: Text('Summary: ${show.summary}'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                  'Schedule: ${show.schedule?.days?.join(', ')} at ${show.schedule?.time}'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('Genres: ${show.genres?.join(', ')}'),
                            ),
                          ],
                        ),
                      ),
                      //episodesList
                    ],
                  ),
                  episodesList
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
