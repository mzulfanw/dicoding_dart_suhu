import 'dart:io';

void main(List<String> args) {
  try {
    stdout.write('Masukan tipe: ');
    var res = stdin.readLineSync()!;
    num celcius;
    num reamur;
    num fahrenheit;
    num kelvin;
    if (res == 'celcius') {
      stdout.write('Masukan Celcius : ');
      celcius = num.parse(stdin.readLineSync()!);
      reamur = (4 / 5) * celcius;
      fahrenheit = (9 / 5) * celcius + 32;
      kelvin = celcius + 273;
      print('Reamur $reamur');
      print('fahrenheit $fahrenheit');
      print('kelvin $kelvin');
    } else if (res == 'reamur') {
      stdout.write('Masukan Reamur');
      reamur = num.parse(stdin.readLineSync()!);
      celcius = (5 / 4) * reamur;
      fahrenheit = (9 / 4) * reamur + 32;
      kelvin = (5 / 4) * reamur + 273;
      print('Celcius $celcius');
      print('Fahrenheit $fahrenheit');
      print('Kelvin $kelvin');
    } else if (res == 'fahrenheit') {
      stdout.write('Masukan fahrenheit');
      fahrenheit = num.parse(stdin.readLineSync()!);
      celcius = (5 / 9) * (fahrenheit - 32);
      reamur = (4 / 9) * (fahrenheit - 32);
      print('Celcius $celcius');
      print('Reamur $reamur');
    } else {
      stdout.write('Masukan kelvin');
      kelvin = num.parse(stdin.readLineSync()!);
      celcius = kelvin - 273;
      reamur = (4 / 5) * (kelvin - 273);
      print('Celcius $celcius');
      print('Reamur $reamur');
    }
  } catch (err, stack) {
    print('Error $err');
    print('Stack $stack');
  }
}
