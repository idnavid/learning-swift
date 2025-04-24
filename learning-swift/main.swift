//
//  main.swift
//  learning-swift
//
//  Created by Navid Shokouhi on 25/4/2025.
//

print("Loop through a list of names")
forLoopNames()

print("Loop through a range of numbers")
forLoopRange()

print("Loop through a range of numbers with custom size")
forLoopRange(till: 3)

print("Loop through a range of numbers with custom size and stride")
forLoopStrideTo(to: 3)

print("Loop through a closed range of numbers with custom size and stride")
forLoopStrideThrough(through: 3)

print("Iterate over a dictionary")
iterDictionary()

print("Iterate over a custom collection")
let liftOff = customIterator(count: 10)
for i in liftOff {
    print(i)
}
