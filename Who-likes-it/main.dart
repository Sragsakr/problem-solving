void main (){
print(likes(['Alex', 'Jacob', 'Mark', 'Max']));
}

String likes(List<String> names) {
  if(names.isEmpty) return "no one likes this";
  if(names.length ==1) return "${names.first} likes this";
  if(names.length ==2) return "${names.first} and ${names.last} like this";
  if(names.length ==3) return "${names.first}, ${names[1]} and ${names.last} like this";
  return "${names.first}, ${names[1]} and ${names.length - 2} others like this";
}

