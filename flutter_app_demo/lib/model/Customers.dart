

class Customer {
  int id;
  String fname;
  String lname;
  String gender;
  String email;
  String phone;
  String avatar;

  Customer({this.id, this.fname, this.lname,this.gender, this.email, this.phone, this.avatar});

  // Phuong  Xu ly json
  factory Customer.fromJson(dynamic json){
    return Customer(
      id: int.parse(json['id']),
      fname: json['first_name'] as String,
      lname: json['last_name'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String
    );
  }

  @override
  String toString() {
    return 'Customer{id: $id, fname: $fname, lname: $lname, gender: $gender, email: $email, phone: $phone, avatar: $avatar}';
  }
}