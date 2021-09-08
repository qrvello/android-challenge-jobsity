import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:tv_series/models/show.dart';
import 'package:tv_series/pages/search/cubit/search_cubit.dart';
import 'package:tv_series/pages/search/search.dart';
import 'package:tv_series/services/i_shows_repository.dart';
import 'package:tv_series/pages/home/item_widget.dart';
import 'package:tv_series/widgets/loading_widget.dart';

import 'cubit/show_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PagingController<int, Show> _pagingController =
      PagingController(firstPageKey: 0);
  int _pageKey = 0;
  @override
  void initState() {
    BlocProvider.of<ShowCubit>(context).get();

    _pagingController.addPageRequestListener((pageKey) {
      _pageKey = pageKey;
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    await BlocProvider.of<ShowCubit>(context).get(page: pageKey);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TV Series'),
        actions: [
          BlocProvider(
            create: (context) =>
                SearchCubit(RepositoryProvider.of<IShowsRepository>(context)),
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
      body: BlocConsumer<ShowCubit, ShowState>(
        listener: (context, state) {
          state.when(
              initial: () {},
              loading: () {},
              loaded: (List<Show> shows) {
                final isLastPage = _pageKey == 229;

                if (isLastPage) {
                  _pagingController.appendLastPage(shows);
                } else {
                  final nextPageKey = _pageKey + 1;
                  _pagingController.appendPage(shows, nextPageKey);
                }
              },
              error: (String message) {});
        },
        builder: (context, state) {
          return state.when(
            initial: () => const LoadingWidget(),
            loading: () => const LoadingWidget(),
            loaded: (List<Show> shows) {
              return PagedListView<int, Show>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate(
                  firstPageProgressIndicatorBuilder: (_) =>
                      const LoadingWidget(),
                  itemBuilder: (_, item, index) => ItemWidget(show: item),
                ),
              );
            },
            error: (e) => Center(child: Text(e)),
          );
        },
      ),
    );
  }
}
