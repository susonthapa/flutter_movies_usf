import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:movies_usf/di/movies_repository.dart';
import 'package:movies_usf/domain/lce.dart';
import 'package:movies_usf/domain/movie.dart';
import 'package:movies_usf/presentation/home/home_vm.dart';
import 'package:test/test.dart';

import 'home_vm_test.mocks.dart';
import 'package:rxdart/rxdart.dart';

import 'test_stream.dart';
import 'test_utils.dart';

@GenerateMocks([MoviesRepository])
void main() {
  var isSuccess = true;
  final repo = MockMoviesRepository();
  final vm = HomeViewModel(repo);
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

  // mock data
  when(repo.getMoviesFromServer(any)).thenAnswer((realInvocation) {
    if (isSuccess) {
      return Stream.value(Lce.content(movies)).startWith(Lce.loading());
    } else {
      return Stream<Lce<List<Movie>>>.value(Lce.error('something went wrong'))
          .startWith(Lce.loading());
    }
  });

  test('when movie searched and found then show result', () async {
    expect(vm, emitsItemCount(2));
    expect(
        vm,
        emitsItem<HomeState>(
            (s) => equals(s.searchResult).matches(movies, {})));
    vm.searchMovie('blase');
  });

  test('when movie is searched and query is empty then no search', () async {
    expect(vm, emitsItemCount(0));
    vm.searchMovie("");
  });

  test('when move is searched and api error then show error', () async {
    isSuccess = false;
    vm.emitsItemAt(1, (s) => equalsValue(s.contentStatus, Lce.error()));
    vm.searchMovie('query');
    // expect(
    //     vm,
    //     emitsItemAt<HomeState>(
    //       1,
    //       (s) => equals(s.contentStatus).matches(Lce.error(), {}),
    //     ));
    // expect(vm, emitsItemCount(1));
    // tester.emitsItemCount(4);
  });
}
