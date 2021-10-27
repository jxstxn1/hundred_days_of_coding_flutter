import 'package:sidekick_core/sidekick_core.dart';

class HdcProject extends DartPackage {
  HdcProject(Directory root) : super.flutter(root, 'network_health');

  DartPackage get hdcCliPackage => DartPackage.fromDirectory(root.directory('packages/hdc_cli'))!;

  File get flutterw => root.file('flutterw');

  List<DartPackage>? _packages;
  List<DartPackage> get allPackages {
    return _packages ??= root
        .directory('packages')
        .listSync()
        .whereType<Directory>()
        .mapNotNull((it) => DartPackage.fromDirectory(it))
        .toList()
      ..add(this);
  }
}
