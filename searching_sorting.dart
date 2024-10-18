void main() {
  Sort sort = Sort();
  print(sort.unsorted);
  print("Selection sort: ${sort.selection()}");
}

class Sort {
  List<int> unsorted = [3, 5, 7, 1, 2, 9, 0];
  List<int> sorted = [];

  List<int> selection() {
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

      // swapping the smllest element at i
      if (smallestInd != i) {
        int temp = unsorted[i];
        unsorted[i] = unsorted[smallestInd];
        unsorted[smallestInd] = temp;
      }
    }
    sorted = unsorted;
    return sorted;
  }

  void insertion() {}

  void bubble() {}

  String toString() => "Unsorted List: $unsorted";
}
