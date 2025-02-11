```dart
List<int> list = [];
for (int i = 0; i < 10; i++) {
  list.add(i);
}
int sum = 0;
for (int i = 0; i < list.length; i++) {
  sum += list[i];
}
print(sum); //Prints 45
```