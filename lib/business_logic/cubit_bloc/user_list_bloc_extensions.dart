/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

part of 'user_list_bloc.dart';
//
// /// TODO: Here you can add the implementation details of your BloC or any stream extensions you might need.
// /// Thus, the BloC will contain only declarations, which improves the readability and the maintainability.
// extension _UserListExtension on UserListBloc {}
//
// /// Utility extensions for the Stream<bool> streams used within UserListBloc
// extension UserListBlocStreamExtensions on Stream<bool> {
//   /// Fetches appropriate data from the repository
//   Stream<Result<PaginatedList<User>>> fetchData(
//     UserRepository _repository,
//     BehaviorSubject<PaginatedList<User>> _paginatedList,
//   ) =>
//       switchMap(
//         (reset) {
//           if (reset) _paginatedList.value.reset();
//           return _repository
//               .fetchPage(
//                 _paginatedList.value.pageNumber + 1,
//                 _paginatedList.value.pageSize,
//               )
//               .asResultStream();
//         },
//       );
// }
