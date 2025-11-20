[배열]
- 배열 선언
 ex) int[] intArray; // int intArray[];
- 변수 = new 타입[ ] { } ;
 ex) String[] names = null;
      names = new String[] {"신용권", "홍길동", "김자바"};
- 타입[ ] 변수 = new 타입 [길이] ;
 ex) int[ ] scores = new int [3] ; // 길이(3) 지정해줘야 사용 할 수 있다.

- 배열 길이 : 변수명.length

- 배열 오름차순 정렬 (import java.util.Arrays; ) 
 ex) int[] numbers; 
  // Arrays.sort(numbers);


[Scanner 클래스]
1. 정수 입력 nextInt()
2. 실수 입력 nextDouble() , nextFloat()
3. 문자열 입력 next()  // 공백 전까지 한 단어 입력 
             nextLine() // 한 줄 전체 입력
4. 문자 입력
   char c = sc.next().chatAt(0);

5. nextInt 쓰고 엔터 쳤을때 다음 readLine() 또는 nextLine() 동작 안함
  -> 버퍼에 Enter 남아 있기 때문에 enter가 들어간다.
  int R = sc.nextInt();
  String str = sc.next();  // nextLine() 쓰지 말기

[문자 char]
# 문자열을 한 문자씩 쪼개서 배열로 저장
 ex) String str1 = "hello";
     char[] chars = str1.toCharArray();

# 아스키 코드 값 구하기
 자료형 char를 int 형으로 바꾸어주면 아스키 코드값이 나온다.
char hey = 'A';
int num = hey;
System.out.println(num); // 65


[문자열]
- 문자열 길이 : 변수명.length()
- charAt은 문자열(String)에서 특정 위치 문자 하나 
 ex) String str = "hello";    char c = str.charAt(1); // 문자열로 합치고 싶으면  “ ” + 붙인다

- 문자열을 정수로 변환 및 기본 타입으로 변환
 ex) "5678" -> int number = Integer.parseInt("5678");
 ex) String str = "10" // byte value = Byte.parseByte(str);

- 반대로 기본 타입(byte, short, char, int, long, float, double, boolean)을 문자열로 반환
 ex) String str = String.valueOf(기본타입값);

- 문자열 (내부 문자열) 비교 
 ex) boolean result = str1.equals(str2);
 
- 특정 문자열 포함되는지 확인
 ex) str1.contains(str2);  // str1에 str2가 있는지 

# 문자열을 한 글자씩 쪼개서 배열로 저장
// split("")은 빈 문자열 기준으로 자른다는 의미
// 특정 문자 기준으로 자르고 싶다면 " " 또는 "," 등으로 지정
ex) String str1 = "hello";
    String[] arr = str1.split("");

# StringTokenizer 문자열을 특정 구분자로 잘라서 토큰 단위로 읽는 방법
StringTokenizer는 문자열을 특정 구분자(delimiter) 로 잘라서 토큰(token) 단위로 읽음.

BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
StringTokenizer st = new StringTokenizer(br.readLine()); // 한 줄 읽고 바로 토큰화

String str = st.nextToken();

# 반복문 형태
while (st.hasMoreTokens()) {
    String token = st.nextToken();   // 다음 토큰 가져오기
    System.out.println(token);       // 출력
}

# 기본형태
StringTokenizer st = new StringTokenizer("A B C");
# 구분자 지정
StringTokenizer st = new StringTokenizer("A,B,C", ",");
# 토큰 총 개수
st.countTokens()

# 정규식을 사용해서 문자열을 치환하는 메서드 (replaceAll) String str1;  //  
- String result = original.replaceAll("바꿀패턴", "새문자열");
 ex) str1.replaceAll(“[0-9]”,“*”) <- 숫자, *로 바꾸기
 ex) str1.replaceAll(“a|e|i|o|u”,“”); // ( str1.replaceAll("[aeiou]", "");  ← 모음, 없애기

# 문자열의 특정 인덱스 문자 하나를 가져오는 함수 charAt()
 - char c = 문자열.charAt(인덱스);
String str = "Hello";

