



main(List<String> args) {

  var names = <String>['Seth','Kathy','Lars'];
  var pages = <String,String>{
    'index.html' : 'homepage',
    'robots.txt' : 'Hints for web robots',
    'humans.txt' : 'We are people,not machines'
  };


  var names2 = List<String>();
  names2.addAll(['Seth', 'Kathy' , 'Lars']);
  var nameSet = new Set<String>.from(names2);

  var views = new Map<int,String>();

  var names3 = new List<String>();
  names3.addAll(['Seth', 'Kathy' , 'Lars']);
  print(names3 is List<String>); // true
  
}