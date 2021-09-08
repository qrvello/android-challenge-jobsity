import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/pages/home/item_widget.dart';
import 'package:tv_series/services/i_shows_repository.dart';
import 'package:tv_series/widgets/loading_widget.dart';

import 'cubit/search_cubit.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 3) {
      return const Center(
        child: Text(
          "Search term must be longer than two letters.",
        ),
      );
    }
    return BlocProvider(
      create: (context) =>
          SearchCubit(RepositoryProvider.of<IShowsRepository>(context))
            ..search(query),
      child: BlocBuilder<SearchCubit, SearchState>(
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
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length < 3) {
      return const Center(
        child: Text(
          "Search term must be longer than two letters.",
        ),
      );
    }

    return BlocProvider(
      create: (context) =>
          SearchCubit(RepositoryProvider.of<IShowsRepository>(context))
            ..search(query),
      child: BlocBuilder<SearchCubit, SearchState>(
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
    );
  }
}
