void main() {

  // different ways to write a string
  var s1 = 'This is a single quote.' ;
  var s2 = "This is a double quote." ;
  var s3 = 'This isn\'t a double quote.' ;
  var s4 = "This isn't a single quote." ;
  print('$s1\n$s2\n$s3\n$s4') ;

  // raw string
  var raw = r'This isn\nt a normal string' ;
  print(raw) ;

  // string interpolation
  var age = 23 ;
  var myAge = 'my age is' ;
  var combined = '$myAge $age' ;
  print('$combined') ;

  // multi-line string
  var mls = ''' this is 
  a multi-
  line string
  i don't have to pput '\\n in 
  this''' ;
  print(mls) ;

  // type casting 
  // S I D B
  
  // S -> I ; S -> D ; S -> B
  
  // String -> integer
  var one = int.parse('3') ;
  assert (one == 3) ;
  print(one) ;

  // String -> double
  var pi = double.parse('3.14') ;
  assert (pi == 3.14, "False") ;
  print(pi) ;

  // I -> S ; I -> D ; I -> B

  // integer -> string
  var oneAsString = 1.toString() ;
  print(oneAsString) ;

  // D -> S ; D -> I ; D -> B

  //double -> String
  var piAsString = 3.1417.toString() ;
  print(piAsString) ;
  var piAsString3decimal = 3.1417.toStringAsFixed(3) ;
  print(piAsString3decimal) ;


  // B -> S ; B -> I ; B -> D

  // constant. the value of a constant cannot be changed.
  const zero = 0 ;
  const correct = true ;
  const sentence = 'This is a constant sentence' ;
  print('$zero') ;
  print(correct) ;
  print(sentence) ;

  // how to find the type of a variable
  print(zero.runtimeType) ;
  print(piAsString.runtimeType) ;

  // until assigned, a variable is assigned a null value
  var iAmEmpty ;
  print(iAmEmpty) ;


}
