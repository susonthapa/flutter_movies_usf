import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_usf/data/movies_repository.dart';
import 'package:movies_usf/domain/content_status.dart';
import 'package:movies_usf/domain/lce.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:movies_usf/presentation/home/home_vm.dart';
import 'package:test/test.dart';

import 'home_vm_test.mocks.dart';
import 'package:rxdart/rxdart.dart';

import 'test_change_provider.dart';
import 'test_stream.dart';
import 'test_utils.dart';

@GenerateMocks([MoviesRepository])
void main() {
  late bool isSuccess;
  var repo = MockMoviesRepository();
  late HomeViewModel vm;
  late TestChangeProvider tester;
  final movies = [
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
    setUp(() {
      isSuccess = true;
      vm = HomeViewModel(repo);
      tester = TestChangeProvider(vm);
    });

    tearDown(() {
      vm.dispose();
    });

    // mock data
    when(repo.getMoviesFromServer(any)).thenAnswer((realInvocation) {
      if (isSuccess) {
        return Stream.value(Lce.content(movies)).startWith(Lce.loading());
      } else {
        return Stream<Lce<List<Movie>>>.value(Lce.error('something went wrong'))
            .startWith(Lce.loading());
      }
    });

    vmTest('when movie searched and found then show result', () {
      vm.searchMovie('blase');
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(movies, s.searchResult),
      ]);
    });

    vmTest('when movie is searched and query is empty then no search', () {
      vm.searchMovie('');
      tester.emitsItemCount(0);
    });

    vmTest('when move is searched and api error then show error', () {
      isSuccess = false;
      vm.searchMovie('query');
      tester.emitsItemCount(2);
      tester.emitsInOrder([
        (s) => equalsValue(ContentStatus.loading, s.contentStatus),
        (s) => equalsValue(
            ContentStatus.error('something went wrong'), s.contentStatus),
      ]);
    });
  });
}
