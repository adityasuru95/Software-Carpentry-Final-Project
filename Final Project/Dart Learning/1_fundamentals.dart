import 'dart:io' ;

void main() {
  var firstName = 'Aditya' ; 
  String lastName = "Suru" ;
  int age ;
  double money ;

  age = 24 ; 
  money = 200.200 ;
  
  print("my name is $firstName." + ' ' + lastName + ' My age is $age.' + " I have $money money") ;

  print("Your name is: ") ;
  var yourName = stdin.readLineSync() ;
  stdout.writeln("Your name is $yourName") ;

  // This is an inline comment

  /// this is a
  /// documentation comment
  
  /* this is a
  multiple line
  comment
  */

  

}