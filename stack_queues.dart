void main() {
  Queue queue(["1", "2", "3", "4"]);
  queue.enqueue(6);
}

class Queue {
  List<String> items = [];
  int head = 0;
  int tail = -1;
  int queueSize = 15;

  Queue(this.items);

  void enqueue(String newData) {
    print("Enqueue the data $newData");
    if (tail == queueSize - 1) {
      print("Can't insert into a full queue");
      return;
    }
    tail += 1;
    items.insert(tail, newData);
    print("Now the tail index is $tail");
  }
}
