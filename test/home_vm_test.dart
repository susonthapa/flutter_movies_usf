import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_usf/data/movies_repository.dart';
import 'package:movies_usf/domain/content_status.dart';
import 'package:movies_usf/domain/lce.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:movies_usf/presentation/home/home_vm.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test/test.dart';

import 'home_vm_test.mocks.dart';
import 'test_change_provider.dart';
import 'test_utils.dart';

@GenerateMocks([MoviesRepository])
void main() {
  // represents repository LCE state
  late bool isSuccess;
  // mock our repository
  var repo = MockMoviesRepository();
  late HomeViewModel vm;
  // test provider
  late TestChangeNotifier<HomeState> tester;
  // our response
  final movies = [
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '222',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
    Movie(
      id: '221',
      title: 'Blase',
      year: '2019',
      type: 'Action',
      image: 'image.png',
    ),
  ];

  group('home vm tests', () {
    // setup our tester and vm
    setUp(() {
      isSuccess = true;
      vm = HomeViewModel(repo);
      tester = TestChangeNotifier(vm);
    });

    // dispose our vm
    tearDown(() {
      vm.dispose();
    });

    // mock data
    when(repo.getMoviesFromServer(any)).thenAnswer((realInvocation) {
      if (isSuccess) {
        // return loading and content
        return Stream.value(Lce.content(movies)).startWith(Lce.loading());
      } else {
        // return loading and error
        return Stream<Lce<List<Movie>>>.value(Lce.error('something went wrong'))
            .startWith(Lce.loading());
      }
    });

    vmTest('when movie searched and found then show result', () async {
      vm.searchMovie('blase');
      await tester.wait();
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(movies, s.searchResult),
      ]);
    });

    vmTest('when movie searched and query is empty then no search result',
        () async {
      vm.searchMovie('');
      await tester.wait();
      tester.emitsItemCount(0);
    });

    vmTest('when move searched and api error then show error', () async {
      isSuccess = false;
      vm.searchMovie('query');
      await tester.wait();
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(
            ContentStatus.error('something went wrong'), s.contentStatus),
      ]);
    });

    vmTest('when add to history then update history', () async {
      vm.searchMovie('query');
      await tester.wait();
      vm.addMovieToHistory(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(2, (s) => equalsValue(movies[0], s.history[0]));
    });

    vmTest('when add to history and movie already added then no history update',
        () async {
      vm.searchMovie('query');
      await tester.wait();
      vm.addMovieToHistory(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(2, (s) => equalsValue(movies[0], s.history[0]));
      vm.addMovieToHistory(0);
      // verify no new state is emitted
      tester.emitsItemCount(3);
    });

    vmTest('when movie click navigate to movie details', () async {
      vm.searchMovie('query');
      await tester.wait();
      vm.loadMovieDetails(0);
      tester.emitsItemCount(3);
      tester.emitsItemAt(
        2,
        (s) =>
            equalsValue(HomeNav.details, s.nav.type) &&
            equalsValue(movies[0], s.nav.args),
      );
    });
  });
}
