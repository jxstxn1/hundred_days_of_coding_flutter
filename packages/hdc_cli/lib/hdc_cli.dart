import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:hdc_cli/src/commands/deps_command.dart';
import 'package:hdc_cli/src/commands/format_command.dart';
import 'package:hdc_cli/src/commands/init_command.dart';
import 'package:hdc_cli/src/commands/test_command.dart';
import 'package:hdc_cli/src/commands/update_cli_command.dart';
import 'package:hdc_cli/src/hdc_command_runner.dart';
import 'package:hdc_cli/src/hdc_project.dart';
import 'package:sidekick_core/sidekick_core.dart';

late HdcProject hdcProject;

class HdcCli {
  /// Parses args and executes commands
  Future<void> runWithArgs(List<String> args) async {
    initializeSidekick(
      name: 'hdc',
      mainProjectPath: '.',
    );

    hdcProject = HdcProject(mainProject.root);

    final runner = HdcCommandRunner()
      ..addCommand(UpdateCliCommand())
      ..addCommand(FlutterCommand())
      ..addCommand(DartCommand())
      ..addCommand(InitCommand())
      ..addCommand(FormatCommand())
      ..addCommand(DepsCommand())
      ..addCommand(DartAnalyzeCommand())
      ..addCommand(TestCommand());

    if (args.isEmpty) {
      print(runner.usage);
      exit(0);
    }

    try {
      await runner.run(args);
    } on UsageException catch (e) {
      print(e.usage);
      exit(1);
    }
  }
}
