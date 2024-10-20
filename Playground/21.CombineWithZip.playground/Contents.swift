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
print("--------------Deep Dive into the Zip Operator in Swift--------------")
let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<String, Never>()
let combinedPublisher = publisher1.zip(publisher2)
    .sink { value in
        print("Received pair: \(value)")
    }
publisher1.send(1)
publisher2.send("Hello")
publisher1.send(2)
publisher2.send("World")
combinedPublisher.cancel()
