import 'package:rougish/game/game_data.dart';
import 'package:rougish/log/log.dart';
import 'package:rougish/term/terminal.dart' as term;
import '../screen.dart';

class DebriefScreen extends Screen {
  static const _logLabel = 'DebriefScreen';

  @override
  void onKeySequence(List<int> seq, String hash, GameData state) {
    if (term.isEnter(seq)) {
      Log.info(_logLabel, 'Enter key detected. Exiting game..');
      broadcast(ScreenEvent.quit);
    }
  }

  @override
  void draw(GameData state) {
    term.centerMessage(screenBuffer, 'debrief screen', yOffset: -3);
    term.centerMessage(screenBuffer, 'stats and stuff..', yOffset: 1);
    term.centerMessage(screenBuffer, '<press Enter key to exit>', yOffset: 3);
  }
}
