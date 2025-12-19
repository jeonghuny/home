자바에서
public static void main(String[] args)

main은 프로그램 시작 지점이고,
JVM이 객체를 만들지 않고 바로 호출한다.
즉, 객체(new Main())를 만들기 전
클래스 레벨에서 바로 실행되는 함수
그래서 static 메서드 안에서 사용하는 변수나 메서드도
객체에 속하지 않고 클래스에 속한(static) 변수여야 한다.

이 변수들이 static인 이유는:
dfs()도 static이어서
main()도 static이어서
같은 클래스 레벨에서 공유해야 하기 때문이다.
즉, 객체 생성 없이 바로 접근할 수 있도록 하기 위해서다.

[향상된 for문]
for (자료형 변수명 : 배열_또는_컬렉션) {
    // 반복할 코드
}
자료형 변수명 → 반복하면서 꺼낸 값이 들어갈 변수
배열_또는_컬렉션 → 반복할 대상 (배열, ArrayList 등) 
반복문 안에서는 꺼낸 값(변수명)으로 작업 가능

[우선순위 큐]
# 우선순위 큐를 구현하는 방식 중 하나가 힙이다. (다른 방식으로도 구현할 수 있지만 힙이 가장 효율적)
- 배열 기반의 최소 힙(min-heap)으로 구현되어 있다.

PriorityQueue<Integer> pq = new PriorityQueue<>(); 최소 힙
pq = new PriorityQueue<>(Collections.reverseOrder()); 큰 값 우선
- 삽입	          pq.offer(x)	 log N
- 최소값 제거      pq.poll()	  log N
- 최소값 확인	   pq.peek()	   O(1)
- 비었는지 확인	   pq.isEmpty()	   O(1)

# 트리 구조
- 완전 이진 트리(Complete Binary Tree)
- 왼쪽부터 가득 채우는 형태
- 높이가 최소가 되는 구조

# 정렬 규칙
- 각 노드는 부모보다 크거나 같아야 한다 (Min-Heap)
- 하지만 형제끼리는 순서가 상관없다
- 왼쪽 자식이 오른쪽 자식보다 클 수도 있다
- 전체적으로 정렬된 구조가 아니다

# 힙(Heap)
 : 완전 이진 트리(complete binary tree)를 기반
✔ 최소 힙(min-heap) - 부모 ≤ 자식, 가장 작은 값이 루트(root)에 존재
✔ 최대 힙(max-heap) - 부모 ≥ 자식, 가장 큰 값이 루트에 존재

[Stack]
Stack<Character> stack = new Stack<>();
stack.push(c);
stack.pop();

[ArrayQueue]
Queue<Integer> queue = new ArrayDeque<>();  // <현대는 이걸 많이 씀
Queue<Integer> q = new LinkedList<>();
두 줄의 가장 중요한 핵심은 "인터페이스는 Queue로 통일하고, 실제 구현체만 다르게 선택한 것"
앞의 Queue<Integer> q → 인터페이스(약속, 규칙)
뒤에 오는 new ArrayDeque() 또는 new LinkedList()는 실제 구현체(진짜 객체)
앞: 어떤 기능을 사용할지 (큐 기능만 쓰겠다)
뒤: 내부에 어떤 자료구조로 구현할지 선택

메소드
 - add() : 큐 맨 뒤에 추가 // 공간 부족하면 예외
 - offer() : 큐 맨 뒤에 추가 // 공간 부족하면 false 반환
 - remove() : 큐 맨 앞에서 제거 + 반환 // 비어있으면 예외
 - poll() : 맨 앞 요소 꺼내기 + 제거 // 비어있으면 null 반환
 - peek() : 큐 맨 앞에서 확인 (제거 X) // 비어있으면 null 반환
 - size() : 큐에 들어있는 요소 개수 반환
 - poll() : 맨 앞 요소 꺼내기 + 제거 // 비어있으면 null 반환
 - isEmpty() : 비어있는지 확인 // true

q.offer(10);
q.offer(20);
int x = q.poll();  // 10 나옴
int y = q.peek();  // 20
q.size(); // 1

# Deque 큐와 스택 둘 다 가능
Deque<Integer> queue = new ArrayDeque<>();
[큐]의 양쪽 끝에서 삽입과 삭제가 모두 가능한 자료구조
메소드
 - addFirst() : 앞에 추가
 - addLast() : 뒤에 추가
 - removeFirst() : 앞에서 제거 + 반환
 - removeLast() : 뒤에서 제거 + 반환
 - peekFirst() : 앞에서 확인 (제거 X)
 - peekLast() : 뒤에서 확인 (제거 X)
 - isEmpty() : 비어있는지 확인 // true

