import 'package:gammingproject/model/game_response.dart';
import 'package:gammingproject/repo/repository.dart';
import 'package:rxdart/rxdart.dart';

class GetSliderBloc {
  final GameRepository _repository = GameRepository();
  final BehaviorSubject<GameResponse> _subject =
  BehaviorSubject<GameResponse>();

  getSlider(int platformId) async {
    GameResponse response = await _repository.getSlider(platformId);
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<GameResponse> get subject => _subject;

}
final getSliderBloc = GetSliderBloc();