import 'dart:io';
import 'dart:math';

void main() {
  int num;
  Random rndom = Random();

  num = rndom.nextInt(50) + 1;
  print("number hasnbeen generated by the systam form 1 to 50. try to it.");

  var user_attempt = 1;
  while (user_attempt <= 10) {
    print("You Have ${11 - user_attempt} Attempts");

    // print("$num");
    stdout.write("enter you number  ");

    int? user_input = int.parse(stdin.readLineSync()!);

    if (user_input == num) {
      print("Congratulations \nYou Win \nYour luckyst number is $num");
      break;
    } else if (user_attempt == 11) {
      print("You Loss");
    } else {
      if (user_input > num) {
        print(' Your Number Is High\n');
        user_attempt++;
      } else if (user_input < num) {
        print("Your Number Is Low\n");
        user_attempt++;
      } else {
        print("you have loss the");
      }
    }
  }
}
