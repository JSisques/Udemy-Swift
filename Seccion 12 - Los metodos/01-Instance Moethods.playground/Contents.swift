import UIKit

class Counter{
    var counter = 0
    
    func increment(){
        self.counter += 1
    }
    
    func incrementBy(by amount: Int){
        counter += amount
    }
    
    func reset(){
        counter = 0
    }
}

var myCounter = Counter()
print(myCounter.counter)
myCounter.increment()
print(myCounter.counter)
myCounter.incrementBy(by: 10)
print(myCounter.counter)
myCounter.reset()
print(myCounter.counter)
