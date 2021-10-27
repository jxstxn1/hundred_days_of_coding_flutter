import 'package:args/command_runner.dart';
// ignore: implementation_imports
import 'package:dcli/src/util/progress.dart';
import 'package:hdc_cli/hdc_cli.dart';
import 'package:sidekick_core/sidekick_core.dart';

class FormatCommand extends Command {
  @override
  final String description = 'Reformats all code in the project';

  @override
  final String name = 'format';

  static const maxLineLength = 120;

  FormatCommand() {
    argParser.addFlag(
      'verify',
      help: 'Only verifies that all code is formatted, does not actually format it',
    );
  }

  @override
  Future<void> run() async {
    final bool verify = argResults?['verify'] as bool? ?? false;

    final List<DartPackage> packages = hdcProject.allPackages;

    final allDartFiles = packages
        .flatMap((package) => package.srcDirs)
        .filter((dir) => dir.existsSync())
        .flatMap((dir) => dir.listSync(recursive: true))
        .filter((file) => file.extension == '.dart')
        .filter((file) => !file.path.contains('/.dart_tool/'))
        .filter((file) => !file.path.contains('/.symlinks/'));

    final groups = allDartFiles
        .groupBy(isGeneratedDartFile)
        .map((key, value) => MapEntry(key, value.map((it) => it.absolute.path)));

    final userCode = groups[_CodeType.user] ?? [];
    print("Formatting ${userCode.length} dart files");
    _format(userCode, verify: verify);

    final generatedCode = groups[_CodeType.generated] ?? [];
    print("Formatting ${generatedCode.length} generated dart files");
    _format(generatedCode, verify: verify);
  }

  void _format(Iterable<String> dartFiles, {bool verify = false}) {
    // TODO check why --set-exit-if-changed always returns 0
    final List<String> formatOptions = [
      ...['-l', maxLineLength.toString()],
      ...['-o', if (verify) 'none' else 'write'],
      '--fix',
    ];

    final formatProgress = Progress.capture();
    dart(['format', ...formatOptions, ...dartFiles.toList()], progress: formatProgress);
    final summary = formatProgress.lines.last;
    if (verify && !summary.contains('(0 changed)')) {
      // non zero exit, some files are not correctly formatted
      exit(1);
    }
  }
}

_CodeType isGeneratedDartFile(FileSystemEntity file) {
  if (file.name.endsWith(".g.dart") || file.name.endsWith(".freezed.dart")) {
    return _CodeType.generated;
  }

  return _CodeType.user;
}

enum _CodeType { generated, user }
