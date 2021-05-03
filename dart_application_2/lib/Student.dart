class Student {
  String _name;
  int gender;
  String address;

  // Student();
  // Student.named(String name, int gender, String address){
  //   this._name = name;
  //   this.address = address;
  //   this.gender = gender;
  // }

  Student(String name, {this.gender=1, this.address='Huflit'}){
      this._name = name;
  }  

  get studentName {
    return this._name;
  }

  set studentName(String name){
    this._name = name;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Student: $_name $gender $address ' ;
  }

}