char c1 = str.charAt(0); // 'H'
char c2 = str.charAt(4); // 'o'
 
[함수]
- double result = Math.pow(3,2) // 9 제곱 구하기 (더블형이다)
- double result = Math.sqrt(4) // 4 의 제곱근 == 2 (더블형이다)




[열거]
- public enum Week {MONDAY, TUESDAY, WEDNESDAY , SUNDAY}
 ex) Week today = Week.TUESDAY;

[기본타입 vs 참조타입]
- 기본타입 : 정수타입(byte, char, short, int, long), 실수 타입(float, double), 논리타입(boolean)
- 참조타입 : 배열, 열거, 클래스, 인터페이스

[연산자]
- 연산자 연산 순서
1) 단항, 이항, 삼항 순서 (단,이,삼)
2) 산술, 비교, 논리, 대입 연산자 순서 (산,비,논,대)
3) 단항, 부호, 대입 제외한 모든 연산 방향 (->)














[Class(클래스)]
- getter : 감춰둔 필드의 값을 읽는 메서드
- setter : 감춰둔 필드의 값을 바꾸는 메서드 
ex)public class Person {
    // 1. 필드 (private: 외부에서 직접 접근 불가)
    private String name;

    // 2. getter (값을 가져옴)
    public String getName() {
        return name;
    }
    // 3. setter (값을 설정함)
    public void setName(String name) {
        this.name = name;   // this.name → 멤버 변수, name → 매개변수
    }
}
public class Main {
    public static void main(String[] args) {
        Person p = new Person();

        // setter 사용 → 값 저장
        p.setName("홍길동");

        // getter 사용 → 값 읽기
        System.out.println("이름: " + p.getName());
    }
}

 - final 클래스는 부모 클래스가 될 수 없어 자식 클래스를 만들 수 없다.
 
[상속]
1. 상속받아서 자식 자식 클래스 객체 생성하면 컴파일러에 의해 기본 부모 생성자도 호출됨. super();
2. 메소드 재정의 : 자식 클래스에서 부모 클래스의 메소드를 다시 정의하는 것.
 - 부모 메소드를 호출하는 방법도 있다. super.부모메소드();
3. final 클래스는 상속 불가. ex) String 클래스 // public final class String {...}
 - final 메소드는 재정의 불가. 최종적인 메소드가 된다.
4. 다형성을 구현 : 메소드 재정의 + 타입 변환 // 다양한 객체를 만들기 위해
 - 자동 타입 변환 개념
 1) 자식은 부모의 특징과 기능을 상속 받기 때문에 부모와 동일하게 취급
 2) 프로그램 실행 도중에 자동적으로 타입 변환이 일어나는 것을 말함. 
   // 부모타입 변수 = 자식타입;
   ex) Cat catMini = new Cat();  // Animal animal = catMini;
 3) 매개 변수 다형성 
   ex) driver.drive(bus); // <- 자동 형변환 Vehicle vehicle = bus; 
   -> 매개변수의 타입이 클래스일 경우, 해당 클래스 객체와 자식 객체까지 매개값으로 사용 가능.
 - 강제 타입 변환 : 자식->부모로 자동타입변환 후 다시 자식 타입으로 변환할 때 사용 가능.
// 자식타입 변수 = (자식타입) 부모타입;  
 ex) Parent parent = new Child() ;
    Child child = (Child) parent ;
5. 객체 타입 확인 : 어떤 객체가 어떤 클래스의 인스턴스인지 확인 
  boolean result = 좌항(객체) instanceof 우항(타입) // 좌항객체가 우항의 인스턴스이면 true 
 ex) public void method(Parent parent) {
       if(parent instanceof Child) {
         Child child = (Child) parent ;
　　　  }
     }
6. 추상클래스 – 실체 클래스가 공통적으로 가져야 할 필드와 메소드들을 정의, 멤버(필드, 메소드) 통일 목적
 1) 추상 메소드는 abstract키워드와 함께 메소드의 선언부만 있고 { } 없음.
 2) 추상 클래스를 상속하는 하위 클래스는 추상메소드를 반드시 재정의해야됨.

