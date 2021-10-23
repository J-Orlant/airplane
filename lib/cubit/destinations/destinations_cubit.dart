import 'package:airplane/models/destination_model.dart';
import 'package:airplane/services/destination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());

      List<DestinationsModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationsSuccess(destinations));
    } catch (e) {
      emit(DestiantionsFailed(e.toString()));
    }
  }

  void fetchDestinationsNew() async {
    try {
      emit(DestinationLoading());

      List<DestinationsModelNew> destinationsNew =
          await DestinationService().fetchDestinationNew();
      emit(DestinationsSuccess(destinationsNew));
    } catch (e) {
      emit(DestiantionsFailed(e.toString()));
    }
  }
}
