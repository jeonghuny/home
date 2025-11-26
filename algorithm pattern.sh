# 소수 판별 함수
    public static boolean isPrime(int n){
        if(n < 2) return false;
        for(int i = 2; i*i <=n; i++){
            if(n % i == 0) return false;
        }
        return true;
    }

# split 없이 StringTokenizer로 int 배열 얻기
    BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    StringTokenizer st = new StringTokenizer(br.readLine());
    int[] arr = new int[size];
        for(int i = 0; i < size; i++){
                arr[i] = Integer.parseInt(st.nextToken());
            }
# st.nextToken() -> String으로 토큰 반환
   띄어쓰기뿐만 아니라 여러 종류의 구분자(delimiter)를 기준으로 끊어서 읽는다."
   하지만 기본값이 공백(space) 포함 여러 공백 문자(탭, 개행 등) 이다."
   
# readLine() -> 한 줄 전체 문자열 반환
StringTokenizer st = new StringTokenizer(br.readLine());
5 21 입력 후 엔터 치면
StringTokenizer st = new StringTokenizer("5 21");
 ex) st에 5 21 두 개의 토큰이 들어 있음
5 21 입력 후 엔터 치고 나서 → 여기서 st를 재사용하면 오류 발생
st에는 첫줄 "5 21" 토큰만 들어 있기 때문
두번째줄 "5 6 7 8 9"는 아직 BufferedReader br에 남아 있음
따라서 두 번째 줄을 readLine()으로 새로 읽고 StringTokenizer 객체 생성해야 배열 입력 가능
StringTokenizer st = new StringTokenizer(br.readLine());
int N = Integer.parseInt(st.nextToken());
int[] intArray = new int[N];
st = new StringTokenizer(br.readLine());
for(int i = 0; i < N; i++){
    intArray[i] = Integer.parseInt(st.nextToken());
}


# 정수의 자릿수 구하기
int a = 123;
int digits = String.valueOf(a).length();
System.out.println(digits); // 3


# 최대공약수 (GCD) 구하기
// 최대공약수 (GCD)
public static int gcd(int a, int b){
    while(b != 0){
        int r = a % b;
        a = b;
        b = r;
    }
    return a;
}
# 최소공배수 (LCM) 구하기
public static int lcm(int a, int b){
    return a * b / gcd(a, b);
}

# 이항계수 구하기
int result = 1;
for (int i = 1; i <= K; i++) {
    result *= (N - i + 1);
    result /= i;
} 

# 문자열이 숫자인지 확인 1
public static boolean isNumeric(String str) {
    for (int i = 0; i < str.length(); i++) {
        if (!Character.isDigit(str.charAt(i))) {
            return false;
        }
    }
    return true;
}

# 문자열이 숫자로만 구성된지 확인 2
public static boolean isNumeric(String str) {
    return str.matches("\\d+");
}

# 문자열이 숫자 포함되는지 확인 3
int num = 5;
String.valuOf(num).contains("5"); // num에 5가 포함되는지 확인 // true

