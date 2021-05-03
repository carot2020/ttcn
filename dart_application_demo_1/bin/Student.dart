class Student{
  int id;
  String name;
  String address;

  // Student();
  // Student.info(int id, String name, String address){
  //   this.id = id;
  //   this.name = name;
  //   this.address = address;
  // }
  
  Student({this.id, this.name, this.address});
  
  @override
  String toString() {
    // TODO: implement toString
    return 'id :$id name:$name address: $address';
  }

}