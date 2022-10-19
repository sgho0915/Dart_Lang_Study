class Coffee {
  int price = 0;
  int shot = 0;

  Coffee(int shot) {
    this.shot = shot;
    price = shot * 1000;
  }

  void describe() {
    print("Price is $price.");
  }
}

class Latte extends Coffee {
  int milk = 0;

  Latte(int shot, this.milk) : super(shot) {
    price = shot * 1000 + milk * 500;
  }
}

void main() {
  var coffee = Coffee(2);
  coffee.describe();

  coffee = Latte(2, 3);
  coffee.describe();
}
