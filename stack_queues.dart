void main() {
  Queue queue = Queue();
  queue.enqueue(6);
  print(queue.items);
}

class Queue {
  List<dynamic> items = [];
  int head = 0;
  int tail = -1;
  int queueSize = 15;

  Queue();

  void enqueue(dynamic newData) {
    print("Enqueue the data $newData");
    if (tail == queueSize - 1) {
      print("Can't insert into a full queue");
      return;
    }
    tail += 1;
    items.insert(tail, newData);
    print("Now the tail index is $tail");
  }

  void dequeue() {
    if (tail == -1) {
      print("Can't delete from an empty queue!!!!!");
      return;
    }
    dynamic removed = items[head];
    print("Dequeue the data $removed");
    dynamic temp = head;
    while (temp < tail) {
      temp += 1;
      items[temp - 1] = items[temp];
    }
    items.remove(temp);
  }
}
