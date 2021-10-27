import 'package:args/command_runner.dart';
import 'package:hdc_cli/hdc_cli.dart';
import 'package:sidekick_core/sidekick_core.dart';

class DepsCommand extends Command {
  @override
  final String description = 'Gets dependencies for all packages';

  @override
  final String name = 'deps';

  DepsCommand() {
    argParser.addOption(
      'package',
      abbr: 'p',
      allowed: hdcProject.allPackages.map((it) => it.name),
    );
  }

  @override
  Future<void> run() async {
    final String? packageArg = argResults?['package'] as String?;

    if (packageArg != null) {
      // only get deps for selected package
      _getDependenciesForPackageWithName(packageArg);
      return;
    }

    // fallback to all packages
    for (final package in hdcProject.allPackages) {
      _getDependencies(package);
    }
  }

  void _getDependenciesForPackageWithName(String name) {
    // only get deps for selected package
    final package = hdcProject.allPackages.firstOrNullWhere((it) => it.name == name);
    if (package == null) {
      final packageOptions = hdcProject.allPackages.map((it) => it.name).toList(growable: false);
      error('Could not find package $name. '
          'Please use one of ${packageOptions.joinToString()}');
    }
    _getDependencies(package);
  }

  void _getDependencies(DartPackage package) {
    print(yellow('=== package ${package.name} ==='));
    if (package.isFlutterPackage) {
      flutterw(['packages', 'get'], workingDirectory: package.root);
    } else {
      dart(['pub', 'get'], workingDirectory: package.root);
    }
    print("\n");
  }
}
