import 'package:hdc_cli/hdc_cli.dart';
import 'package:sidekick_core/sidekick_core.dart';

class GenerateCommand extends ForwardCommand {
  @override
  final String description = 'Runs buildrunner_build in the sites package and adds the data folder to git';

  @override
  final String name = 'gen';

  @override
  Future<void> run() async {
    final package = hdcProject;
    final root = package.root;
    print(green('Generating code for package: ${package.name}'));
    flutterw(['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'], workingDirectory: root);
    print(green('Formatting files in package: ${package.name}'));
    flutterw(['format', '-l', '120', 'lib'], workingDirectory: root);
  }
}
