import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NetworkCubit extends Cubit<ConnectivityResult> {
  NetworkCubit() : super(ConnectivityResult.none) {
    checkNetwork();
  }

  void checkNetwork() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      emit(result);
    });
  }
}
