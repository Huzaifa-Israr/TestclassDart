import 'dart:io';

var mainSelections = "";
var childSelections = "";
var restart = false;

void main() {
  do {
    restart = false;
    var myOptions = {
      "1": "Length Conversion",
      "2": "Temperature Conversion",
      "3": "Area Conversion",
      "4": "Weight Conversion",
      "5": "Time Conversion",
    };
    showOptions(myOptions);
  } while (restart);
}

showOptions(Map optionsMap) {
  print("---------------------------------");
  print("Please select one option");
  for (var i = 1; i <= optionsMap.length; i++) {
    print("$i: ${optionsMap["$i"]}");
  }

  mainSelections = stdin.readLineSync()!;
  if (mainSelections == "1") {
    showLengthOptions();
  } else if (mainSelections == "2") {
    showTempOptions();
  } else if (mainSelections == "3") {
  } else if (mainSelections == "4") {
  } else if (mainSelections == "5") {
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showOptions(optionsMap);
  }
}

showLengthOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Meter to kilometers",
    "2": "Kilometer to Meters",
    "3": "feet to Inches",
    "4": "Inches to Feet",
    "5": "Centimeter to Meter",
    "6": "Meter to Centimeter"
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
    meterToKilometers();
  } else if (childSelections == "2") {
    kmToMeters();
  } else if (childSelections == "3") {
    feetToInches();
  } else if (childSelections == "4") {
    inchesToFeet();
  } else if (childSelections == "5") {
    cmToMeters();
  } else if (childSelections == "6") {
    metersToCm();
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showLengthOptions();
  }
  restartProgram();
}

showTempOptions() {
  print("---------------------------------");
  print("Please select one option");
  var myOptions = {
    "1": "Fahrenheit to Celcius",
    "2": "Celcius to Fahrenheit",
  };
  for (var i = 1; i <= myOptions.length; i++) {
    print("$i: ${myOptions["$i"]}");
  }
  childSelections = stdin.readLineSync()!;
  if (childSelections == "1") {
  } else if (childSelections == "2") {
  } else {
    print("Incorrect Input, Please make selection from above options only");
    showTempOptions();
  }
}

//MAIN OPTION NUMBER ->  LENGTH CONVERSION
//METER to kilometers
meterToKilometers() {
  int meters = int.parse(stdin.readLineSync()!);
  int km = meters ~/ 1000;
  print("$meters are equal to $km");
}

//Km to Meters
kmToMeters() {
  int km = int.parse(stdin.readLineSync()!);
  int meter = km * 1000;
  print("$km are equal to $meter");
}

//Feet to Inches()
feetToInches() {
  int feet = int.parse(stdin.readLineSync()!);
  int inches = feet * 12;
  print("$feet are equal to $inches");
}

//Inches to Feet
inchesToFeet() {
  int inches = int.parse(stdin.readLineSync()!);
  double feet = inches / 12;
  print("$inches are equal to $feet");
}

//cm to Meters
cmToMeters() {
  int cm = int.parse(stdin.readLineSync()!);
  double meters = cm / 100;
  print("$cm are equal to $meters");
}

//Meters to CM
metersToCm() {
  int meter = int.parse(stdin.readLineSync()!);
  double cm = meter / 100;
  print("$meter are equal to $cm");
}

restartProgram() {
  print("---------------------------------");
  print("Press R to Continue");
  print("Press T to Terminate");
  var input = stdin.readLineSync();
  if (input == "R") {
    restart = true;
  } else if (input == "T") {
    restart = false;
  } else {
    print("Incorrect Input, Please make selection from above options only");
    restartProgram();
  }
}
