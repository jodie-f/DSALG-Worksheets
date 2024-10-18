void main() {
  List<int> unsorted = [3, 5, 7, 1, 2, 9, 0];

  print("Unsorted List: $unsorted");
  print("Selection sort: ${selection(unsorted)}");
  print("Insertion sort: ${insertion(unsorted)}");
  print("Bubble sort: ${bubble(unsorted)}");

  print("Search for 5, index: ${linear(unsorted, 5)}");
  print("Search for 11, index: ${linear(unsorted, 11)}");
}

// Q1
List<int> selection(List<int> unsorted) {
  int n = unsorted.length;
  // going through each element in the unsorted list
  for (int i = 0; i < n - 1; i++) {
    int smallestInd = i;
    // finding the smallest element in the unsorted list
    for (int j = i + 1; j < n; j++) {
      if (unsorted[j] < unsorted[smallestInd]) {
        smallestInd = j;
      }
    }

    // swapping the smallest element at i
    if (smallestInd != i) {
      int temp = unsorted[i];
      unsorted[i] = unsorted[smallestInd];
      unsorted[smallestInd] = temp;
    }
  }
  return unsorted;
}

// Q2
List<int> insertion(List<int> unsorted) {
  int n = unsorted.length;
  for (int i = 0; i < n; i++) {
    int key = unsorted[i];
    int j = i;

    while ((j > 0) && (unsorted[j - 1] > key)) {
      unsorted[j] = unsorted[j - 1];
      j--;
    }
    unsorted[j] = key;
  }

  return unsorted;
}

// Q3
List<int> bubble(List<int> unsorted) {
  bool sorted = false;
  int n = unsorted.length;
  while (!sorted) {
    sorted = true;
    for (int i = 0; i < n - 1; i++) {
      if (unsorted[i] > unsorted[i + 1]) {
        sorted = false;
        int temp = unsorted[i];
        unsorted[i] = unsorted[i + 1];
        unsorted[i + 1] = temp;
      }
    }
  }

  return unsorted;
}

// Q4
int linear(List<int> list, int target) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1; // index -1 => target not found
}

// Q5
int binaryIter(List<int> list, int target) {
  int n = list.length;
  int mid = n ~/ 2;

  if (target == list[mid]) {
    return mid;
  } else if (target < list[mid]) {}
}

// Q6
void binaryRecur(List<int> list, int target) {}
