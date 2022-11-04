import 'package:coba_flutter/src/models/sport/sport_model.dart';
import 'package:coba_flutter/src/models/sport/api/sport_api.dart';
import 'package:flutter/material.dart';

enum ActionState {
  none,
  loading,
  error,
}

class HomeViewModel extends ChangeNotifier {
  ActionState _state = ActionState.none;
  Iterable<SportModel> _sports = [];
  SportModel? _sport;
  final SportApi _sportApi = SportApi();

  ActionState get state => _state;
  Iterable<SportModel> get sports => _sports;
  SportModel? get sport => _sport;

  HomeViewModel() {
    getSportNews();
  }

  Future<void> getSportNews() async {
    _changeState(ActionState.loading);

    try {
      final sports = await _sportApi.getSportData();
      _sports = sports;
      notifyListeners();
      _changeState(ActionState.none);
    } catch (e) {
      _changeState(ActionState.error);
    }
  }

  void _changeState(ActionState newState) {
    _state = newState;
    notifyListeners();
  }

  void selectedSport(SportModel sport) {
    _sport = sport;
    notifyListeners();
  }
}
