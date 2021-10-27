import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:dcli/dcli.dart' as dcli;
import 'package:hdc_cli/hdc_cli.dart';
import 'package:sidekick_core/sidekick_core.dart';

class UpdateCliCommand extends Command {
  @override
  final String description = 'Recompiles the hdc cli';

  @override
  final String name = 'update-cli';

  @override
  Future<void> run() async {
    final installScript = hdcProject.root.file('packages/hdc_cli/tool/install_global.sh');
    final process = dcli.start(installScript.path, nothrow: true, terminal: true);
    exit(process.exitCode ?? 0);
  }
}
