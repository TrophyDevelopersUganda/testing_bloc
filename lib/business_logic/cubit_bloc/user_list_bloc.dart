/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

// import 'package:rx_bloc/rx_bloc.dart';
// import 'package:rx_bloc_list/rx_bloc_list.dart';
// import 'package:rxdart/rxdart.dart';
//
// part 'user_list_bloc.rxb.g.dart';
// part 'user_list_bloc_extensions.dart';
//
// /// A contract class containing all events of the UserBloC.
// abstract class UserListBlocEvents {
//   /// Load the next page of data. If reset is true, refresh the data and load
//   /// the very first page
//   void loadPage({bool reset = false});
// }
//
// /// A contract class containing all states of the UserListBloC.
// abstract class UserListBlocStates {
//   /// The loading state
//   Stream<bool> get isLoading;
//
//   /// The error state
//   Stream<String> get errors;
//
//   /// The paginated list data
//   Stream<PaginatedList<User>> get paginatedList;
//
//   /// Returns when the data refreshing has completed
//   @RxBlocIgnoreState()
//   Future<void> get refreshDone;
// }
//
// /// User Bloc
// @RxBloc()
// class UserListBloc extends $UserListBloc {
//   /// UserListBloc default constructor
//   UserListBloc({required UserRepository repository}) {
//     _$loadPageEvent
//         // Start the data fetching immediately when the page loads
//         .startWith(true)
//         .fetchData(repository, _paginatedList)
//         // Enable state handling by the current bloc
//         .setResultStateHandler(this)
//         // Merge the data in the _paginatedList
//         .mergeWithPaginatedList(_paginatedList)
//         .bind(_paginatedList)
//         // Make sure we dispose the subscription
//         .disposedBy(_compositeSubscription);
//   }
//
//   /// Internal paginated list stream
//   final _paginatedList = BehaviorSubject<PaginatedList<User>>.seeded(
//     PaginatedList<User>(
//       list: [],
//       pageSize: 50,
//     ),
//   );
//
//   @override
//   Future<void> get refreshDone async => _paginatedList.waitToLoad();
//
//   @override
//   Stream<PaginatedList<User>> _mapToPaginatedListState() => _paginatedList;
//
//   @override
//   Stream<String> _mapToErrorsState() =>
//       errorState.map((event) => event.toString());
//
//   @override
//   Stream<bool> _mapToIsLoadingState() => loadingState;
//
//   /// Disposes of all streams to prevent memory leaks
//   @override
//   void dispose() {
//     _paginatedList.close();
//     super.dispose();
//   }
// }
