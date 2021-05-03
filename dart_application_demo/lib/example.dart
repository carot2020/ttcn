void banner() {
  print('========================================================');
}

int sumInt(int a, int b) {
  return a + b;
}

double tinhtong(var a, {double b:1, double c:2}) { 
	return a + b + c; 
}

double tinhtong2(var a, [double b=1, double c= 2]) { 
	return a + b + c; 
}
