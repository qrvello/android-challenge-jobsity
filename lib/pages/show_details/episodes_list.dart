import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tv_series/models/episode.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/services/i_shows_repository.dart';
import 'package:tv_series/widgets/loading_widget.dart';

import 'cubit/show_details_cubit.dart';

class EpisodesList extends StatelessWidget {
  const EpisodesList({Key? key, required this.show}) : super(key: key);

  final Show show;

  @override
  Widget build(BuildContext context) {
    int? season;
    Widget seasonWidget;

    return BlocProvider(
      create: (context) =>
          ShowDetailsCubit(RepositoryProvider.of<IShowsRepository>(context))
            ..showDetails(show.id!),
      child: BlocBuilder<ShowDetailsCubit, ShowDetailsState>(
        builder: (context, state) {
          return state.when(
              initial: () => const LoadingWidget(),
              loading: () => const LoadingWidget(),
              loaded: (List<Episode> episodes) => ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: episodes.length,
                    itemBuilder: (context, index) {
                      // If the season changes, we need to add a new header
                      if (season != episodes[index].season) {
                        season = episodes[index].season;
                        seasonWidget = Padding(
                          padding: const EdgeInsets.all(8.0) +
                              const EdgeInsets.only(top: 16),
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
                              leading: episodes[index].image?.medium != null
                                  ? FadeInImage.memoryNetwork(
                                      placeholder: kTransparentImage,
                                      image: episodes[index].image!.medium!,
                                    )
                                  : null,
                              trailing: Text(
                                  episodes[index].number?.toString() ?? ''),
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
                  ),
              error: (String message) => Center(child: Text(message)));
        },
      ),
    );
  }
}