[인터페이스]
1. 인터페이스 : 객체 사용 방법 정의한 타입 // 개발 코드와 객체가 서로 통신하는 접점역할
 1) 상수필드 선언 가능. static final이 자동으로 붙는다.(컴파일 과정에서)
 2) 추상 메소드 선언. public abstract생략해도 (컴파일 과정에서) 자동으로 붙는다.
 3) 인터페이스는 상수 필드와 추상메소드만을 구성 멤버로 가진다.
2. 인터페이스 구현
 1) 개발코드가 인터페이스 메소드를 호출하면 인터페이스는 객체의 메소드를 호출함. 객체는 인터페이스에서 정의된 추상 메소드와 동일한 메소드 이름, 매개 타입, 리턴 타입을 가진 실체 메소드를 가지고 있어야 함. 이러한 객체를 인터페이스의 구현객체라고 하고, 구현객체를 생성하는 클래스를 구현클래스라 함.
 2) 인터페이스 구현 객체 사용
 - 인터페이스 변수;  // 인터페이스 변수 = 구현객체;     
    변수 = 구현객체; 
 ex) RemoteControl rc;        //  public class Television implements RemotControl　{｝
     rc = new Television ();
 3) 인터페이스의 다형성  
 ex) I car = new Bus();  // 수정 가능하다. 또 인터페이스 매개변수의 다형성도 가능하다.
    I car = new SportsCar(); 



























.git 은 repository
세가지 상태
modified(수정된), staged(스테이징된), committed(커밋된) 상태
- 커밋에 포함될 변경사항만 선택적으로 스테이징함. 스테이징 영역에만 해당 변경사항을 추가함.
세가지 주요 부분 – 작업트리(working tree), 스테이징 영역(staging area), ‘.git’ 디렉토리

[git status] - 상태확인하기 

[git 초기 설정] git config --global user.name “이름”
	      git config --global user.email “github 가입한 이메일”

[git 설정 확인] git config --list
 - 설정 직접 변경하는 법 
  ex) default 브랜치 이름이 master로 되어 있음 
  ex) rm –rf .git  //  - 지우기 rm –rf.git
      git config –global init.defaultbranch main
       git init 
[git 이 디렉토리로 관리할 폴더를 정해줌] git init // .git이란 숨긴 폴더 생김
 - git 폴더안 .git폴더에 대해 변경사항이 생길때마다 버전으로 기록하는 영역을 만들어줌
 - 해당 경로로 접근하면 (브랜치명)이 뜸. ex) (master)
[branch] // 브랜치이름 변경
- git branch –M main

[git rm --cached first.txt]  // staging area에서 제외한다. (Untracked로 됨)     - 인덱스영역에서 파일 배제 
[git add .] - staging area로 올리기
 ex) git add first.txt
 - untrack으로 돌리기
 ex) rm ‘first.txt’

[git commit –m “버전에 남길 메시지”] 
 ex) git commit –m “first commit”

[저장 위치 바꾸기 ex) 바탕화면]
바탕화면에서 우클릭 → Git Bash here 또는 PowerShell 열기
아래 명령어 실행:
git clone https://github.com/jeonghuny/mariadb_syntax.git



[git log --graph] 명령어로 버전들 확인하기]
 
Git 커밋
- 커밋은 Git 저장소에 디렉토리에 있는 모든 파일에 대한 스냅샷을 기록하는 것.
- 커밋할 때마다 디렉토리 전체를 복사하진 않습니다. 
- 각 커밋은 저장소의 이전 버전과 다음 버전의 변경내역(delta)을 저장함.

Snapshot
- 일반적으로 화면, 사진, 문서 등의 특정 순간을 캡쳐하여 기록하는 것
- 과거의 한 때 존재하고 유지시킨 컴퓨터 파일과 디렉터리의 모임


[도움말]
- git help <동사>   // git help config
- git <동사> --help   // git config --help
- man git-<동사>  // window는 없음


[ls]
 -a (숨김파일까지)
[rm]
 -r (안에 폴더까지 지움)
 -rf (안에 폴더 및 강제로 지움)
[mkdir] : 폴더 만들기
[pwd] : 경로 보여주기







