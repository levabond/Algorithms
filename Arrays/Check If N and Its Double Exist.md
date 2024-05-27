## Check If N and Its Double Exist

🟢 Сложность: Легкая

Дан массив целых чисел, проверьте, существуют ли два индекса i и j с условием:

- `i != j`
- `0 <= i, j < arr.length`
- `arr[i] == 2 * arr[j]`

Пример 1

```
Input: arr = [10,2,5,3]
Output: true
Explanation: For i = 0 and j = 2, arr[i] == 10 == 2 * 5 == 2 * arr[j]
```

Пример 2

```
Input: arr = [3,1,7,11]
Output: false
Explanation: There is no i and j that satisfy the conditions.
```

Ссылка на литкод:

[Check If N and Its Double Exist - LeetCode](https://leetcode.com/problems/check-if-n-and-its-double-exist/description/)

## Решение

- Решение будет через словарь. Ключ будет значения массива, а значение — его индекс
- В первом цикле мы наполняем словарь значениями
- Во втором прописываем условие в ключе: если текущий индекс не равен

```swift
func checkIfExist(_ arr: [Int]) -> Bool {
    var prevIndexes = [Int: Int]()

    for (i, val) in arr.enumerated() {
        prevIndexes[val] = i
    }

    for (i, val) in arr.enumerated() {
        if let index = prevIndexes[val * 2], index != i {
            return true
        }
    }

    return false
}

TC: O(n)
SC: O(n)
```
