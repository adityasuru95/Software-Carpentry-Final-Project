void main() {

  // List
  List patents = [123, 234, 345, 456];
  print(patents[1]);

  var names = ['Jill', 'Jack', 'David', 'Aditya', 100, 3.14];
  print(names[0]);
  
  print(names.length);
  
  for (var name in names) {
    print(name);
  }

  // List <int> listOfNos = [1, 2, 'a']; This is not possible.
  // Since this list contains only the integers and not string.

  names[2] = 'Suru';
  print(names);

  // if a list is defined constant, you cannot change it anymore.

  // 53 minutes in the video is VERY IMPORTANT. 
  /// if names is a list
  
  List nos1 = [1, 2, 3];
  List nos2 = nos1;
  List nos3 = [...nos1]; // Spread operator
  nos1[1] = 4;
  print(nos2[1]);
  print(nos3[1]);

  // Set - Unordered, unique collection.

  var halogens = {'Fluorine', 'chlorine', 'Fluorine'};
  print(halogens.length);

  var metals = {'Iron', 45, 'Calcium'};
  print(metals);

  //to define an empty set:
  var sBlock = {}; // This is a hash map
  print(sBlock.runtimeType);
  var pBlock = <String>{}; // This is an empty set. The string does not mean that  you are restricted to only strings.
  print(pBlock.runtimeType);
  pBlock.add('Oxygen');
  pBlock.add('16');
  print(pBlock);

  // Maps (Dictionaries)

  var attack = {
    'pikachu' : 23, 
    'raichu' : 34,
    'charmander': 11
  };

  print(attack['pikachu']);
  attack['charizard'] = 78;
  print(attack['charizard']);

  var elements = {};
  elements[12] = 'carbon';
  elements[14] = 'nitrogen';
  print(elements.length);
  print(elements[12]);
  }
