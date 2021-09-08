import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_series/pages/home/cubit/show_cubit.dart';
import 'package:tv_series/routes/routes.dart';
import 'package:tv_series/services/dio/dio_client.dart';

import 'services/i_shows_repository.dart';
import 'services/shows_repository.dart';

class MyApp extends StatelessWidget {
  static final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IShowsRepository>(
          create: (_) => ShowsRepository(_dioClient),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  ShowCubit(RepositoryProvider.of<IShowsRepository>(context)))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: generateRoute,
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
        ),
      ),
    );
  }
}
