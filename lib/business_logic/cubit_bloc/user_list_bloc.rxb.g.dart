/*
 Copyright (c) 2021.  Trophy Developers Uganda [https://www.trophydevelopers.com/mobile-application-development-uganda/]. All Rights Reserved
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'user_list_bloc.dart';
//
// /// Used as a contractor for the bloc, events and states classes
// /// {@nodoc}
// abstract class UserListBlocType extends RxBlocTypeBase {
//   /// Events of the bloc
//   UserListBlocEvents get events;
//
//   /// States of the bloc
//   UserListBlocStates get states;
// }
//
// /// [$UserList] extended by the [UserList]
// /// {@nodoc}
// abstract class $UserListBloc extends RxBlocBase
//     implements UserListBlocEvents, UserListBlocStates, UserListBlocType {
//   final _compositeSubscription = CompositeSubscription();
//
//   /// Тhe [Subject] where events sink to by calling [loadPage]
//   final _$loadPageEvent = PublishSubject<bool>();
//
//   /// The state of [isLoading] implemented in [_mapToIsLoadingState]
//   late final Stream<bool> _isLoadingState = _mapToIsLoadingState();
//
//   /// The state of [errors] implemented in [_mapToErrorsState]
//   late final Stream<String> _errorsState = _mapToErrorsState();
//
//   /// The state of [paginatedList] implemented in [_mapToPaginatedListState]
//   late final Stream<PaginatedList<User>> _paginatedListState =
//       _mapToPaginatedListState();
//
//   @override
//   void loadPage({bool reset = false}) => _$loadPageEvent.add(reset);
//
//   @override
//   Stream<bool> get isLoading => _isLoadingState;
//
//   @override
//   Stream<String> get errors => _errorsState;
//
//   @override
//   Stream<PaginatedList<User>> get paginatedList => _paginatedListState;
//
//   Stream<bool> _mapToIsLoadingState();
//
//   Stream<String> _mapToErrorsState();
//
//   Stream<PaginatedList<User>> _mapToPaginatedListState();
//
//   @override
//   UserListBlocEvents get events => this;
//
//   @override
//   UserListBlocStates get states => this;
//
//   @override
//   void dispose() {
//     _$loadPageEvent.close();
//     _compositeSubscription.dispose();
//     super.dispose();
//   }
// }
