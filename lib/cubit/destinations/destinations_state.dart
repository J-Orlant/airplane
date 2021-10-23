part of 'destinations_cubit.dart';

abstract class DestinationsState extends Equatable {
  const DestinationsState();

  @override
  List<Object> get props => [];
}

class DestinationsInitial extends DestinationsState {}

class DestinationLoading extends DestinationsState {}

class DestinationsSuccess extends DestinationsState {
  final List<DestinationsModel> destinations;
  final List<DestinationsModelNew> destinationsNew;

  DestinationsSuccess(this.destinations, this.destinationsNew);

  @override
  List<Object> get props => [destinations];
}

class DestiantionsFailed extends DestinationsState {
  final String error;

  DestiantionsFailed(this.error);

  @override
  List<Object> get props => [error];
}
