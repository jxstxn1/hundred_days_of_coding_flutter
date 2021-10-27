import 'package:hdc_cli/hdc_cli.dart';

Future<void> main(List<String> arguments) async {
  await HdcCli().runWithArgs(arguments);
}