Deque<Integer> stack = new ArrayDeque<>();
[스택]의 양쪽 끝에서 삽입과 삭제가 모두 가능한 자료구조
메소드
 - push() : 스택 맨 위에 추가
 - pop() : 스택 맨 위에서 제거 + 반환
 - peek() : 스택 맨 위에서 확인 (제거 X)
 - isEmpty() : 비어있는지 확인 // true

[Set] : (집합) 중복 허용 X, 순서가 없다. 정렬 불가
 Set<String> set = new HashSet<>();
# 메소드
    set.add("apple");   // 추가
    set.remove("apple"); // 제거
    boolean exists = set.contains("apple"); // 포함여부 확인
    - set.contains(3) : set안에 특정 값이 들어가 있는지 검사 // false 


[List] : (리스트) 중복 허용 o, 순서가 있다. 정렬 가능하다
 List<String> list = new ArrayList<>(set)

# Collection.sort() 
Collections.sort(list, (a, b) -> {   // (a,b) ->  : 두 값(a, b)을 비교하는 규칙을 담은 함수
    if (a.length() != b.length())
        return a.length() - b.length();
    return a.compareTo(b);
});

# 풀어서 쓰면
new Comparator<String>() {
    @Override
    public int compare(String a, String b) {
        if (a.length() != b.length())
            return a.length() - b.length();
        return a.compareTo(b);
    }
}

---------------------------------------------
# Collections.sort(list, comparator)는 뭐냐?
Collections → 유틸리티 클래스(정렬, 검색 같은 기능 제공)
sort() → 이 안에 있는 정렬 함수
list → 정렬할 대상
comparator → "어떤 기준으로 정렬할 것인지" 알려주는 함수

# Arrays.sort(배열, 비교방법)
- 정렬 기준을 직접 만드는 문법
Arrays.sort(idx, (a, b) -> {
    if (ages[a] != ages[b]) return ages[a] - ages[b];
    return a - b;
});

# (a,b) -> { ... }
- 람다식(lambda)
"두 값(a,b)을 비교해서 결과를 숫자로 반환하는 함수"
"a와 b를 이렇게 비교해서 정렬해라" 라는 문법.
람다식(lambda)이라서 이렇게 생긴 거야.
정렬할 때 두 요소 a, b를 어떻게 비교할지 알려주는 함수
즉, 자바는 이렇게 묻는 거야:
“idx 배열 안에서 어떤 두 숫자 a와 b가 있으면
누가 먼저 오게 할까? 비교 기준을 알려줘!”
우리는 이렇게 대답하는 거고:
a의 나이가 더 작으면 → a 먼저
b의 나이가 더 작으면 → b 먼저
나이가 같으면 → 입력 순서 비교 (a < b)

# String.compareTo()

[Map]
HashMap<Integer, Integer> map = new HashMap<>();
# Map 메소드        
- put(K key, V value) // 값 넣기 (키가 이미 있으면 덮어씀)
 ex) map.put("apple", 3);
- get(Object key) // 키로 값 가져오기 (없으면 null)
 ex) map.get("apple"); // 3
- containsKey(Object key) // 키 존재 여부 확인 (true/false)
 ex) map.containsKey("apple"); // true
- remove(Object key) // 키로 값 제거
 ex) map.remove("apple"); // apple 키 제거
- size() // 맵에 들어있는 키-값 쌍 개수 반환    
 ex) map.size(); // 0

map.getOrDefault(key, defaultValue);
key → 찾고 싶은 키
defaultValue → key가 없을 때 대신 반환할 값
key가 있으면 그 값 반환, 없으면 defaultValue 반환

# 값 넣기
map.put(num, map.getOrDefault(num, 0) + 1);
- num이라는 숫자가 이미 있으면 그 값 +1
- 없으면 기본값 0에서 +1
# 값 확인
int count = map.getOrDefault(num, 0);
- 해당 숫자 있으면 그 개수
- 없으면 0

# 전체 출력
for(Integer key : map.keySet()){
    System.out.println(key + " : " + map.get(key));
}


[배열]
- 배열 선언
 ex) int[] intArray; // int intArray[];
- 변수 = new 타입[ ] { } ;
 ex) String[] names = null;
      names = new String[] {"신용권", "홍길동", "김자바"};
