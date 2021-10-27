import 'package:args/command_runner.dart';
import 'package:dcli/dcli.dart' as dcli;
import 'package:sidekick_core/sidekick_core.dart';

class InitCommand extends Command {
  @override
  final String description = 'Initialize the project (submodules, hooks) and check if everything is in order.';

  @override
  final String name = 'init';

  @override
  Future<void> run() async {
    dcli.run("git submodule update --init --recursive", nothrow: true);
    flutterw(['doctor', '--verbose']);
  }
}
