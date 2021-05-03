class Product {
  //Khai báo các thuộc tính 
  String manufacture = ''; 
  String name = ''; 
  var price; 
  int quantity; 

  //Khai báo hàm khởi tạo 
  Product(var price, {int quantity = 0}) {
    this.price = price; 
    this.quantity = quantity; 
  }

  Product.iphone(var price, {int quantity=0}) { 
    this.price = price; 
    this.quantity = quantity; 
    manufacture = 'Apple'; 
    } // ..
  //Product({this.price, this.quantity, this.manufacture});
  

    //getter 
    String get manufactureProduct { 
      return manufacture; 
    } 
//Hàm setter 
      set nameProduct(manufacture) { 
        this.manufacture = manufacture; 
    }



  //Khai báo các phương thức
  int calulateTotal() { 
    return price * quantity; 
  } 
  void showTotal() { 
    var tong = calulateTotal(); 
    print('Tổng số tiền là: $tong'); 
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Manufacture: $manufacture \nPrice: $price \nQuantity: $quantity';
  }

}