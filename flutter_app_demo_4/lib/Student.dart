class Student{
  String name;
  String address;
  int gender;

  Student({this.name, this.address, this.gender});
  
  static List<Student> init(){
    var tmp = <Student>[];
    tmp.add(Student(name: 'Captain Ameria', gender: 1, address: 'Marvel' ));
    tmp.add(Student(name: 'Iron Man', gender: 1, address: 'Marvel'));
    tmp.add(Student(name: 'Black Widow', gender: 0, address: 'Marvel'));
    tmp.add(Student(name: 'Supper Woman', gender: 0, address: 'Justice League'));
    tmp.add(Student(name: 'Wolverine ', gender: 1, address: 'X men'));
    tmp.add(Student(name: 'Captain Ameria', gender: 1, address: 'Marvel' ));
    tmp.add(Student(name: 'Iron Man', gender: 1, address: 'Marvel'));
    tmp.add(Student(name: 'Black Widow', gender: 0, address: 'Marvel'));
    tmp.add(Student(name: 'Supper Woman', gender: 0, address: 'Justice League'));
    tmp.add(Student(name: 'Wolverine ', gender: 1, address: 'X men'));
    tmp.add(Student(name: 'Captain Ameria', gender: 1, address: 'Marvel' ));
    tmp.add(Student(name: 'Iron Man', gender: 1, address: 'Marvel'));
    tmp.add(Student(name: 'Black Widow', gender: 0, address: 'Marvel'));
    tmp.add(Student(name: 'Supper Woman', gender: 0, address: 'Justice League'));
    tmp.add(Student(name: 'Wolverine ', gender: 1, address: 'X men'));
    return tmp;
  }

  static List<Student> favorite = [];
}