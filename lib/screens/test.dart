import 'dart:io';

void main (){

  var names=[3.5,17,2.8,6.7,4];
  var phones=names.where((item) => false);
  names.firstWhere((element) => (element<2), orElse: ()=>0);
  names.lastWhere((element) => (element%2==0));
  names.indexWhere((element) => (element%2==0), 8);
  names.lastIndexWhere((element) => (element%2==0), );
  names.singleWhere((element) => (element%2==0));
  names.retainWhere((element) => (element%2==0));
  names.removeWhere((element) => (element%2==0));
  print(names);
var birthYear = stdin.readLineSync();
var age = DateTime.now().year- int .parse(birthYear);
print('your age is $age');


//iterable types   mean that could use (for__in) with these variables   because it isn't 1 value like int x=4;
////String , Map, Set, List

  //List one dimension
  List<int> l1 =[4,8,5,8,6];
  Iterable<int> l4 =[4,8,5,8,6];
  l4.forEach((element) {print(element);});
  var allElement = l4.toList();
  var l2 =[[4,8,5,8,6], [9,6,6,89,8]];
  var s = {8,6,8,9,5,4};
  //////////////////////////////////////
  var list1=[6,8,69,52];
  var list2=[2, ...list1 ];
  Map m = {"a":19, "b":28, "c":55, "d":12};
 for (var item in l2){
   print (item);
 }
////////////////////////////////
Platform.environment.forEach((key, value) {
  print("$key: $value");
});

 Platform.isIOS? print('not apply'): print('welcome');
 print (int.parse('58')+ 12);
 //////////////////////////////
 print('28'.parseInt());
 print(NumberParsing('36').parseInt());

}


extension NumberParsing on String {
  parseInt(){
    return int.parse(this);
  }
}