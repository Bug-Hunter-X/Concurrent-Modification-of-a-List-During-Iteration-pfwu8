```dart
List<int> list = [];
for (int i = 0; i < 10; i++) {
  list.add(i);
}
int sum = 0;
// Solution 1: Use a for-in loop to avoid index-based iteration.
for (int num in list) {
  sum += num;
}
print(sum); //Prints 45

// Solution 2: Create a copy of the list before iterating.
List<int> listCopy = List.from(list);
for(int i = 0; i < listCopy.length; i++){
  sum += listCopy[i];
}
print(sum); //Prints 45

// Solution 3: Use immutability with a new list
// This prevents concurrent modification issues altogether.
List<int> immutableList = List.unmodifiable(list);
int sumImmutable = 0;
for (int num in immutableList) {
  sumImmutable += num;
}
print(sumImmutable); //Prints 45
```