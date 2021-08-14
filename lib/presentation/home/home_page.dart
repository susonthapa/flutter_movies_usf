import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movies_usf/di/injection.dart';
import 'package:movies_usf/domain/content_status.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:movies_usf/presentation/common/navigation.dart';
import 'package:movies_usf/presentation/theme/colors.dart';
import 'package:movies_usf/router/router_vm.dart';
import 'package:movies_usf/router/ui_pages.dart';

import 'home_vm.dart';

final _homeVMProvider = ChangeNotifierProvider.autoDispose((ref) {
  final vm = getIt<HomeViewModel>();
  ref.onDispose(() {
    vm.dispose();
  });

  return vm;
});

Widget roundButton(IconData icon, Function onPressed) {
  return ElevatedButton(
    onPressed: () {
      onPressed();
    },
    style: ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(8),
    ),
    child: Icon(icon),
  );
}

Widget imageLoading(String url) {
  return Image.network(
    url,
    loadingBuilder: (context, child, progress) {
      if (progress == null) {
        return child;
      }
      return Container(
        color: Theme.of(context).disabledColor,
      );
    },
  );
}

class HomePage extends HookWidget {
  HomeViewModel _vm(BuildContext context) {
    return context.read(_homeVMProvider.notifier);
  }

  @override
  Widget build(BuildContext context) {
    Fimber.d('building home page');
    final searchController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies USF'),
      ),
      body: providerListenerAutoDispose<HomeViewModel>(
        _homeVMProvider,
        onChange: (context, vm) {
          final routerVM = context.read(routerVMProvider.notifier);
          if (vm.state.nav.type == HomeNav.details) {
            routerVM.action = PageAction(
              state: PageState.addPage,
              page: DetailsPageConfig.copyWith(args: vm.state.nav.args),
            );
          }
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search movies',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  roundButton(Icons.search, () {
                    _vm(context).searchMovie(searchController.text);
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            _ProgressIndicator(),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: _MovieListWidget(
                onItemClick: (position) =>
                    _vm(context).loadMovieDetails(position),
                onAddClick: (position) =>
                    _vm(context).addMovieToHistory(position),
              ),
            ),
            HistoryListWidget(),
          ],
        ),
      ),
    );
  }
}

class HistoryListWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    Fimber.d('building history list');
    final history =
        useProvider(_homeVMProvider.select((value) => value.state.history));
    return Visibility(
      visible: history.length != 0,
      child: Column(
        children: [
          Divider(
            height: 1,
            color: AppColors.onSurfaceEmphasisMedium,
          ),
          SizedBox(
            height: 116,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, position) {
                return HistoryItemWidget(movie: history[position]);
              },
              itemCount: history.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _MovieListWidget extends HookWidget {
  final Function(int) onItemClick;
  final Function(int) onAddClick;

  _MovieListWidget({required this.onItemClick, required this.onAddClick});

  @override
  Widget build(BuildContext context) {
    Fimber.d("building movies list widget");
    final searchResult = useProvider(
        _homeVMProvider.select((value) => value.state.searchResult));
    return ListView.builder(
      itemBuilder: (context, position) {
        return InkWell(
          onTap: () => onItemClick(position),
          child: MoviesItemWidget(
            movie: searchResult[position],
            onPressed: () => onAddClick(position),
          ),
        );
      },
      itemCount: searchResult.length,
    );
  }
}

class _ProgressIndicator extends HookWidget {
  @override
  Widget build(BuildContext context) {
    Fimber.d('building progress indicator');
    final contentStatus = useProvider(
        _homeVMProvider.select((value) => value.state.contentStatus));
    return Visibility(
      visible: contentStatus.status == DataStatus.loading,
      child: LinearProgressIndicator(),
    );
  }
}

class HistoryItemWidget extends StatelessWidget {
  final Movie movie;

  const HistoryItemWidget({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 108,
      padding: EdgeInsets.all(8),
      child: imageLoading(movie.image),
    );
  }
}

class MoviesItemWidget extends StatelessWidget {
  final Movie movie;
  final Function onPressed;

  const MoviesItemWidget({
    Key? key,
    required this.movie,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: imageLoading(movie.image),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title),
                Text(movie.type),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(movie.year),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          roundButton(
            Icons.add,
            onPressed,
          ),
        ],
      ),
    );
  }
}
