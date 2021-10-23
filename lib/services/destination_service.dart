import 'package:airplane/models/destination_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DestinationService {
  CollectionReference _destinationRef =
      FirebaseFirestore.instance.collection('destinations');

  CollectionReference _destinationRefNew =
      FirebaseFirestore.instance.collection('destinations_new');

  Future<List<DestinationsModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationsModel> destinations = result.docs.map((e) {
        return DestinationsModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }

  Future<List<DestinationsModelNew>> fetchDestinationNew() async {
    try {
      QuerySnapshot result = await _destinationRefNew.get();

      List<DestinationsModel> destinationsNew = result.docs.map((e) {
        return DestinationsModel.fromJson(
            e.id, e.data() as Map<String, dynamic>);
      }).toList();

      return destinationsNew;
    } catch (e) {
      throw e;
    }
  }
}
