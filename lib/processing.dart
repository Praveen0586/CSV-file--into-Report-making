import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Please leave an input <Inputdile.csv> format');
    exit(1);
  }
  final durationmap = <String, double>{};
  var TotalDuration = 0.0;
  final recievdCSV = args.first;
  final Inputfile = File(recievdCSV).readAsLinesSync();
  Inputfile.removeAt(0);

  for (var line in Inputfile) {
    final seperatedByComma = line.split(',');
    final category = seperatedByComma[5];
    final duration = seperatedByComma[3];
    final durationINT = double.parse(duration);
    durationINT.toStringAsFixed(1);
    var previoustotal = durationmap[category];
    if (previoustotal == null) {
      durationmap[category] = durationINT;
    } else {
      durationmap[category] = previoustotal += durationINT;
    }
    TotalDuration = TotalDuration + durationINT;
  }
  for (var entry in durationmap.entries) {
    print('${entry.key == '' ? 'Un Alocated ' : entry.key} :'
        '${entry.value.toStringAsFixed(1)} h');
  }
  print(' Total Duration : ${TotalDuration.toStringAsFixed(1)} h ');
}
