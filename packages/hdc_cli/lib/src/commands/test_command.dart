import 'package:args/command_runner.dart';
import 'package:hdc_cli/hdc_cli.dart';
import 'package:sidekick_core/sidekick_core.dart';

class TestCommand extends Command {
  @override
  final String description = 'Runs all test in all packages with tests or a single package';

  @override
  final String name = 'test';

  TestCommand() {
    argParser.addOption(
      'package',
      abbr: 'p',
      allowed: hdcProject.allPackages.map((it) => it.name),
    );
  }

  @override
  Future<void> run() async {
    final collector = _TestResultCollector();

    final String? packageArg = argResults?['package'] as String?;

    if (packageArg != null) {
      // only run tests in selected package
      collector.add(_testPackageWithName(packageArg));
      return;
    }

    // outside of package, fallback to all packages
    for (final package in hdcProject.allPackages) {
      collector.add(_test(package, false));
      print('\n');
    }

    exit(collector.exitCode);
  }

  _TestResult _testPackageWithName(String name) {
    // only run tests in selected package
    final package = hdcProject.allPackages.firstOrNullWhere((it) => it.name == name);
    if (package == null) {
      final packageOptions = hdcProject.allPackages.map((it) => it.name).toList(growable: false);
      error('Could not find package $name. '
          'Please use one of ${packageOptions.joinToString()}');
    }
    return _test(package, true);
  }

  _TestResult _test(DartPackage package, bool requireTests) {
    print(yellow('=== package ${package.name} ==='));
    if (!package.testDir.existsSync()) {
      if (requireTests) {
        error('Could not find a test folder in package ${package.name}. '
            'Please create some tests first.');
      } else {
        print("No tests");
        return _TestResult.noTests;
      }
    }

    final exitCode = () {
      if (package.isFlutterPackage) {
        return flutterw(['test'], workingDirectory: package.root);
      } else {
        return dart(['test'], workingDirectory: package.root);
      }
    }();
    if (exitCode == 0) {
      return _TestResult.success;
    }
    return _TestResult.failed;
  }
}

class _TestResultCollector {
  final List<_TestResult> _results = [];
  void add(_TestResult result) {
    _results.add(result);
  }

  int get exitCode {
    if (_results.contains(_TestResult.failed)) {
      return -1;
    }
    if (_results.contains(_TestResult.success)) {
      return 0;
    }
    // no tests or all skipped
    return -2;
  }
}

enum _TestResult {
  success,
  failed,
  noTests,
}