- 타입[ ] 변수 = new 타입 [길이] ;
 ex) int[ ] scores = new int [3] ; // 길이(3) 지정해줘야 사용 할 수 있다.

- 배열 길이 : 변수명.length
- 배열 값 비교
boolean result = Arrays.equals(arr1, arr2); // import java.util.Arrays; 
 ex) int[] arr1 = {1,2,3};
     int[] arr2 = {1,2,3};
     boolean result = Arrays.equals(arr1, arr2); // true

- 배열 오름차순 정렬 (import java.util.Arrays; ) 
 ex) int[] numbers; 
  // Arrays.sort(numbers);


# Scanner 클래스
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

# 문자열 안에 부분 문자열이 포함되는지 확인
 ex) String str1 = "hello";
     boolean result = str1.contains("he"); // true
# 문자열 안에 숫자가 포함되는지 확인
 ex) String str1 = "hello123";
     boolean hasDigit = str1.matches(".*\\d.*"); // true
.* → 아무 문자든 0개 이상
\\d → 숫자(0~9)
.*\\d.* → 문자열 어딘가에 숫자가 포함되어 있으면 true
 -> 정규식은 느리므로 자주 쓰지 말 것

# 문자열이 숫자로 시작되는지 확인
 String str = "5hello";
 Character.isDigit(str.charAt(0)) // q가 숫자로 시작하는지 확인 // true
# 문자열이 숫자로 끝나는지 확인 
 Character.isDigit(str.charAt(str.length() - 1)) // q가 숫자로 끝나는지 확인 // true

# 문자열에 특정 숫자가 포함되는지 확인
 int num = 5;
 String.valueOf(num).contains("5"); // num에 5가 포함되는지 확인 // true
# 특정 문자열 포함되는지 확인
 ex) str1.contains(str2);  // str1에 str2가 있는지 // true/false 반환
# 문자열이 특정 문자로 시작하는지 확인
 ex) String str1 = "hello";
     boolean result = str1.startsWith("he"); // true


# 문자열을 한 문자씩 쪼개서 배열로 저장
 ex) String str1 = "hello";
     char[] chars = str1.toCharArray();

# 아스키 코드 값 구하기
 자료형 char를 int 형으로 바꾸어주면 아스키 코드값이 나온다.
char hey = 'A';
int num = hey;
System.out.println(num); // 65


[문자열]
# 문자열 길이 : 변수명.length()
- charAt은 문자열(String)에서 특정 위치 문자 하나 
  ex) String str = "hello";    char c = str.charAt(1); // 문자열로 합치고 싶으면  “ ” + 붙인다
 int형과 char형은 산술연산 가능하다.
 ex) char c = 'A' + 2; // 'C' (char형끼리도 산술연산 가능) 
  Scanner sc = new Scanner(System.in);
  String str = sc.next(); // 문자열로 입력 받음
  int sum += str.charAt(0) - '0'; // '0' 빼줘야 int형으로 변환됨 
 
# 문자열의 특정 인덱스 문자 하나를 가져오는 함수 charAt()
 - char c = 문자열.charAt(인덱스);
String str = "Hello";
char c1 = str.charAt(0); // 'H'
char c2 = str.charAt(4); // 'o'


- 문자열을 정수로 변환 및 기본 타입으로 변환
 ex) "5678" -> int number = Integer.parseInt("5678");
 ex) String str = "10" // byte value = Byte.parseByte(str);

- 반대로 기본 타입(byte, short, char, int, long, float, double, boolean)을 문자열로 반환
 ex) String str = String.valueOf(기본타입값);

- 문자열 (내부 문자열) 비교 
 ex) boolean result = str1.equals(str2); 

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









# 알고리즘 공부

1. 입력과 출력 자유자재로 다루기 연습 (ex. Scanner, BufferedReader, BufferedWriter, StringBuilder 등)
2. 자료구조 (스택, 큐, 덱, 해시맵, 해시셋, 우선순위 큐 등) 공부
3. 시간복잡도
4. 정렬 알고리즘 (버블정렬, 선택정렬, 삽입정렬, 퀵정렬, 병합정렬 등)
5. 탐색 알고리즘 (선형탐색, 이진탐색 등)
6. 재귀함수
7. 그리디 알고리즘
8. 완전탐색 (백트래킹)
9. 동적 계획법
10. 그래프 이론 (DFS, BFS, 다익스트라, 플로이드-워셜 등)
