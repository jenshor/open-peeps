import 'package:open_peeps_generator/open_peeps_generator.dart'
    as open_peeps_generator;

void main(List<String> arguments) async {
  print('Running generator');
  await open_peeps_generator.Generator().generate();
  print('Finished completion');
}
