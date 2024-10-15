void main() {
  Queue queue = Queue();
  print(queue.length());
  queue.enqueue(6);
  print(queue.items);
  print(queue.length());
}

class Queue {
  List<dynamic> items = [];
  int head = 0;
  int tail = -1;
  int maxQueueSize = 15;

  Queue();

  void enqueue(dynamic newData) {
    print("Enqueue the data $newData");
    if (tail == maxQueueSize - 1) {
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

  void peek() {
    if (tail == -1) {
      print("Can't peek from an empty queue!!!!!");
      return;
    }
    print("Peek head: $head");
  }

  int length() => items.length;
}

class Stack {
  List<dynamic> items = [];
  int top = -1;
  int maxStackSize = 15;

  void push(dynamic newData) {
    if (top == maxStackSize - 1) {
      print("Item cannot be added to a full stack");
    }

    top += 1;
    items.insert(top, newData);
    print("Top index: $top");
  }
}
