/*
 Copyright (c) 2021.  Trophy Developers Uganda. All Rights Reserved
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_bloc_concept/business_logic/cubit_bloc/settings_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key, required this.title, required this.color})
      : super(key: key);
  final String title;
  final Color color;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
      ),
      body: BlocListener<SettingsCubit, SettingsState>(
        listener: (context, state) {
          final notificationSnackBar = SnackBar(
            duration: const Duration(milliseconds: 700),
            content: Text(
              'App ' +
                  state.appNotifications.toString().toUpperCase() +
                  ', Email ' +
                  state.emailNotifications.toString().toUpperCase(),
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(notificationSnackBar);
        },
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return ListView(
              children: [
                SwitchListTile(
                  value: state.appNotifications,
                  onChanged: (newValue) {
                    context
                        .read<SettingsCubit>()
                        .toggleAppNotifications(newValue);
                  },
                  title: const Text('App Notifications'),
                ),
                SwitchListTile(
                  value: state.emailNotifications,
                  onChanged: (newValue) {
                    context
                        .read<SettingsCubit>()
                        .toggleEmailNotifications(newValue);
                  },
                  title: const Text('Email Notifications'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
