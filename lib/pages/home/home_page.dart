import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/pages/search/cubit/search_cubit.dart';
import 'package:tv_series/pages/search/search.dart';
import 'package:tv_series/services/i_shows_repository.dart';
import 'package:tv_series/pages/home/item_widget.dart';
import 'package:tv_series/widgets/loading_widget.dart';

import 'cubit/show_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV Series'),
        actions: [
          BlocProvider(
            create: (context) =>
                SearchCubit(RepositoryProvider.of<IShowsRepository>(context)),
            lazy: false,
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () =>
                      showSearch(context: context, delegate: Search()),
                  icon: const Icon(Icons.search),
                );
              },
            ),
          ),
          IconButton(
            // TODO add profile page with favorites shows
            onPressed: () {},
            icon: const Icon(Icons.person),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) =>
            ShowCubit(RepositoryProvider.of<IShowsRepository>(context))..init(),
        child: BlocBuilder<ShowCubit, ShowState>(
          builder: (context, state) => state.when(
            initial: () => const LoadingWidget(),
            loading: () => const LoadingWidget(),
            loaded: (List<Show> shows) => ListView.builder(
              itemCount: shows.length,
              itemBuilder: (_, i) => ItemWidget(show: shows[i]),
            ),
            error: (e) => Center(child: Text(e)),
          ),
        ),
      ),
    );
  }
}
