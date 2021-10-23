part of '../auth/auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

// Ketika Berhasil

class AuthSucces extends AuthState {
  final UserModel user;
  AuthSucces(this.user);

  @override
  List<Object> get props => [user];
}

// Ketika Gagal
class AuthFailed extends AuthState {
  final String error;
  AuthFailed(this.error);

  @override
  List<Object> get props => [error];
}
