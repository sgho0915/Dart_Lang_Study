abstract class Coffee {
  // Coffee 클래스를 추상클래스로 하여 커피 메뉴의 확장성을 높힘
  int price = 0; // 가격 변수 0으로 초기화
  int shot = 0; // 샷 추가 갯수 0으로 초기화

  Coffee(this.shot) {
    // 샷 추가 횟수에 대한 가격 변동 Coffee 클래스 생성자
    price = shot * 1000;
  }

  void describe() {
    // 해당 메뉴의 가격을 출력하는 함수
    print("Price is $price.");
  }

  void description(); // 해당 메뉴에 대한 설명을 출력하는 함수
}

class Americano extends Coffee {
  Americano(int shot)
      : super(shot); // Coffee 클래스의 shot 변수를 상속하여 shot이라는 int형 변수를 정의

  @override
  void description() {
    // description 함수를 오버라이딩하여 아메리카노에 대한 메뉴 설명 재정의
    print("Americano는 에스프레소에 물을 타서 희석시킨 커피입니다.");
  }
}

class Latte extends Coffee {
  int milk = 0;

  Latte(int shot, int milk) : super(shot) {
    super.price += milk * 500; // 상속한 클래스의 price 변수에 우유 한 번 추가 시 500원씩 더해줌
  }

  @override
  void description() {
    // description 함수를 오버라이딩하여 라떼에 대한 메뉴 설명 재정의
    print("Latte는 오스트리아식 커피우유인 카푸치노를 미국식으로 변형한 커피입니다.");
  }
}

void main() {
  var americano = Americano(2); // 클래스 생성자 변수 선언
  americano.describe();
  americano.description();

  var latte = Latte(2, 4); // 클래스 생성자 변수 선언
  latte.describe();
  latte.description();
}

// 결과
// Price is 2000.
// Americano는 에스프레소에 물을 타서 희석시킨 커피입니다.
// Price is 4000.
// Latte는 오스트리아식 커피우유인 카푸치노를 미국식으로 변형한 커피입니다.