void main() {

  // int
  int money1 = 200 ;
  var money2 = 200 ;
  print('$money1 | $money2') ;

  // double (float)
  double money3 = 200 ;
  var money4 = 200.0 ;
  print('$money3 | $money4') ;

  // String
  String money5 = '200.0' ;
  var money6 = '200' ;
  print('$money5 | $money6') ; 

  // bool
  bool amIright = true ;
  bool amIWrong = false ;
  print('$amIright | $amIWrong') ;

  // dynamic
  dynamic weakVar = 2 ;
  print("I am an int $weakVar") ;
  weakVar = 3.14 ;
  print("I am a double $weakVar") ;
  weakVar = "String" ;
  print("I am a $weakVar") ;
  weakVar = false ;
  print("I am a strong var: $weakVar") ;

  //null
  money1 = null ;
  money3 = null ;
  money5 = null ;
  amIWrong = null ;
  weakVar = null ;
  print("We are all empty. $money1 $money3 $money5 $amIWrong $weakVar") ;

}