import Combine

let sequence1 = [1, 2, 3, 5, 100, 2, 1000, -10]
for (index, item) in zip(sequence1.indices, sequence1) {
    print("item by index: \(index) : \(item)")
}
print("----------------------------")
let sequence2 = [1, 2, 3]
let name = ["Nguyễn", "Ngọc", "Lễ"]
let zipResult = zip(sequence2, name)
for (index, item) in zipResult {
    print("index and name: \(index) : \(item)")
}
