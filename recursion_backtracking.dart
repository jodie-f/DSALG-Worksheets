void main() {}

// Q1
int recFibonacci(int n) {
  if (n == 1 || n == 2) {
    return 1;
  } else {
    return recFibonacci(n - 1) + recFibonacci(n + 2);
  }
}

int iterFibonacci(int n) {
  int f1 = 1;
  int f2 = 1;
  int out = -1;

  if (n == 1 || n == 2) {
    return 1;
  } else {
    for (int i = 3; i < n + 2; i++) {
      // start from place 3
      out = f1 + f2;
      f1 = f2;
      f2 = out;
    }
    return out;
  }
}

// Q2
int recGCD(int n, int m) {
  if (n == m) {
    return n;
  } else if (n < m) {
    return recGCD(m - n, n);
  } else {
    return recGCD(n - m, m);
  }
}

// Q3
void mergeSort(List<dynamic> list) {
  List<dynamic> merged = [];
  List<dynamic> leftList = [];
  List<dynamic> rightList = [];
  int middle = list.length ~/ 2;

  if (list.length <= 2) {
    return list;
  }
}
