part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
  const SettingsState();
}

class LoadSettingsInitial extends SettingsState {
  @override
  List<Object> get props => [];
}

class AppSettingsLoading extends SettingsState {
  const AppSettingsLoading();

  @override
  List<Object?> get props => [];
}

class AppSettingsLoaded extends SettingsState {
  final AppSettings _settings;

  const AppSettingsLoaded(this._settings);

  @override
  List<Object?> get props => [_settings];
}

class AppSettingsError extends SettingsState {
  final String message;

  const AppSettingsError(this.message);

  @override
  List<Object?> get props => [message];
}

class SettingsChangeInProgress extends SettingsState {
  const SettingsChangeInProgress();

  @override
  List<Object?> get props => [];
}

class SettingsChangedSuccessfully extends SettingsState {
  const SettingsChangedSuccessfully();

  @override
  List<Object?> get props => [];
}

class SettingsChangeError extends SettingsState {
  final String message;

  const SettingsChangeError(this.message);

  @override
  List<Object?> get props => [message];
}
