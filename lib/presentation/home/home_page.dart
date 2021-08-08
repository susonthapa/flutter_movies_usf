import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_usf/di/injection.dart';
import 'package:movies_usf/domain/movie.dart';

import 'home_vm.dart';

final _homeVMProvider = ChangeNotifierProvider.autoDispose((ref) {
  final vm = getIt<HomeViewModel>();
  ref.onDispose(() {
    vm.dispose();
  });

  return vm;
});

class HomePage extends HookWidget {
  HomeViewModel _vm(BuildContext context) {
    return context.read(_homeVMProvider.notifier);
  }

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies USF'),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final state = watch(_homeVMProvider).state;
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: "Search movies",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () {
                      _vm(context).searchMovie(searchController.text);
                    },
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, position) {
                    return MoviesItemWidget(
                        movie: state.searchResult[position]);
                  },
                  itemCount: state.searchResult.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class MoviesItemWidget extends StatelessWidget {
  final Movie movie;

  const MoviesItemWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(movie.image),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            children: [
              Text(movie.title),
              Text(movie.type),
              SizedBox(
                height: 8,
              ),
              Text(movie.year),
            ],
          ),
        ],
      ),
    );
  }
}
