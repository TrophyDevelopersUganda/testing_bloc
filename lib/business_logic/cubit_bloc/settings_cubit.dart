  /*
 Copyright (c) 2021.  Trophy Developers Uganda. All Rights Reserved
 */

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
      : super(
          const SettingsState(
            appNotifications: false,
            emailNotifications: false,
          ),
        );

  void toggleAppNotifications(bool newValue) {
    ///! You SHOULD NEVER MUTATE EXISTING STATES!!
    emit(state.copyWith(appNotifications: newValue, emailNotifications: false));
  }

  void toggleEmailNotifications(bool newValue) => emit(
      state.copyWith(emailNotifications: newValue, appNotifications: false));
}
